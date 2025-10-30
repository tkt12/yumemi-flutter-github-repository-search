import 'package:dio/dio.dart';
import '../../models/github_repository.dart';
import 'api_exception.dart';

/// GitHub API通信クライアント
class GitHubApiClient {
  GitHubApiClient({
    Dio? dio,
    String? baseUrl,
  }) : _dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: baseUrl ?? 'https://api.github.com',
                connectTimeout: const Duration(seconds: 10),
                receiveTimeout: const Duration(seconds: 10),
                headers: {
                  'Accept': 'application/vnd.github.v3+json',
                },
              ),
            ) {
    _setupInterceptors();
  }

  final Dio _dio;

  /// インターセプターの設定
  void _setupInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // リクエストログ
          print('🌐 Request: ${options.method} ${options.path}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // レスポンスログ
          print(
              '✅ Response: ${response.statusCode} ${response.requestOptions.path}');
          return handler.next(response);
        },
        onError: (error, handler) {
          // エラーログ
          print('❌ Error: ${error.response?.statusCode} ${error.message}');
          return handler.next(error);
        },
      ),
    );
  }

  /// リポジトリを検索
  ///
  /// [query] 検索キーワード
  /// [page] ページ番号（デフォルト: 1）
  /// [perPage] 1ページあたりの件数（デフォルト: 30）
  Future<GitHubSearchResponse> searchRepositories({
    required String query,
    int page = 1,
    int perPage = 30,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/search/repositories',
        queryParameters: {
          'q': query,
          'page': page,
          'per_page': perPage,
          'sort': 'stars',
          'order': 'desc',
        },
      );

      if (response.data == null) {
        throw const ParseException('レスポンスデータが空です');
      }

      return GitHubSearchResponse.fromJson(response.data!);
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnknownException('予期しないエラーが発生しました: $e');
    }
  }

  /// DioExceptionをApiExceptionに変換
  ApiException _handleDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const TimeoutException();

      case DioExceptionType.connectionError:
        return const NetworkException();

      case DioExceptionType.badResponse:
        final statusCode = exception.response?.statusCode;
        switch (statusCode) {
          case 401:
            return const UnauthorizedException();
          case 403:
            // GitHub APIのレート制限チェック
            final remaining =
                exception.response?.headers.value('x-ratelimit-remaining');
            if (remaining == '0') {
              return const RateLimitException();
            }
            return const UnauthorizedException('アクセスが拒否されました');
          case 404:
            return const NotFoundException();
          case 422:
            return const ParseException('検索クエリが不正です');
          case 500:
          case 502:
          case 503:
            return const ServerException();
          default:
            return ServerException('サーバーエラーが発生しました (ステータスコード: $statusCode)');
        }

      case DioExceptionType.cancel:
        return const UnknownException('リクエストがキャンセルされました');

      case DioExceptionType.badCertificate:
        return const NetworkException('証明書エラーが発生しました');

      case DioExceptionType.unknown:
        return const NetworkException();
    }
  }

  /// クライアントのクローズ
  void close() {
    _dio.close();
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../services/api/github_api_client.dart';
import '../../../services/api/api_exception.dart';
import 'search_state.dart';

part 'search_provider.g.dart';

/// GitHubApiClientのProvider
///
/// アプリケーション全体で単一のHTTPクライアントを共有するため、
/// keepAlive: trueを設定してProviderを永続化しています。
@Riverpod(keepAlive: true)
GitHubApiClient gitHubApiClient(GitHubApiClientRef ref) {
  return GitHubApiClient();
}

/// 検索機能のProvider
@riverpod
class SearchNotifier extends _$SearchNotifier {
  @override
  SearchState build() {
    return const SearchState();
  }

  /// リポジトリを検索
  Future<void> search(String query) async {
    // 空文字の場合は検索しない
    if (query.trim().isEmpty) {
      state = const SearchState(
        error: ParseException('検索キーワードを入力してください'),
        hasSearched: false,
      );
      return;
    }

    // ローディング開始
    state = state.copyWith(
      isLoading: true,
      error: null,
      query: query,
    );

    try {
      final client = ref.read(gitHubApiClientProvider);
      final response = await client.searchRepositories(query: query);

      // 検索成功
      state = state.copyWith(
        repositories: response.items,
        totalCount: response.totalCount,
        isLoading: false,
        hasSearched: true,
        error: null,
      );
    } on ApiException catch (e) {
      // APIエラー
      state = state.copyWith(
        isLoading: false,
        error: e,
        hasSearched: true,
      );
    } catch (e) {
      // 予期しないエラー
      state = state.copyWith(
        isLoading: false,
        error: UnknownException('予期しないエラーが発生しました: $e'),
        hasSearched: true,
      );
    }
  }

  /// 検索結果をクリア
  void clear() {
    state = const SearchState();
  }
}

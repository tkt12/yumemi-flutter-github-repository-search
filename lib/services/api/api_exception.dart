/// API通信で発生する例外の基底クラス
abstract class ApiException implements Exception {
  const ApiException(this.message);

  final String message;

  @override
  String toString() => message;
}

/// ネットワークエラー
class NetworkException extends ApiException {
  const NetworkException([String message = 'ネットワークエラーが発生しました'])
      : super(message);
}

/// タイムアウトエラー
class TimeoutException extends ApiException {
  const TimeoutException([String message = 'タイムアウトしました']) : super(message);
}

/// レートリミットエラー
class RateLimitException extends ApiException {
  const RateLimitException([
    String message = 'APIのレート制限に達しました。しばらく待ってから再試行してください',
  ]) : super(message);
}

/// 認証エラー
class UnauthorizedException extends ApiException {
  const UnauthorizedException([String message = '認証に失敗しました']) : super(message);
}

/// 404エラー
class NotFoundException extends ApiException {
  const NotFoundException([String message = 'リソースが見つかりませんでした'])
      : super(message);
}

/// サーバーエラー
class ServerException extends ApiException {
  const ServerException([String message = 'サーバーエラーが発生しました']) : super(message);
}

/// パースエラー
class ParseException extends ApiException {
  const ParseException([String message = 'データの解析に失敗しました']) : super(message);
}

/// 不明なエラー
class UnknownException extends ApiException {
  const UnknownException([String message = '予期しないエラーが発生しました']) : super(message);
}

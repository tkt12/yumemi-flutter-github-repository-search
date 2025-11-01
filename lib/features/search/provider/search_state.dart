import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/github_repository.dart';
import '../../../services/api/api_exception.dart';

part 'search_state.freezed.dart';

/// 検索画面の状態
@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    /// 検索キーワード
    @Default('') String query,

    /// 検索結果
    @Default([]) List<GitHubRepository> repositories,

    /// ローディング中かどうか
    @Default(false) bool isLoading,

    /// エラー情報
    ApiException? error,

    /// 検索済みかどうか（初期表示との区別）
    @Default(false) bool hasSearched,

    /// 総件数
    @Default(0) int totalCount,
  }) = _SearchState;
}

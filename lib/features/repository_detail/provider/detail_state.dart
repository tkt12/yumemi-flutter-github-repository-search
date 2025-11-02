import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/github_repository.dart';

part 'detail_state.freezed.dart';

/// 詳細画面の状態
@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    /// 表示中のリポジトリ
    required GitHubRepository repository,

    /// ローディング中かどうか（将来のREADME取得用）
    @Default(false) bool isLoading,

    /// エラーメッセージ
    String? errorMessage,
  }) = _DetailState;
}

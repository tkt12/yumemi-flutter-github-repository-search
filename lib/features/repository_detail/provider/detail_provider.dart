import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../models/github_repository.dart';
import 'detail_state.dart';

part 'detail_provider.g.dart';

/// 詳細画面のProvider
///
/// リポジトリ情報を受け取って状態を管理
@riverpod
class DetailNotifier extends _$DetailNotifier {
  @override
  DetailState build(GitHubRepository repository) {
    return DetailState(repository: repository);
  }

  /// リポジトリ情報を更新
  void updateRepository(GitHubRepository repository) {
    state = state.copyWith(repository: repository);
  }

  // TODO: 将来的にREADME取得機能を追加する場合
  // Future<void> fetchReadme() async {
  //   state = state.copyWith(isLoading: true, errorMessage: null);
  //   try {
  //     // README取得処理
  //   } catch (e) {
  //     state = state.copyWith(
  //       isLoading: false,
  //       errorMessage: 'READMEの取得に失敗しました',
  //     );
  //   }
  // }
}

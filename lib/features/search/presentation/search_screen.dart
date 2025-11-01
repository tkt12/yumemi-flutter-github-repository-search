import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../provider/search_provider.dart';
import '../provider/search_state.dart';
import '../widget/search_bar_widget.dart';
import '../widget/repository_card.dart';
import '../../repository_detail/presentation/detail_screen.dart';

/// 検索画面
class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchNotifierProvider);
    final notifier = ref.read(searchNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Repository Search'),
      ),
      body: Column(
        children: [
          // 検索バー
          Padding(
            padding: const EdgeInsets.all(16),
            child: SearchBarWidget(
              onSearch: (query) => notifier.search(query),
            ),
          ),

          // コンテンツ部分
          Expanded(
            child: _buildContent(context, state, notifier),
          ),
        ],
      ),
    );
  }

  /// コンテンツ部分を構築
  Widget _buildContent(
    BuildContext context,
    SearchState state,
    SearchNotifier notifier,
  ) {
    // ローディング中
    if (state.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    // エラー表示
    if (state.error != null) {
      return _buildError(context, state.error!.message, notifier);
    }

    // 未検索状態
    if (!state.hasSearched) {
      return _buildEmptyState(
        context,
        icon: Icons.search,
        message: 'GitHubのリポジトリを検索してみましょう',
      );
    }

    // 検索結果が0件
    if (state.repositories.isEmpty) {
      return _buildEmptyState(
        context,
        icon: Icons.inbox_outlined,
        message: '検索結果が見つかりませんでした',
      );
    }

    // 検索結果を表示
    return Column(
      children: [
        // 検索結果件数
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Text(
                '${state.totalCount.toString()}件の検索結果',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
            ],
          ),
        ),

        // リポジトリリスト
        Expanded(
          child: ListView.builder(
            itemCount: state.repositories.length,
            itemBuilder: (context, index) {
              final repository = state.repositories[index];
              return RepositoryCard(
                repository: repository,
                onTap: () {
                  // 詳細画面への遷移
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(repository: repository),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// 空状態の表示
  Widget _buildEmptyState(
    BuildContext context, {
    required IconData icon,
    required String message,
  }) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 80,
            color: Colors.grey[400],
          ),
          const SizedBox(height: 16),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[600],
                ),
          ),
        ],
      ),
    );
  }

  /// エラー表示
  Widget _buildError(
    BuildContext context,
    String message,
    SearchNotifier notifier,
  ) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 80,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: () => notifier.clear(),
              icon: const Icon(Icons.refresh),
              label: const Text('再試行'),
            ),
          ],
        ),
      ),
    );
  }
}

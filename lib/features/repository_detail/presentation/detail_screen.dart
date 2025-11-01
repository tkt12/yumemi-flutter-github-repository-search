import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../models/github_repository.dart';
import '../../../theme/app_colors.dart';
import '../widget/stat_card.dart';
import '../widget/info_row.dart';

/// リポジトリ詳細画面
class DetailScreen extends ConsumerWidget {
  const DetailScreen({
    super.key,
    required this.repository,
  });

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(repository.name),
        actions: [
          // GitHubで開くボタン
          IconButton(
            icon: const Icon(Icons.open_in_new),
            onPressed: () => _launchUrl(repository.htmlUrl),
            tooltip: 'GitHubで開く',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ヘッダー部分
            _buildHeader(context, theme, repository),

            const SizedBox(height: 16),

            // 統計情報
            _buildStats(context, repository),

            const SizedBox(height: 16),

            // 詳細情報
            _buildDetails(context, theme, repository),

            const SizedBox(height: 16),

            // GitHubで開くボタン
            _buildOpenButton(context, repository),

            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  /// ヘッダー部分
  Widget _buildHeader(
    BuildContext context,
    ThemeData theme,
    GitHubRepository repo,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          // オーナーアイコン
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(repo.owner.avatarUrl),
          ),
          const SizedBox(height: 16),

          // オーナー名
          Text(
            repo.owner.login,
            style: theme.textTheme.titleMedium?.copyWith(
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),

          // リポジトリ名
          Text(
            repo.name,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),

          // 説明文
          if (repo.description != null)
            Text(
              repo.description!,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),

          const SizedBox(height: 16),

          // 言語バッジ
          if (repo.language != null)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: AppColors.lightPrimary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                repo.language!,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: AppColors.lightPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }

  /// 統計情報
  Widget _buildStats(BuildContext context, GitHubRepository repo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: StatCard(
              icon: Icons.star,
              label: 'Stars',
              value: _formatNumber(repo.stargazersCount),
              color: AppColors.githubStar,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: StatCard(
              icon: Icons.fork_right,
              label: 'Forks',
              value: _formatNumber(repo.forksCount),
              color: AppColors.githubFork,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: StatCard(
              icon: Icons.remove_red_eye,
              label: 'Watchers',
              value: _formatNumber(repo.watchersCount),
              color: AppColors.info,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: StatCard(
              icon: Icons.error_outline,
              label: 'Issues',
              value: _formatNumber(repo.openIssuesCount),
              color: AppColors.githubIssue,
            ),
          ),
        ],
      ),
    );
  }

  /// 詳細情報
  Widget _buildDetails(
    BuildContext context,
    ThemeData theme,
    GitHubRepository repo,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              '詳細情報',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Divider(height: 1),
          InfoRow(
            icon: Icons.person,
            label: 'オーナー',
            value: repo.owner.login,
            onTap: () => _launchUrl(repo.owner.htmlUrl),
          ),
          const Divider(height: 1, indent: 48),
          InfoRow(
            icon: Icons.link,
            label: 'フルネーム',
            value: repo.fullName,
          ),
          const Divider(height: 1, indent: 48),
          InfoRow(
            icon: Icons.calendar_today,
            label: '作成日',
            value: _formatDate(repo.createdAt),
          ),
          const Divider(height: 1, indent: 48),
          InfoRow(
            icon: Icons.update,
            label: '最終更新',
            value: _formatDate(repo.updatedAt),
          ),
        ],
      ),
    );
  }

  /// GitHubで開くボタン
  Widget _buildOpenButton(BuildContext context, GitHubRepository repo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          onPressed: () => _launchUrl(repo.htmlUrl),
          icon: const Icon(Icons.open_in_new),
          label: const Text('GitHubで開く'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ),
      ),
    );
  }

  /// 数値をフォーマット
  String _formatNumber(int number) {
    if (number >= 1000000) {
      return '${(number / 1000000).toStringAsFixed(1)}M';
    } else if (number >= 1000) {
      return '${(number / 1000).toStringAsFixed(1)}k';
    }
    return number.toString();
  }

  /// 日付をフォーマット
  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}/${date.month.toString().padLeft(2, '0')}/${date.day.toString().padLeft(2, '0')}';
    } catch (e) {
      return dateString;
    }
  }

  /// URLを開く
  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }
}

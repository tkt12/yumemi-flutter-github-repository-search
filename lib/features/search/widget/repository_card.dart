import 'package:flutter/material.dart';
import '../../../models/github_repository.dart';
import '../../../theme/app_colors.dart';

/// リポジトリ情報を表示するカードウィジェット
class RepositoryCard extends StatelessWidget {
  const RepositoryCard({
    super.key,
    required this.repository,
    this.onTap,
  });

  final GitHubRepository repository;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // オーナー情報とリポジトリ名
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(repository.owner.avatarUrl),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          repository.owner.login,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: isDark ? Colors.grey[400] : Colors.grey[600],
                          ),
                        ),
                        Text(
                          repository.name,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 説明文
              if (repository.description != null) ...[
                const SizedBox(height: 12),
                Text(
                  repository.description!,
                  style: theme.textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],

              // 統計情報
              const SizedBox(height: 12),
              Row(
                children: [
                  // Star数
                  _StatItem(
                    icon: Icons.star,
                    color: AppColors.githubStar,
                    value: _formatCount(repository.stargazersCount),
                  ),
                  const SizedBox(width: 16),

                  // Fork数
                  _StatItem(
                    icon: Icons.fork_right,
                    color: AppColors.githubFork,
                    value: _formatCount(repository.forksCount),
                  ),
                  const SizedBox(width: 16),

                  // Issue数
                  _StatItem(
                    icon: Icons.error_outline,
                    color: AppColors.githubIssue,
                    value: _formatCount(repository.openIssuesCount),
                  ),

                  const Spacer(),

                  // 言語
                  if (repository.language != null)
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lightPrimary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        repository.language!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.lightPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 数値をフォーマット（1000 → 1k）
  String _formatCount(int count) {
    if (count >= 1000) {
      return '${(count / 1000).toStringAsFixed(1)}k';
    }
    return count.toString();
  }
}

/// 統計アイテム
class _StatItem extends StatelessWidget {
  const _StatItem({
    required this.icon,
    required this.color,
    required this.value,
  });

  final IconData icon;
  final Color color;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}

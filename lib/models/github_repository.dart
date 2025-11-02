import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

/// GitHubリポジトリのデータモデル
@freezed
class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({
    required int id,
    required String name,
    @JsonKey(name: 'full_name') required String fullName,
    required GitHubOwner owner,
    @JsonKey(name: 'html_url') required String htmlUrl,
    required String? description,
    @JsonKey(name: 'stargazers_count') @Default(0) int stargazersCount,
    @JsonKey(name: 'watchers_count') @Default(0) int watchersCount,
    @JsonKey(name: 'forks_count') @Default(0) int forksCount,
    @JsonKey(name: 'open_issues_count') @Default(0) int openIssuesCount,
    required String? language,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$GitHubRepositoryFromJson(json);
}

/// GitHubリポジトリのオーナー情報
@freezed
class GitHubOwner with _$GitHubOwner {
  const factory GitHubOwner({
    required int id,
    required String login,
    @JsonKey(name: 'avatar_url') required String avatarUrl,
    @JsonKey(name: 'html_url') required String htmlUrl,
  }) = _GitHubOwner;

  factory GitHubOwner.fromJson(Map<String, dynamic> json) =>
      _$GitHubOwnerFromJson(json);
}

/// GitHub API検索レスポンス
@freezed
class GitHubSearchResponse with _$GitHubSearchResponse {
  const factory GitHubSearchResponse({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'incomplete_results') required bool incompleteResults,
    required List<GitHubRepository> items,
  }) = _GitHubSearchResponse;

  factory GitHubSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$GitHubSearchResponseFromJson(json);
}

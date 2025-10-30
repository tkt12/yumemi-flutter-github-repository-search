// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GitHubRepositoryImpl _$$GitHubRepositoryImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubRepositoryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: GitHubOwner.fromJson(json['owner'] as Map<String, dynamic>),
      htmlUrl: json['html_url'] as String,
      description: json['description'] as String?,
      stargazersCount: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      watchersCount: (json['watchers_count'] as num?)?.toInt() ?? 0,
      forksCount: (json['forks_count'] as num?)?.toInt() ?? 0,
      openIssuesCount: (json['open_issues_count'] as num?)?.toInt() ?? 0,
      language: json['language'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$GitHubRepositoryImplToJson(
        _$GitHubRepositoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
      'html_url': instance.htmlUrl,
      'description': instance.description,
      'stargazers_count': instance.stargazersCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.openIssuesCount,
      'language': instance.language,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$GitHubOwnerImpl _$$GitHubOwnerImplFromJson(Map<String, dynamic> json) =>
    _$GitHubOwnerImpl(
      id: (json['id'] as num).toInt(),
      login: json['login'] as String,
      avatarUrl: json['avatar_url'] as String,
      htmlUrl: json['html_url'] as String,
    );

Map<String, dynamic> _$$GitHubOwnerImplToJson(_$GitHubOwnerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };

_$GitHubSearchResponseImpl _$$GitHubSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GitHubSearchResponseImpl(
      totalCount: (json['total_count'] as num).toInt(),
      incompleteResults: json['incomplete_results'] as bool,
      items: (json['items'] as List<dynamic>)
          .map((e) => GitHubRepository.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GitHubSearchResponseImplToJson(
        _$GitHubSearchResponseImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };

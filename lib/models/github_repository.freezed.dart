// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
mixin _$GitHubRepository {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  GitHubOwner get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this GitHubRepository to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res, GitHubRepository>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      GitHubOwner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      String? description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      String? language,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  $GitHubOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res, $Val extends GitHubRepository>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? language = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GitHubOwner,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GitHubOwnerCopyWith<$Res> get owner {
    return $GitHubOwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GitHubRepositoryImplCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$$GitHubRepositoryImplCopyWith(_$GitHubRepositoryImpl value,
          $Res Function(_$GitHubRepositoryImpl) then) =
      __$$GitHubRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'full_name') String fullName,
      GitHubOwner owner,
      @JsonKey(name: 'html_url') String htmlUrl,
      String? description,
      @JsonKey(name: 'stargazers_count') int stargazersCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int openIssuesCount,
      String? language,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});

  @override
  $GitHubOwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$GitHubRepositoryImplCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res, _$GitHubRepositoryImpl>
    implements _$$GitHubRepositoryImplCopyWith<$Res> {
  __$$GitHubRepositoryImplCopyWithImpl(_$GitHubRepositoryImpl _value,
      $Res Function(_$GitHubRepositoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? fullName = null,
    Object? owner = null,
    Object? htmlUrl = null,
    Object? description = freezed,
    Object? stargazersCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? openIssuesCount = null,
    Object? language = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$GitHubRepositoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as GitHubOwner,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stargazersCount: null == stargazersCount
          ? _value.stargazersCount
          : stargazersCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      openIssuesCount: null == openIssuesCount
          ? _value.openIssuesCount
          : openIssuesCount // ignore: cast_nullable_to_non_nullable
              as int,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubRepositoryImpl implements _GitHubRepository {
  const _$GitHubRepositoryImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'full_name') required this.fullName,
      required this.owner,
      @JsonKey(name: 'html_url') required this.htmlUrl,
      required this.description,
      @JsonKey(name: 'stargazers_count') this.stargazersCount = 0,
      @JsonKey(name: 'watchers_count') this.watchersCount = 0,
      @JsonKey(name: 'forks_count') this.forksCount = 0,
      @JsonKey(name: 'open_issues_count') this.openIssuesCount = 0,
      required this.language,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$GitHubRepositoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubRepositoryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  final GitHubOwner owner;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @override
  final String? description;
  @override
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;
  @override
  final String? language;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'GitHubRepository(id: $id, name: $name, fullName: $fullName, owner: $owner, htmlUrl: $htmlUrl, description: $description, stargazersCount: $stargazersCount, watchersCount: $watchersCount, forksCount: $forksCount, openIssuesCount: $openIssuesCount, language: $language, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubRepositoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.stargazersCount, stargazersCount) ||
                other.stargazersCount == stargazersCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                other.openIssuesCount == openIssuesCount) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      fullName,
      owner,
      htmlUrl,
      description,
      stargazersCount,
      watchersCount,
      forksCount,
      openIssuesCount,
      language,
      createdAt,
      updatedAt);

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      __$$GitHubRepositoryImplCopyWithImpl<_$GitHubRepositoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubRepositoryImplToJson(
      this,
    );
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
          {required final int id,
          required final String name,
          @JsonKey(name: 'full_name') required final String fullName,
          required final GitHubOwner owner,
          @JsonKey(name: 'html_url') required final String htmlUrl,
          required final String? description,
          @JsonKey(name: 'stargazers_count') final int stargazersCount,
          @JsonKey(name: 'watchers_count') final int watchersCount,
          @JsonKey(name: 'forks_count') final int forksCount,
          @JsonKey(name: 'open_issues_count') final int openIssuesCount,
          required final String? language,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$GitHubRepositoryImpl;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$GitHubRepositoryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  GitHubOwner get owner;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;
  @override
  String? get description;
  @override
  @JsonKey(name: 'stargazers_count')
  int get stargazersCount;
  @override
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override
  @JsonKey(name: 'open_issues_count')
  int get openIssuesCount;
  @override
  String? get language;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of GitHubRepository
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubRepositoryImplCopyWith<_$GitHubRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitHubOwner _$GitHubOwnerFromJson(Map<String, dynamic> json) {
  return _GitHubOwner.fromJson(json);
}

/// @nodoc
mixin _$GitHubOwner {
  int get id => throw _privateConstructorUsedError;
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_url')
  String get htmlUrl => throw _privateConstructorUsedError;

  /// Serializes this GitHubOwner to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitHubOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubOwnerCopyWith<GitHubOwner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubOwnerCopyWith<$Res> {
  factory $GitHubOwnerCopyWith(
          GitHubOwner value, $Res Function(GitHubOwner) then) =
      _$GitHubOwnerCopyWithImpl<$Res, GitHubOwner>;
  @useResult
  $Res call(
      {int id,
      String login,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class _$GitHubOwnerCopyWithImpl<$Res, $Val extends GitHubOwner>
    implements $GitHubOwnerCopyWith<$Res> {
  _$GitHubOwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? avatarUrl = null,
    Object? htmlUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubOwnerImplCopyWith<$Res>
    implements $GitHubOwnerCopyWith<$Res> {
  factory _$$GitHubOwnerImplCopyWith(
          _$GitHubOwnerImpl value, $Res Function(_$GitHubOwnerImpl) then) =
      __$$GitHubOwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String login,
      @JsonKey(name: 'avatar_url') String avatarUrl,
      @JsonKey(name: 'html_url') String htmlUrl});
}

/// @nodoc
class __$$GitHubOwnerImplCopyWithImpl<$Res>
    extends _$GitHubOwnerCopyWithImpl<$Res, _$GitHubOwnerImpl>
    implements _$$GitHubOwnerImplCopyWith<$Res> {
  __$$GitHubOwnerImplCopyWithImpl(
      _$GitHubOwnerImpl _value, $Res Function(_$GitHubOwnerImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubOwner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? login = null,
    Object? avatarUrl = null,
    Object? htmlUrl = null,
  }) {
    return _then(_$GitHubOwnerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      htmlUrl: null == htmlUrl
          ? _value.htmlUrl
          : htmlUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubOwnerImpl implements _GitHubOwner {
  const _$GitHubOwnerImpl(
      {required this.id,
      required this.login,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'html_url') required this.htmlUrl});

  factory _$GitHubOwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubOwnerImplFromJson(json);

  @override
  final int id;
  @override
  final String login;
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;
  @override
  @JsonKey(name: 'html_url')
  final String htmlUrl;

  @override
  String toString() {
    return 'GitHubOwner(id: $id, login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubOwnerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, login, avatarUrl, htmlUrl);

  /// Create a copy of GitHubOwner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubOwnerImplCopyWith<_$GitHubOwnerImpl> get copyWith =>
      __$$GitHubOwnerImplCopyWithImpl<_$GitHubOwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubOwnerImplToJson(
      this,
    );
  }
}

abstract class _GitHubOwner implements GitHubOwner {
  const factory _GitHubOwner(
          {required final int id,
          required final String login,
          @JsonKey(name: 'avatar_url') required final String avatarUrl,
          @JsonKey(name: 'html_url') required final String htmlUrl}) =
      _$GitHubOwnerImpl;

  factory _GitHubOwner.fromJson(Map<String, dynamic> json) =
      _$GitHubOwnerImpl.fromJson;

  @override
  int get id;
  @override
  String get login;
  @override
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(name: 'html_url')
  String get htmlUrl;

  /// Create a copy of GitHubOwner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubOwnerImplCopyWith<_$GitHubOwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GitHubSearchResponse _$GitHubSearchResponseFromJson(Map<String, dynamic> json) {
  return _GitHubSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$GitHubSearchResponse {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  List<GitHubRepository> get items => throw _privateConstructorUsedError;

  /// Serializes this GitHubSearchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GitHubSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GitHubSearchResponseCopyWith<GitHubSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitHubSearchResponseCopyWith<$Res> {
  factory $GitHubSearchResponseCopyWith(GitHubSearchResponse value,
          $Res Function(GitHubSearchResponse) then) =
      _$GitHubSearchResponseCopyWithImpl<$Res, GitHubSearchResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<GitHubRepository> items});
}

/// @nodoc
class _$GitHubSearchResponseCopyWithImpl<$Res,
        $Val extends GitHubSearchResponse>
    implements $GitHubSearchResponseCopyWith<$Res> {
  _$GitHubSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GitHubSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitHubSearchResponseImplCopyWith<$Res>
    implements $GitHubSearchResponseCopyWith<$Res> {
  factory _$$GitHubSearchResponseImplCopyWith(_$GitHubSearchResponseImpl value,
          $Res Function(_$GitHubSearchResponseImpl) then) =
      __$$GitHubSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      List<GitHubRepository> items});
}

/// @nodoc
class __$$GitHubSearchResponseImplCopyWithImpl<$Res>
    extends _$GitHubSearchResponseCopyWithImpl<$Res, _$GitHubSearchResponseImpl>
    implements _$$GitHubSearchResponseImplCopyWith<$Res> {
  __$$GitHubSearchResponseImplCopyWithImpl(_$GitHubSearchResponseImpl _value,
      $Res Function(_$GitHubSearchResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GitHubSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$GitHubSearchResponseImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitHubSearchResponseImpl implements _GitHubSearchResponse {
  const _$GitHubSearchResponseImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'incomplete_results') required this.incompleteResults,
      required final List<GitHubRepository> items})
      : _items = items;

  factory _$GitHubSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitHubSearchResponseImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<GitHubRepository> _items;
  @override
  List<GitHubRepository> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'GitHubSearchResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitHubSearchResponseImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  /// Create a copy of GitHubSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GitHubSearchResponseImplCopyWith<_$GitHubSearchResponseImpl>
      get copyWith =>
          __$$GitHubSearchResponseImplCopyWithImpl<_$GitHubSearchResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitHubSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _GitHubSearchResponse implements GitHubSearchResponse {
  const factory _GitHubSearchResponse(
          {@JsonKey(name: 'total_count') required final int totalCount,
          @JsonKey(name: 'incomplete_results')
          required final bool incompleteResults,
          required final List<GitHubRepository> items}) =
      _$GitHubSearchResponseImpl;

  factory _GitHubSearchResponse.fromJson(Map<String, dynamic> json) =
      _$GitHubSearchResponseImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  List<GitHubRepository> get items;

  /// Create a copy of GitHubSearchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GitHubSearchResponseImplCopyWith<_$GitHubSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

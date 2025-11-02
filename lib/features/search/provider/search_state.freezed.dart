// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  /// 検索キーワード
  String get query => throw _privateConstructorUsedError;

  /// 検索結果
  List<GitHubRepository> get repositories => throw _privateConstructorUsedError;

  /// ローディング中かどうか
  bool get isLoading => throw _privateConstructorUsedError;

  /// エラー情報
  ApiException? get error => throw _privateConstructorUsedError;

  /// 検索済みかどうか（初期表示との区別）
  bool get hasSearched => throw _privateConstructorUsedError;

  /// 総件数
  int get totalCount => throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {String query,
      List<GitHubRepository> repositories,
      bool isLoading,
      ApiException? error,
      bool hasSearched,
      int totalCount});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? repositories = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? hasSearched = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      repositories: null == repositories
          ? _value.repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiException?,
      hasSearched: null == hasSearched
          ? _value.hasSearched
          : hasSearched // ignore: cast_nullable_to_non_nullable
              as bool,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String query,
      List<GitHubRepository> repositories,
      bool isLoading,
      ApiException? error,
      bool hasSearched,
      int totalCount});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? repositories = null,
    Object? isLoading = null,
    Object? error = freezed,
    Object? hasSearched = null,
    Object? totalCount = null,
  }) {
    return _then(_$SearchStateImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      repositories: null == repositories
          ? _value._repositories
          : repositories // ignore: cast_nullable_to_non_nullable
              as List<GitHubRepository>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiException?,
      hasSearched: null == hasSearched
          ? _value.hasSearched
          : hasSearched // ignore: cast_nullable_to_non_nullable
              as bool,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {this.query = '',
      final List<GitHubRepository> repositories = const [],
      this.isLoading = false,
      this.error,
      this.hasSearched = false,
      this.totalCount = 0})
      : _repositories = repositories;

  /// 検索キーワード
  @override
  @JsonKey()
  final String query;

  /// 検索結果
  final List<GitHubRepository> _repositories;

  /// 検索結果
  @override
  @JsonKey()
  List<GitHubRepository> get repositories {
    if (_repositories is EqualUnmodifiableListView) return _repositories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repositories);
  }

  /// ローディング中かどうか
  @override
  @JsonKey()
  final bool isLoading;

  /// エラー情報
  @override
  final ApiException? error;

  /// 検索済みかどうか（初期表示との区別）
  @override
  @JsonKey()
  final bool hasSearched;

  /// 総件数
  @override
  @JsonKey()
  final int totalCount;

  @override
  String toString() {
    return 'SearchState(query: $query, repositories: $repositories, isLoading: $isLoading, error: $error, hasSearched: $hasSearched, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._repositories, _repositories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.hasSearched, hasSearched) ||
                other.hasSearched == hasSearched) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      const DeepCollectionEquality().hash(_repositories),
      isLoading,
      error,
      hasSearched,
      totalCount);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final String query,
      final List<GitHubRepository> repositories,
      final bool isLoading,
      final ApiException? error,
      final bool hasSearched,
      final int totalCount}) = _$SearchStateImpl;

  /// 検索キーワード
  @override
  String get query;

  /// 検索結果
  @override
  List<GitHubRepository> get repositories;

  /// ローディング中かどうか
  @override
  bool get isLoading;

  /// エラー情報
  @override
  ApiException? get error;

  /// 検索済みかどうか（初期表示との区別）
  @override
  bool get hasSearched;

  /// 総件数
  @override
  int get totalCount;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

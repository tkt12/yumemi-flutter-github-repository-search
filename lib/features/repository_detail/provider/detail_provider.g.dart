// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailNotifierHash() => r'953bd7d6eb418191a69be02744466ffbd4a5ae22';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DetailNotifier
    extends BuildlessAutoDisposeNotifier<DetailState> {
  late final GitHubRepository repository;

  DetailState build(
    GitHubRepository repository,
  );
}

/// 詳細画面のProvider
///
/// リポジトリ情報を受け取って状態を管理
///
/// Copied from [DetailNotifier].
@ProviderFor(DetailNotifier)
const detailNotifierProvider = DetailNotifierFamily();

/// 詳細画面のProvider
///
/// リポジトリ情報を受け取って状態を管理
///
/// Copied from [DetailNotifier].
class DetailNotifierFamily extends Family<DetailState> {
  /// 詳細画面のProvider
  ///
  /// リポジトリ情報を受け取って状態を管理
  ///
  /// Copied from [DetailNotifier].
  const DetailNotifierFamily();

  /// 詳細画面のProvider
  ///
  /// リポジトリ情報を受け取って状態を管理
  ///
  /// Copied from [DetailNotifier].
  DetailNotifierProvider call(
    GitHubRepository repository,
  ) {
    return DetailNotifierProvider(
      repository,
    );
  }

  @override
  DetailNotifierProvider getProviderOverride(
    covariant DetailNotifierProvider provider,
  ) {
    return call(
      provider.repository,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailNotifierProvider';
}

/// 詳細画面のProvider
///
/// リポジトリ情報を受け取って状態を管理
///
/// Copied from [DetailNotifier].
class DetailNotifierProvider
    extends AutoDisposeNotifierProviderImpl<DetailNotifier, DetailState> {
  /// 詳細画面のProvider
  ///
  /// リポジトリ情報を受け取って状態を管理
  ///
  /// Copied from [DetailNotifier].
  DetailNotifierProvider(
    GitHubRepository repository,
  ) : this._internal(
          () => DetailNotifier()..repository = repository,
          from: detailNotifierProvider,
          name: r'detailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailNotifierHash,
          dependencies: DetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              DetailNotifierFamily._allTransitiveDependencies,
          repository: repository,
        );

  DetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.repository,
  }) : super.internal();

  final GitHubRepository repository;

  @override
  DetailState runNotifierBuild(
    covariant DetailNotifier notifier,
  ) {
    return notifier.build(
      repository,
    );
  }

  @override
  Override overrideWith(DetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailNotifierProvider._internal(
        () => create()..repository = repository,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        repository: repository,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<DetailNotifier, DetailState>
      createElement() {
    return _DetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailNotifierProvider && other.repository == repository;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, repository.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailNotifierRef on AutoDisposeNotifierProviderRef<DetailState> {
  /// The parameter `repository` of this provider.
  GitHubRepository get repository;
}

class _DetailNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<DetailNotifier, DetailState>
    with DetailNotifierRef {
  _DetailNotifierProviderElement(super.provider);

  @override
  GitHubRepository get repository =>
      (origin as DetailNotifierProvider).repository;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

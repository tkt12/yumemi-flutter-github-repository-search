// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$gitHubApiClientHash() => r'9ff955006dc77edd634f30cdf03e53b0234b5c2f';

/// GitHubApiClientのProvider
///
/// Copied from [gitHubApiClient].
@ProviderFor(gitHubApiClient)
final gitHubApiClientProvider = AutoDisposeProvider<GitHubApiClient>.internal(
  gitHubApiClient,
  name: r'gitHubApiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$gitHubApiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GitHubApiClientRef = AutoDisposeProviderRef<GitHubApiClient>;
String _$searchNotifierHash() => r'ac7f623e68c0c34b56d5914c0431da4bfd767cb1';

/// 検索機能のProvider
///
/// Copied from [SearchNotifier].
@ProviderFor(SearchNotifier)
final searchNotifierProvider =
    AutoDisposeNotifierProvider<SearchNotifier, SearchState>.internal(
  SearchNotifier.new,
  name: r'searchNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchNotifier = AutoDisposeNotifier<SearchState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

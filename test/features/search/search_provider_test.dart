import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_flutter_github_repository_search/features/search/provider/search_provider.dart';
import 'package:yumemi_flutter_github_repository_search/services/api/github_api_client.dart';
import 'package:yumemi_flutter_github_repository_search/services/api/api_exception.dart';
import 'package:yumemi_flutter_github_repository_search/models/github_repository.dart';

import 'search_provider_test.mocks.dart';

@GenerateNiceMocks([MockSpec<GitHubApiClient>()])
void main() {
  group('SearchNotifier', () {
    late MockGitHubApiClient mockClient;
    late ProviderContainer container;

    setUp(() {
      mockClient = MockGitHubApiClient();
      container = ProviderContainer(
        overrides: [
          gitHubApiClientProvider.overrideWithValue(mockClient),
        ],
      );
    });

    tearDown(() {
      container.dispose();
    });

    test('初期状態は空のSearchState', () {
      // Arrange & Act
      final state = container.read(searchNotifierProvider);

      // Assert
      expect(state.query, '');
      expect(state.repositories, []);
      expect(state.isLoading, false);
      expect(state.error, null);
      expect(state.hasSearched, false);
      expect(state.totalCount, 0);
    });

    test('search: 正常系 - 検索結果を取得して状態を更新', () async {
      // Arrange
      final mockOwner = GitHubOwner(
        id: 1,
        login: 'owner',
        avatarUrl: 'https://example.com/avatar.png',
        htmlUrl: 'https://github.com/owner',
      );

      final mockRepository = GitHubRepository(
        id: 1,
        name: 'test-repo',
        fullName: 'owner/test-repo',
        owner: mockOwner,
        htmlUrl: 'https://github.com/owner/test-repo',
        description: 'Test repository',
        stargazersCount: 100,
        watchersCount: 50,
        forksCount: 20,
        openIssuesCount: 5,
        language: 'Dart',
        createdAt: '2024-01-01T00:00:00Z',
        updatedAt: '2024-01-02T00:00:00Z',
      );

      final mockResponse = GitHubSearchResponse(
        totalCount: 1,
        incompleteResults: false,
        items: [mockRepository],
      );

      when(mockClient.searchRepositories(
        query: anyNamed('query'),
        page: anyNamed('page'),
        perPage: anyNamed('perPage'),
      )).thenAnswer((_) async => mockResponse);

      // Act
      await container.read(searchNotifierProvider.notifier).search('flutter');

      // Assert
      final state = container.read(searchNotifierProvider);
      expect(state.query, 'flutter');
      expect(state.repositories.length, 1);
      expect(state.repositories[0].name, 'test-repo');
      expect(state.isLoading, false);
      expect(state.error, null);
      expect(state.hasSearched, true);
      expect(state.totalCount, 1);
    });

    test('search: 異常系 - 空文字の場合エラーを設定', () async {
      // Act
      await container.read(searchNotifierProvider.notifier).search('');

      // Assert
      final state = container.read(searchNotifierProvider);
      expect(state.error, isA<ApiException>());
      expect(state.error?.message, '検索キーワードを入力してください');
      expect(state.hasSearched, false);
      expect(state.isLoading, false);

      verifyZeroInteractions(mockClient);
    });

    test('search: 異常系 - スペースのみの場合エラーを設定', () async {
      // Act
      await container.read(searchNotifierProvider.notifier).search('   ');

      // Assert
      final state = container.read(searchNotifierProvider);
      expect(state.error, isA<ApiException>());
      expect(state.hasSearched, false);

      verifyZeroInteractions(mockClient);
    });

    test('search: 異常系 - APIエラー時にエラーを設定', () async {
      // Arrange
      when(mockClient.searchRepositories(
        query: anyNamed('query'),
        page: anyNamed('page'),
        perPage: anyNamed('perPage'),
      )).thenThrow(const NetworkException('ネットワークエラー'));

      // Act
      await container.read(searchNotifierProvider.notifier).search('flutter');

      // Assert
      final state = container.read(searchNotifierProvider);
      expect(state.isLoading, false);
      expect(state.error, isA<NetworkException>());
      expect(state.hasSearched, true);
      expect(state.repositories, []);
    });

    test('search: 異常系 - レートリミットエラー', () async {
      // Arrange
      when(mockClient.searchRepositories(
        query: anyNamed('query'),
        page: anyNamed('page'),
        perPage: anyNamed('perPage'),
      )).thenThrow(const RateLimitException());

      // Act
      await container.read(searchNotifierProvider.notifier).search('flutter');

      // Assert
      final state = container.read(searchNotifierProvider);
      expect(state.error, isA<RateLimitException>());
      expect(state.hasSearched, true);
    });

    test('clear: 状態をリセット', () async {
      // Arrange - 先に検索を実行
      final mockOwner = GitHubOwner(
        id: 1,
        login: 'owner',
        avatarUrl: 'https://example.com/avatar.png',
        htmlUrl: 'https://github.com/owner',
      );

      final mockRepository = GitHubRepository(
        id: 1,
        name: 'test-repo',
        fullName: 'owner/test-repo',
        owner: mockOwner,
        htmlUrl: 'https://github.com/owner/test-repo',
        description: 'Test repository',
        stargazersCount: 100,
        watchersCount: 50,
        forksCount: 20,
        openIssuesCount: 5,
        language: 'Dart',
        createdAt: '2024-01-01T00:00:00Z',
        updatedAt: '2024-01-02T00:00:00Z',
      );

      final mockResponse = GitHubSearchResponse(
        totalCount: 1,
        incompleteResults: false,
        items: [mockRepository],
      );

      when(mockClient.searchRepositories(
        query: anyNamed('query'),
        page: anyNamed('page'),
        perPage: anyNamed('perPage'),
      )).thenAnswer((_) async => mockResponse);

      await container.read(searchNotifierProvider.notifier).search('flutter');

      // Act
      container.read(searchNotifierProvider.notifier).clear();

      // Assert
      final state = container.read(searchNotifierProvider);
      expect(state.query, '');
      expect(state.repositories, []);
      expect(state.isLoading, false);
      expect(state.error, null);
      expect(state.hasSearched, false);
      expect(state.totalCount, 0);
    });
  });
}

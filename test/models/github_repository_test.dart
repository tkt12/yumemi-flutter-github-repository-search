import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_flutter_github_repository_search/models/github_repository.dart';

void main() {
  group('GitHubRepository', () {
    test('fromJson: 正常系 - JSONから正しくデシリアライズできる', () {
      // Arrange
      final json = {
        'id': 1,
        'name': 'test-repo',
        'full_name': 'owner/test-repo',
        'owner': {
          'id': 1,
          'login': 'owner',
          'avatar_url': 'https://example.com/avatar.png',
          'html_url': 'https://github.com/owner',
        },
        'html_url': 'https://github.com/owner/test-repo',
        'description': 'Test repository',
        'stargazers_count': 100,
        'watchers_count': 50,
        'forks_count': 20,
        'open_issues_count': 5,
        'language': 'Dart',
        'created_at': '2024-01-01T00:00:00Z',
        'updated_at': '2024-01-02T00:00:00Z',
      };

      // Act
      final repository = GitHubRepository.fromJson(json);

      // Assert
      expect(repository.id, 1);
      expect(repository.name, 'test-repo');
      expect(repository.fullName, 'owner/test-repo');
      expect(repository.owner.login, 'owner');
      expect(repository.htmlUrl, 'https://github.com/owner/test-repo');
      expect(repository.description, 'Test repository');
      expect(repository.stargazersCount, 100);
      expect(repository.watchersCount, 50);
      expect(repository.forksCount, 20);
      expect(repository.openIssuesCount, 5);
      expect(repository.language, 'Dart');
      expect(repository.createdAt, '2024-01-01T00:00:00Z');
      expect(repository.updatedAt, '2024-01-02T00:00:00Z');
    });

    test('fromJson: スネークケースからキャメルケースへの変換', () {
      // Arrange
      final json = {
        'id': 1,
        'name': 'test-repo',
        'full_name': 'owner/test-repo',
        'owner': {
          'id': 1,
          'login': 'owner',
          'avatar_url': 'https://example.com/avatar.png',
          'html_url': 'https://github.com/owner',
        },
        'html_url': 'https://github.com/owner/test-repo',
        'description': null,
        'stargazers_count': 1000,
        'watchers_count': 500,
        'forks_count': 200,
        'open_issues_count': 50,
        'language': null,
        'created_at': '2024-01-01T00:00:00Z',
        'updated_at': '2024-01-02T00:00:00Z',
      };

      // Act
      final repository = GitHubRepository.fromJson(json);

      // Assert - スネークケースが正しくキャメルケースに変換される
      expect(repository.fullName, 'owner/test-repo');
      expect(repository.htmlUrl, 'https://github.com/owner/test-repo');
      expect(repository.stargazersCount, 1000);
      expect(repository.watchersCount, 500);
      expect(repository.forksCount, 200);
      expect(repository.openIssuesCount, 50);
      expect(repository.createdAt, '2024-01-01T00:00:00Z');
      expect(repository.updatedAt, '2024-01-02T00:00:00Z');
    });

    test('fromJson: nullableフィールドの処理', () {
      // Arrange
      final json = {
        'id': 1,
        'name': 'test-repo',
        'full_name': 'owner/test-repo',
        'owner': {
          'id': 1,
          'login': 'owner',
          'avatar_url': 'https://example.com/avatar.png',
          'html_url': 'https://github.com/owner',
        },
        'html_url': 'https://github.com/owner/test-repo',
        'description': null, // null
        'stargazers_count': 100,
        'watchers_count': 50,
        'forks_count': 20,
        'open_issues_count': 5,
        'language': null, // null
        'created_at': '2024-01-01T00:00:00Z',
        'updated_at': '2024-01-02T00:00:00Z',
      };

      // Act
      final repository = GitHubRepository.fromJson(json);

      // Assert
      expect(repository.description, null);
      expect(repository.language, null);
    });

    test('fromJson: デフォルト値の処理', () {
      // Arrange - カウント系フィールドが省略された場合
      final json = {
        'id': 1,
        'name': 'test-repo',
        'full_name': 'owner/test-repo',
        'owner': {
          'id': 1,
          'login': 'owner',
          'avatar_url': 'https://example.com/avatar.png',
          'html_url': 'https://github.com/owner',
        },
        'html_url': 'https://github.com/owner/test-repo',
        'description': 'Test',
        'language': 'Dart',
        'created_at': '2024-01-01T00:00:00Z',
        'updated_at': '2024-01-02T00:00:00Z',
      };

      // Act
      final repository = GitHubRepository.fromJson(json);

      // Assert - @Default(0)が適用される
      expect(repository.stargazersCount, 0);
      expect(repository.watchersCount, 0);
      expect(repository.forksCount, 0);
      expect(repository.openIssuesCount, 0);
    });

    test('toJson: 正しくシリアライズできる', () {
      // Arrange
      final owner = GitHubOwner(
        id: 1,
        login: 'owner',
        avatarUrl: 'https://example.com/avatar.png',
        htmlUrl: 'https://github.com/owner',
      );

      final repository = GitHubRepository(
        id: 1,
        name: 'test-repo',
        fullName: 'owner/test-repo',
        owner: owner,
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

      // Act
      final json = repository.toJson();

      // Assert - キャメルケースからスネークケースへ変換される
      expect(json['id'], 1);
      expect(json['name'], 'test-repo');
      expect(json['full_name'], 'owner/test-repo');
      expect(json['html_url'], 'https://github.com/owner/test-repo');
      expect(json['stargazers_count'], 100);
      expect(json['watchers_count'], 50);
      expect(json['forks_count'], 20);
      expect(json['open_issues_count'], 5);
    });
  });

  group('GitHubOwner', () {
    test('fromJson: 正常系 - JSONから正しくデシリアライズできる', () {
      // Arrange
      final json = {
        'id': 1,
        'login': 'owner',
        'avatar_url': 'https://example.com/avatar.png',
        'html_url': 'https://github.com/owner',
      };

      // Act
      final owner = GitHubOwner.fromJson(json);

      // Assert
      expect(owner.id, 1);
      expect(owner.login, 'owner');
      expect(owner.avatarUrl, 'https://example.com/avatar.png');
      expect(owner.htmlUrl, 'https://github.com/owner');
    });

    test('toJson: 正しくシリアライズできる', () {
      // Arrange
      final owner = GitHubOwner(
        id: 1,
        login: 'owner',
        avatarUrl: 'https://example.com/avatar.png',
        htmlUrl: 'https://github.com/owner',
      );

      // Act
      final json = owner.toJson();

      // Assert
      expect(json['id'], 1);
      expect(json['login'], 'owner');
      expect(json['avatar_url'], 'https://example.com/avatar.png');
      expect(json['html_url'], 'https://github.com/owner');
    });
  });

  group('GitHubSearchResponse', () {
    test('fromJson: 正常系 - JSONから正しくデシリアライズできる', () {
      // Arrange
      final json = {
        'total_count': 100,
        'incomplete_results': false,
        'items': [
          {
            'id': 1,
            'name': 'test-repo',
            'full_name': 'owner/test-repo',
            'owner': {
              'id': 1,
              'login': 'owner',
              'avatar_url': 'https://example.com/avatar.png',
              'html_url': 'https://github.com/owner',
            },
            'html_url': 'https://github.com/owner/test-repo',
            'description': 'Test',
            'stargazers_count': 100,
            'watchers_count': 50,
            'forks_count': 20,
            'open_issues_count': 5,
            'language': 'Dart',
            'created_at': '2024-01-01T00:00:00Z',
            'updated_at': '2024-01-02T00:00:00Z',
          }
        ],
      };

      // Act
      final response = GitHubSearchResponse.fromJson(json);

      // Assert
      expect(response.totalCount, 100);
      expect(response.incompleteResults, false);
      expect(response.items.length, 1);
      expect(response.items[0].name, 'test-repo');
    });
  });
}

# ゆめみFlutterコーディングテスト - GitHubリポジトリ検索アプリ

## 概要
GitHubのリポジトリを検索・閲覧できるFlutterアプリケーションです。

## 主な機能
- **リポジトリ検索**: GitHub APIを使用したリポジトリ検索
- **詳細表示**: リポジトリの詳細情報（説明、統計、言語、ライセンスなど）を表示
- **外部リンク**: url_launcherを使用してGitHubのリポジトリページを開く
- **エラーハンドリング**: API通信エラーやURL起動エラーの適切な処理
- **多言語対応**: 日本語・英語に対応

## 技術スタック
- **Flutter SDK**: 3.0以上
- **状態管理**: Riverpod (flutter_riverpod + riverpod_annotation)
- **API通信**: Dio
- **データクラス**: Freezed + json_serializable
- **多言語対応**: flutter_localizations + intl
- **外部リンク**: url_launcher
- **テスト**: flutter_test + mockito

## アーキテクチャ
Feature-Firstアーキテクチャを採用し、機能ごとにディレクトリを分割しています。

各feature内の構成:
- `presentation/`: 画面UI
- `provider/`: 状態管理（Riverpod）
- `widget/`: 再利用可能なウィジェット

## セットアップ

### 1. 依存パッケージのインストール
```bash
flutter pub get
```

### 2. コード生成
```bash
dart run build_runner build --delete-conflicting-outputs
```

### 3. 実行
```bash
flutter run
```

## テスト

### ユニットテストの実行
```bash
flutter test
```

実装済みのテスト:
- `test/features/search/search_provider_test.dart`: SearchNotifierのテスト
- `test/models/github_repository_test.dart`: GitHubRepositoryモデルのテスト

## ディレクトリ構成
```
lib/
├── main.dart                    # アプリケーションエントリーポイント
├── app.dart                     # アプリケーション設定
├── common/                      # 共通機能
│   ├── extensions/              # 拡張機能
│   ├── providers/               # 共通プロバイダー
│   └── widgets/                 # 共通ウィジェット
├── features/                    # 機能単位（Feature-First）
│   ├── search/                  # 検索機能
│   │   ├── presentation/        # 検索画面
│   │   ├── provider/            # 検索状態管理
│   │   └── widget/              # 検索用ウィジェット
│   └── repository_detail/       # リポジトリ詳細機能
│       ├── presentation/        # 詳細画面
│       ├── provider/            # 詳細画面状態管理
│       └── widget/              # 詳細画面用ウィジェット
├── models/                      # データモデル
│   └── github_repository.dart   # GitHubリポジトリモデル
├── services/                    # ビジネスロジック
│   └── api/                     # API通信
│       ├── github_api_client.dart  # GitHub API クライアント
│       └── api_exception.dart      # API例外処理
├── theme/                       # テーマ設定
│   ├── app_theme.dart           # アプリテーマ
│   └── app_colors.dart          # カラー定義
└── l10n/                        # 多言語対応（自動生成）
    ├── app_localizations.dart
    ├── app_localizations_ja.dart
    └── app_localizations_en.dart

test/
├── features/
│   └── search/
│       └── search_provider_test.dart
└── models/
    └── github_repository_test.dart
```

## ライセンス
MIT License
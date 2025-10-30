# ゆめみFlutterコーディングテスト - GitHubリポジトリ検索アプリ

## 概要
GitHubのリポジトリを検索・閲覧できるFlutterアプリケーションです。

## 技術スタック
- **Flutter SDK**: 3.0以上
- **状態管理**: Riverpod (riverpod_annotation)
- **API通信**: Dio
- **データクラス**: Freezed + json_serializable
- **多言語対応**: flutter_localizations

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

## ディレクトリ構成
```
lib/
├── main.dart
├── app.dart
├── common/          # 共通機能
├── features/        # 機能単位
├── models/          # データモデル
├── services/        # ビジネスロジック
└── theme/           # テーマ設定
```

## ライセンス
MIT License
# template-rails

## Railsテンプレート

このリポジトリは、Railsのテンプレートプロジェクトです。

### 技術スタック

このプロジェクトは、以下の技術を使用して構築されています。

- **Rails**: アプリケーションフレームワークとして使用
- **MySQL**: データベース管理システム
- **RuboCop**: Rubyのコードスタイルと品質を保つための静的解析ツール
- **Docker**: コンテナベースで開発環境を構築
- **Docker Compose**: サービスの依存関係を管理し、アプリケーションを容易に起動

### 開発環境の構築

このプロジェクトでは **Docker** を利用して開発環境を構築します。

#### 前提条件

- **Docker Desktop**: Docker環境を簡単にセットアップできるツールです。
- **Make**: 環境構築や各種コマンドの実行を簡略化するための `Makefile` を使用しています。LinuxやmacOSでは標準でインストールされていますが、Windowsの場合はWSL (Windows Subsystem for Linux) を利用するか、GNU Makeをインストールしてください。

#### セットアップ手順

```bash
git clone git@github.com:yuuu-takahashi/template-rails.git
cd template-rails
make build
make db-setup
```

### 開発サーバーの起動

以下のコマンドを実行して開発サーバーを起動します

```bash
make up
```

開発サーバーは <http://localhost:3000> で確認できます

## テスト方法

以下のコマンドを実行してテストを実行します

```bash
make test
```

## デプロイ、リリース方法

 TODO:

## 参考

- [Rails Documentation](https://railsguides.jp/)
- [Docker Documentation](https://docs.docker.com/)
- [RuboCop Documentation](https://docs.rubocop.org/)

# template-rails

## Railsテンプレート

このリポジトリは、Railsのテンプレートプロジェクトです。

### 使用技術

- **Ruby**: プログラミング言語
- **Rails**: Ruby製のWebアプリケーションフレームワーク
- **MySQL**: データベース管理システム
- **RuboCop**: Rubyのコード品質管理ツール
- **Docker**: コンテナを使って開発環境を構築し、管理するツール

### 開発環境構築

このプロジェクトでは **Docker** を利用して開発環境を構築します。

#### 前提条件

- Docker Desktop をインストール
- Visual Studio Code (VSCode) と Remote - Containers拡張機能 をインストール

#### セットアップ手順 (Dev Containerを使う)

1. リポジトリのクローン

    ```bash
    git clone git@github.com:yuuu-takahashi/template-rails.git
    cd template-rails
    ```

2. VSCodeで Reopen in Container を選択して、Dev Containerを開く

#### 開発サーバーの起動 (Dev Container内)

```bash
docker-compose up
```

開発サーバーは <http://localhost:3000> で確認できます

## テスト方法

以下のコマンドを実行してテストを実行します

```bash
# コンテナ起動
docker-compose up
# 別ターミナルでテストを実行します。
docker-compose exec web bundle exec rspec
```

## デプロイ、リリース方法

 TODO:

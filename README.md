# template-rails

## Railsテンプレート

このリポジトリは、Railsのテンプレートプロジェクトです。

### 使用技術

- **Ruby**: プログラミング言語
- **Rails**: Ruby製のWebアプリケーションフレームワーク
- **MySQL**: データベース管理システム
- **RuboCop**: Rubyのコード品質管理ツール
- **Docker**: コンテナを使って開発環境を構築し、管理するツール

### 開発環境の構築

このプロジェクトでは **Docker** を利用して開発環境を構築します。

#### 前提条件

- **Docker Desktop**: Docker環境を簡単にセットアップできるツールです。

#### セットアップ手順

```bash
git clone git@github.com:yuuu-takahashi/template-rails.git
cd template-rails
docker-compose run --rm web bundle exec rails db:setup
```

### 開発サーバーの起動

以下のコマンドを実行して開発サーバーを起動します

```bash
docker-compose up
```

開発サーバーは <http://localhost:3000> で確認できます

## テスト方法

以下のコマンドを実行してテストを実行します

```bash
# コンテナ起動
docker-compose up

# 別ターミナルでテスト実行
docker-compose exec web bundle exec rspec
```

## デプロイ、リリース方法

 TODO:

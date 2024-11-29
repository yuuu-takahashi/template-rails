# template-rails

## Railsテンプレート

このリポジトリは、Railsのテンプレートプロジェクトです。

### 使用言語・フレームワーク・ライブラリ

- **Ruby**: プログラミング言語
- **Rails**: Ruby製のWebアプリケーションフレームワーク
- **MySQL**: データベース管理システム
- **Prettier**: フォーマッター
- **RuboCop**: Rubyのコード品質管理ツール
- **htmlbeautifier**: HTML/ERBコードの整形ツール
- **RSpec**: テストフレームワーク
- **TailwindCSS**: CSSフレームワーク
- **Docker**: コンテナ管理ツール
- **Node.js**: フロントエンド環境
- **Ruby LSP**: エディタ補完と静的解析

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

2. VS Codeで Reopen in Container を選択して、Dev Containerを開く

#### 開発サーバーの起動 (Dev Container内)

```bash
bundle exec rails s
```

開発サーバーは <http://localhost:3000> で確認できます

## テスト方法 (Dev Container内)

以下のコマンドを実行してテストを実行します

```bash
bundle exec rspec
```

## デプロイ、リリース方法

TODO:

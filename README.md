# template-rails

このリポジトリは、Ruby on Railsのテンプレートプロジェクトです。
このプロジェクトは、[Dev Container](https://code.visualstudio.com/docs/devcontainers/containers)での利用を想定した構成になっています。

## ディレクトリ構成
TODO:

## 開発環境構築

## 必要なツール

- [VS Code](https://code.visualstudio.com/)
- [Docker](https://www.docker.com/ja-jp/)
- VS Codeの[Dev Containers拡張機能](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

### 開発環境の準備

1. リポジトリをクローン

   ```bash
   git clone git@github.com:yuuu-takahashi/template-rails.git
   cd template-rails

2. 環境変数の設定

   ```bash
   cp example.env .env.development
   ```

3. VS Codeのの左下「><」アイコンをクリックし、「Remote-Containers: Reopen in Container」を選択し、起動

4. データベース準備

   ```bash
   bundle exec rails db:setup
   bundle exec rails db:seed
   ```

5. 開発サーバー起動

   ```bash
   bundle exec rails s
   ```

ブラウザで <http://localhost:3000> を開き、表示確認

## 開発作業ガイド
- マイグレーションファイルの追加
- マイグレーションの実行
- テストの実行
- コードの静的解析と修正

## トラブルシューティング

TODO:

# Infrastructure Learning

現役大学生による，Linux/Docker/CI-CDの基礎を勉強するリポジトリ

## GitHub Actions CI/CD
GitHub Actionsを利用した**継続的デプロイ (CD)**を構築

- **デプロイ先**: [GitHub Pages](https://[あなたのユーザー名].github.io/infra-test/)
- **仕組み**: 
  - `workflow/deploy.yml` により，`my-web-site` ディレクトリ内を抽出
  - 自動的に静的ホスティング環境へ反映

## Docker Containerization
Windows Home環境（Hyper-V無効状態）だったので，Dockerを用いたコンテナサーバーを構築

- **独立サーバー**: Nginx公式イメージを用いた軽量コンテナの運用
- **ポートマッピング**: ホスト側の `9000` ポートをコンテナの `80` ポートに接続
- **ボリュームマウント**: ホストPC (`~/infra-test/my-web-site`) とコンテナ内のパスを同期
  - `docker run -d -p 9000:80 -v ~/infra-test/my-web-site:/usr/share/nginx/html --name test-server nginx`
  - ホスト側の変更がコンテナ内にもかかる

## Web Server Setup
コンテナ化の前に，Linux上でのWebサーバー構築の基礎を勉強

- **Nginxの導入**: `apt` を用いたインストールとプロセス管理
- **ネットワーク制御**: サービス停止・再起動とポート番号の変更テスト
- **ログ分析**: `tail -f` コマンドを用いたアクセスログのリアルタイム監視

# ベースイメージにAlpine Linuxを使用
FROM alpine:latest

# SQLiteをインストール
RUN apk add --no-cache sqlite

# コンテナ内の作業ディレクトリを設定
WORKDIR /data

# コンテナ起動時のデフォルトコマンド
CMD ["sqlite3"]

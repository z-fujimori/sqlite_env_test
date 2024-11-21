## 導入
- `sqlite3 mydatabase.db < init.sql`
- `sqlite3 mydatabase.db`
- `sqlite>`から始まっていたら正解 
- `.tables`でテーブルがあるか確認しよう。



<br/>
<br/>
<br/>
<br/>



### ドッカー使うverはわからんかった
1. Dockerイメージをビルド
`docker build -t sqlite-docker .`
2. コンテナを実行
`docker run -it --rm -v $(pwd)/data:/data sqlite-docker`
コンテナを起動して永続化するためのデータボリュームをマウント。
- `-it`: 対話モードで起動。
- `--rm`: コンテナ終了時に自動削除。
- `-v $(pwd)/data:/data`: ホストマシンのdataディレクトリをコンテナの/dataにマウント。
3. initファイルを実行
`.exit` もしsqlite> プロンプト内にいたらSQLiteのCLIを終了。
`sqlite3 mydatabase.db < init.sql`
4. SQLite CLIを起動
`sqlite3 mydatabase.db`
`sqlite>`から始まっていたら正解 

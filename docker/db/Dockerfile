#元になるイメージ
FROM mariadb:latest

#作成者
MAINTAINER yume_yu <c0116248c3@edu.teu.ac.jp>

#ビルド時に実行されるコマンド
#自動登録用DBを作成
COPY database.sql /docker-entrypoint-initdb.d/database.sql
#COPY makeuser.sql /docker-entrypoint-initdb.d/makeuser.sql


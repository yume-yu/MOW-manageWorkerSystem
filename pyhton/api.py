from flask import Flask, render_template #追加
import pymysql

app = Flask(__name__)

@app.route('/')
def hello():
	name = "Hoge"
	#db setting
	db = pymysql.connect(
		host='localhost',
		port=5353,
		user='root',
		password='example',
		db='mysql',
		charset='utf8',
		cursorclass=pymysql.cursors.DictCursor,
		)

	cur = db.cursor()
	sql = "select * from user"
	cur.execute(sql)
	members = cur.fetchall()

	cur.close()
	db.close()
	#return name
	return render_template('hello.html', title='flask test', members=members) #変更

## おまじない
if __name__ == "__main__":
	app.run(debug=True)

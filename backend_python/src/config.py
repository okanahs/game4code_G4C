from app import app
from flaskext.mysql import MySQL

mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '1234567890'
app.config['MYSQL_DATABASE_DB'] = 'db_g4c'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
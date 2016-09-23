# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database : city where it's cool to run 
db = SQLite3::Database.new("running.db")
		#db.execute("SELECT * FROM running")

# Learn about fancy string delimiters ==> Don't forget, this just a string, 
# I am not running SQL in my database.
create_table_cmd = <<-SQL
CREATE TABLE running(
	id INTEGER PRIMARY KEY,
	city_name VARCHAR(255),
	stars INT
 ) 
SQL

#create a running table 
db.execute(create_table_cmd)



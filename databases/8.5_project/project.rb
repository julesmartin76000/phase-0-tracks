# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database : city where it's cool to run 
db = SQLite3::Database.new("running.db")
db.results_as_hash = true 
		#db.execute("SELECT * FROM running")

# Learn about fancy string delimiters ==> Don't forget, this just a string, 
# I am not running SQL in my database.
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS running(
	id INTEGER PRIMARY KEY,
	city_name VARCHAR(255),
	stars INT
 ) 
SQL

#create a running table 
db.execute(create_table_cmd)

# add a test running
#db.execute("INSERT INTO running (city_name, stars) VALUES ('San Francisco', 5)")

def store_city(db, city_name, stars)
	db.execute("INSERT INTO running (city_name, stars) VALUES (?, ?)", [city_name, stars])
	#db.execute("SELECT * FROM running")
end 

10.times do 
	store_city(db, Faker::Address.city, 3)
end 

# explore ORM by retrieving data
#running = db.execute("SELECT * FROM running")
#running.each do |run|
#	puts "#{run['city_name']} has #{run['stars']} stars."
#end 

###### The purpose is to ask for the datas to an user and save 
###### the number of stars to create a ranking







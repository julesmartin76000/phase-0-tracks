require 'sqlite3'
require 'faker'
#require 'ranking'


# create SQLite3 database : city where it's cool to run 
###### The purpose is to ask for the datas to an user and save 
###### the number of stars to create a ranking

db = SQLite3::Database.new("running.db")
db.results_as_hash = true 
#ranking = Ranking.new
		
create_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS running(
	id INTEGER PRIMARY KEY,
	city_name VARCHAR(255),
	stars INT
 ) 
SQL

db.execute(create_table_cmd)

def store_city(db)
	puts "What's your favourite city for running?"
    name = gets.chomp.downcase
    puts "How do you rank it ? (1 to 5 stars)"
    stars = gets.chomp.to_i
db.execute("INSERT INTO running (city_name, stars) VALUES (?, ?)", name, stars)

	puts "#{name} has #{stars} stars"
	running = db.execute("select*from running;")
	running.each do |run|
	puts "#{run['city_name']} has #{run['stars']} stars."
	#ranking.score << running
end 
	
end 

store_city(db)

# create another table of cities 
# in the user interface : "what city do you want to rank"
# if it's a new city, scan the database, create a new city
# if the city already exists in the table, instead of creating a new city, pull the city id from the cities table and
# insert into running
# create a method to take the average of each cities.

#create a city table allow to be more clear






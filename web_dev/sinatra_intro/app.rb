# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# release 0

get '/contact' do 
  "I am living in France"
end 

# the request in the browser is : http://localhost:9393/great_job?name=Jules
get '/great_job'do
 name = params[:name]
 if name 
   "Good job, #{name}!"
 else 
   "Good job!"
 end
end

get '/:parameter_1/plus/:parameter_2' do 
  parameter_1 = params[:parameter_1].to_i
  parameter_2 = params[:parameter_2].to_i
  result = parameter_1 + parameter_2
  result.to_s
end 

# release 1 
# 1/ Volt // Ruby on rails.
# 2/ ActiveRecord // Datamapper
# 3/ What is a Web stack ? 
# A Web stack is the collection of software required for Web development. 
# At a minimum, a Web stack contains an operating system (OS), a programming language, 
# database software and a Web server.
# LAMP is one commonly used Web stack. It uses Linux as the operating system, Apache as the Web server, 
# MySQL as the relational database management system and PHP as the object-oriented scripting language.  


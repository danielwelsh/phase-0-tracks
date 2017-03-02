# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
	@students = db.execute("SELECT * FROM students")
  	#Linking be made to the erb HTML template based on this route
  	erb :home
end


get '/students/new' do 
	erb :new_student
end

get '/students/change' do
	erb :change_student
end


post '/students' do 
	db.execute("INSERT INTO students (name, campus, age) VALUES (?, ?, ?)", [params['name'], params['campus'], params['age'].to_i])
	redirect '/'
end

post '/students/update' do 
	db.execute("UPDATE students SET age=(?) WHERE name=(?)", params['age'].to_i, params['name'])
	redirect '/'
end
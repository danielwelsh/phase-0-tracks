#require gems
require 'sinatra'
require 'students'

#write a basic GET route
#add a query parameter
# GET /
get '/' do
	"hello"
	"#{params[:name]} is #{params[:age]} years old."
end

#write a GET route with
#route parameters
get '/about/:person' do 
	person = params[:person]
	" #{person} is a programmer and #{person} is learning Sinatra"
end



#write a GET route with 
#route parameters

get '/:person_1/loves/:person_2' do
	"#{params[:person_1]} loves #{params[:person_2]}"
end

get '/students' do
	students = db.execute("SELECT * FROM students")
	students.to_s
end
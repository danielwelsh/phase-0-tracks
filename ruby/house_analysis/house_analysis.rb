require 'sqlite3'




class Housing

	def initialize

		#Array for prices today
		@year_1 = [400000, 500000, 600000, 450000, 800000, 700000, 500000, 320000, 475000, 899000, 999000, 675000, 500000]
		#Array for last years prices
		@year_2 = [450000, 550000, 675000, 800000, 950000, 500000, 375000, 890000, 820000, 789000, 459999, 360000, 780000]
		#Square foot values that can be used
		@square_foot = [2500, 4000, 1500, 1000, 700, 5000, 7000, 2200, 1800, 1500, 1100, 3400, 2800]



		#Create and ensure that the databases exist
		create_table_cmd_1 = <<-SQL
			CREATE TABLE IF NOT EXISTS house_info (
				id INTEGER PRIMARY KEY,
				year_1 INT,
				year_2 INT,
				city_id INT,
				square_feet INT,
				FOREIGN KEY (city_id) REFERENCES city(id)
				);
			SQL

		create_table_cmd_2 = <<-SQL
			CREATE TABLE IF NOT EXISTS cities (
				id INTEGER PRIMARY KEY,
				city VARCHAR(255)
				);
			SQL

		@db = SQLite3::Database.new('houses.db')
		@db.execute(create_table_cmd_1)
		@db.execute(create_table_cmd_2)
		@db.type_translation = true
		@db.results_as_hash = true

		populate_db
				
	end



	def populate_db
		#Create 4 cities and make them exist in the cities table
		@cities = ["Edmonton", "Calgary", "Vancouver", "Toronto"]
		

		#Run a loop to create 500 homes in each of the cities
		@cities.each do |city|
			@db.execute("INSERT INTO cities (city) VALUES (?)", [city])

			city_index = @cities.index(city)
			500.times do
				create_home(city_index)
			end
		end
			#use a random number generator to place each city into the cities_info database

	end



	def create_home(city_index)
		@db.execute("INSERT INTO house_info (year_1, year_2, city_id, square_feet) VALUES ( ?, ?, ?, ?)", [@year_1.sample, @year_2.sample, city_index, @square_foot.sample])
	end



	def market_appriciation(market_city)
		
		#Find the FOREIGN KEY VALUE for that city
		city = @db.execute("SELECT cities.id FROM cities WHERE city = '#{market_city}';")
		city = city[0]
		city = city['id']
		


		#Return all data for that city
		houses = @db.execute("SELECT * FROM house_info WHERE city_id = #{city} ;")
		
		#divided by 2 to see the market appriciation
		year_1_total = 0
		year_2_total = 0
		

		houses.each do |house|
			year_1_total += house['year_1']
			year_2_total += house['year_2']
		end
	
		percent = ((year_2_total.to_f - year_1_total.to_f) / year_2_total.to_f) * 100
		"The average change in prices in the last year was #{percent} percent."
	end




	def market_per_foot(market_city)
		#Find the FOREIGN KEY VALUE for that city
		city = @db.execute("SELECT cities.id FROM cities WHERE city = '#{market_city}';")
		city = city[0]
		city = city['id']

		#Return all the data for that city
		houses = @db.execute("SELECT * FROM house_info WHERE city_id = #{city} ;")

		#divided by 2 to see the market appriciation
		year_1_total = 0
		square_feet = 0
		

		houses.each do |house|
			year_1_total += house['year_1']
			square_feet += house['square_feet']
		end
		price_per_foot = year_1_total / square_feet

		"The average price per square foot is $#{price_per_foot} "
	end

	def print_cities
		cities = @db.execute("SELECT cities.city FROM cities")
		cities_array = []
		cities.each_with_index do |city, index|
			cities_array << cities[index]['city']
		end
		cities_array
	end

end





	



house = Housing.new



#DRIVER CODE

puts "Welcome to the Canadian Housing prices database."


#STARTS LOOP TO ALLOW USER TO USE INTERFACE AS MANY TIMES AS THEY WOULD LIKE. 
option = ''
loop do 
	puts "\nYou you like an analysis on a market? (enter 'YES' or 'DONE')"
	option = gets.chomp.to_s
	
	#Conditional branch that takes user down desired branch
	if option == 'YES' 
		
			#This list is used to compare input later
			
			puts "\nPlease enter the city you would like to anlayze:"
			puts "Your options are:"
			puts house.print_cities
			cities_list = house.print_cities
			# puts cities_list

			#Takes and validates the user's input
			option = ''
			loop do 
				puts "\nYour choice:"
				option = gets.chomp.to_s
				if cities_list.include? option 
					puts "\nIn #{option.capitalize}:" 
					puts "#{house.market_per_foot(option)}"
					puts "#{house.market_appriciation(option)}"
					break
				else
					puts "That is invalid input. Please try again."
				end
			end


	#Breaks loop when done
	elsif option == 'DONE'
		break
	#Else gets the user to enter input again. 	
	else
		puts "That is invalid input. Please try again."
	end


end



















		
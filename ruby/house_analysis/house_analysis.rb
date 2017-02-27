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
		city = @db.execute("SELECT cities.id FROM cities WHERE city = '#{user_input}';")
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
		p year_1_total
		p year_2_total
		percent = ((year_2_total.to_f - year_1_total.to_f) / year_2_total.to_f) * 100
	end




	def market_per_foot(market_city)
		#Find the FOREIGN KEY VALUE for that city
		city = @db.execute("SELECT cities.id FROM cities WHERE city = '#{user_input}';")
		city = city[0]
		city = city['id']
	end



end





	



house = Housing.new
p house.market_appriciation("Edmonton")



















		
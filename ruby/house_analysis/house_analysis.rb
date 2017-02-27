
	def initialize

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

		db = SQLite3::Database.new('house_info.db')
		db.execute(create_table_cmd_1)
		db.execute(create_table_cmd_2)

		#feed data into each of the database tables


		#make sure that the methods below are still able to access the information that is held in the database


		#create the hash/array that stores all the city data. 
		@country_housing_market = []

		#DATA TO CREATE INSTANCES
		#Array for prices today
		@year1_prices = [400000, 500000, 600000, 450000, 800000, 700000, 500000, 320000, 475000, 899000, 999000, 675000, 500000]
		#Array for last years prices
		@year2_prices = [450000, 550000, 675000, 800000, 950000, 500000, 375000, 890000, 820000, 789000, 459999, 360000, 780000]
		#Square foot values that can be used
		@square_foot = [2500, 4000, 1500, 1000, 700, 5000, 7000, 2200, 1800, 1500, 1100, 3400, 2800]
		#Cities
		@cities = {Edmonton: '', Calgary: '', Vancouver: '', Toronto: ''}		
	end


	def populate_db
		#Create 4 cities and make them exist in the cities table
		cities = ["Edmonton", "Calgary", "Vancouver", "Toronto"]
		#Run a loop to create 500 homes in each of the cities
		cities.each do [city]
			500.times do
				create_home
			end
		end
			#use a random number generator to place each city into the cities_info database
		}

	end

	def create_home
		
	end
		
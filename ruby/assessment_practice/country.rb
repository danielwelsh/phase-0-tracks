
require_relative 'sqlcommands'
require_relative 'city' 
require_relative 'house'
require 'sqlite3'

class Country
	#determine and set getter/setter methods
	attr_accessor :country_housing_market, :cities

	def initialize
		db = SQLite3::Database.new('house_info.db')
		db.execute(create_table_cmd('house_info'))
		db.execute(create_table_cmd('cities'))


		#create all the tables

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
		




	def make_city_list 
		cities_list = []
		@cities.each do |city, city_instance|
			cities_list << city.to_s.downcase
		end
		cities_list
	end





	def instance_creation
		#City instance is created
		@cities.each do |city_name, city_instance|
			@cities[city_name] = City.new
	
			#House are now created to be placed into the instance of that city
			(1..10).each do |house|
				house = House.new(@year1_prices.sample, @year2_prices.sample, @square_foot.sample)
				@cities[city_name].houses << house
			end
		end

		#The City instances is added into the country instance
		@country_housing_market << @cities
	end





	def market_total_value
		cities = make_city_list
		value = 0 
		cities.each do |city|
			value += @cities[city.capitalize.to_sym].total_value
		end
		"The market's total value is $#{value}."
	end





	def total_market_value_increase
		cities = make_city_list
		change = 0 
		cities.each do |city|
			change += @cities[city.capitalize.to_sym].market_value_output_num.to_i
		end
		change 
		"In the last year the market's value changed by #{change} percent."
	end




	def output_country
		puts "\n#{market_total_value} #{total_market_value_increase} #{price_per_foot}" 
	end


	def price_per_foot
		cities = make_city_list
		price = 0
		cities.each do |city|
			price += @cities[city.capitalize.to_sym].price_per_foot
		end
		price_foot = price / cities.length
		"On average the Canadian market costs $#{price_foot} per foot."
	end 

end

















#USER INTERFACE


#The country instance is created
canada = Country.new
canada.instance_creation


#STARTS LOOP TO ALLOW USER TO USE INTERFACE AS MANY TIMES AS THEY WOULD LIKE. 
option = ''
loop do 
	puts "\nWould you like a Canadian Market overview or individual city overview (enter 'CAN' or 'CITY' or 'done')"
	option = gets.chomp.to_s
	
	#Conditional branch that takes user down desired branch
	if option == 'CAN' || option =='CITY'
		
		#Paths for Market Overview of city analysis
		if option == 'CAN'
			#This method still needs to be written
			canada.output_country

		elsif option == 'CITY'

			#This list is used to compare input later
			
			puts "\nPlease enter the city you would like to anlayze:"
			puts "Your options are:"
			cities_list = canada.make_city_list
			puts cities_list

			#Takes and validates the user's input
			option = ''
			loop do 
				puts "\nYour choice:"
				option = gets.chomp.to_s.downcase
				if cities_list.include? option 
					puts "\nIn #{option.capitalize}:"
					#FIXME: canada.cities needs to be written in a way that would allow the country name to change. 
					puts "#{canada.cities[option.capitalize.to_sym].output_city}"
					break
				else
					puts "That is invalid input. Please try again."
				end
			end
		

		else

		end


	#Breaks loop when done
	elsif option == 'done'
		break
	#Else gets the user to enter input again. 	
	else
		puts "That is invalid input. Please try again."
	end


end















require_relative 'city' 
require_relative 'house'

class Country
	#determine and set getter/setter methods
	attr_accessor :country_housing_market, :cities

	def initialize
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
			puts city
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




	def market_total_value(city_name)
		value = @cities[city_name.capitalize.to_sym].total_value
		# cities[option.capitalize.to_sym].output_city
	end


end

















# #USER INTERFACE


# #The country instance is created
# canada = Country.new
# canada.instance_creation




# #STARTS LOOP TO ALLOW USER TO USE INTERFACE AS MANY TIMES AS THEY WOULD LIKE. 
# option = ''
# loop do 
# 	puts "\nWould you like a Canadian Market overview or individual city analysis? (enter 'o' or 'c or 'done')"
# 	option = gets.chomp.to_s
	
# 	#Conditional branch that takes user down desired branch
# 	if option == 'o' || option =='c'
		
# 		#Paths for Market Overview of city analysis
# 		if option == 'o'
# 			#This method still needs to be written


# 		elsif option == 'c'

# 			#This list is used to compare input later
			
# 			puts "Please enter the city you would like to anlayze:"
# 			puts "Your options are:"
# 			cities_list = canada.make_city_list

# 			#Takes and validates the user's input
# 			option = ''
# 			loop do 
# 				puts "\nYour choice:"
# 				option = gets.chomp.to_s.downcase
# 				if cities_list.include? option 
# 					puts "\nIn #{option.capitalize}:"
# 					#FIXME: canada.cities needs to be written in a way that would allow the country name to change. 
# 					puts "#{canada.cities[option.capitalize.to_sym].output_city}"
# 					break
# 				else
# 					puts "That is invalid input. Please try again."
# 				end
# 			end
		

# 		else

# 		end





# 	elsif option == 'done'
# 		break
# 	else
# 		puts "That is invalid input. Please try again."
# 	end


# end




	


# # puts cities[:edmonton].output_city

# #Ask the user what city they would like a report on.



















require_relative 'city' 
require_relative 'house'

class Country
	#determine and set getter/setter methods
	attr_accessor :housing_market

	def initialize
		#create the hash/array that stores all the city data. 
		@housing_market = []		
	end
		
	
	#method read_city
		#reads in the city data into and instance variable 


end



#Data that is used to create all the instances
#Array for prices today
year1_prices = [400000, 500000, 600000, 450000, 800000, 700000, 500000, 320000, 475000, 899000, 999000, 675000, 500000]
#Array for last years prices
year2_prices = [450000, 550000, 675000, 800000, 950000, 500000, 375000, 890000, 820000, 789000, 459999, 360000, 780000]
#Square foot values that can be used
square_foot = [2500, 4000, 1500, 1000, 700, 5000, 7000, 2200, 1800, 1500, 1100, 3400, 2800]
#Cities
cities = {edmonton: '', calgary: '', vancouver: '', toronto: ''}


#The country instance is created
canada = Country.new

#City instance is created
cities.each do |city_name, city_instance|
	cities[city_name] = City.new
	
	#House are now created to be placed into the instance of that city
	(1..10).each do |house|
		house = House.new(year1_prices.sample, year2_prices.sample, square_foot.sample)
		cities[city_name].houses << house
	end

	
end

#The City instances is added into the country instance
canada.housing_market << cities



#Asks the users if they want a market overview or by the city level
puts "Would you like a Candian Market overview"




puts cities[:edmonton].output_city

#Ask the user what city they would like a report on.


#



# #Create all the houses that will be placed into one city
# house1 = House.new(450000,400000,2500)
# house2 = House.new(400000,350000,2500)


# #Create city and place houses into that city
# edmonton = City.new 
# edmonton.houses << house1
# edmonton.houses << house2


# #Create country and place of cities into that country






#Driver Code
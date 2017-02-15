


require_relative 'house'

class City
	#determine and set setter/getter methods
	attr_accessor :houses




	def initialize
		#reads that hash that was created in the house class and creates an instance based on the city symbol
		#The loop to create all the instances of cities will be done using driver code. 
		@houses = []
	end
		

	#method output_city_data
		#nicely outputs the other city wide calculations that were done. 
		#avg_home
		#max_home
		#min_home




	def avg_home
		
		#Summing all the home values in the city by iterating through all the homes
		total = 0
		@houses.each do |house|
			total += house.p_year1
		end

		#The average is calculated
		avg = total / @houses.length


		"The average price of a home is $#{avg}."
	end



	
	def max_city_price

		#finds the maximum home value in that city
		prices = []
		@houses.each do |house|
			prices << house.p_year1
		end
		max = prices.max 


		"The maximum price of a home is $#{max}"
	end

		
	def min_city_price
		prices = []
		@houses.each do |house|
			prices << house.p_year1
		end
		min = prices.min

		"The minimum price of a home is $#{min}"
	end

	#method min_home 
		#finds the minimum home value in that city
		#returns statement that says "The minimum home value in ___ city is ___"

	#method market_value_increase

end



edmonton = City.new
house1 = House.new(450000,400000,2500)
house2 = House.new(400000,350000,2500)
edmonton.houses << house1
edmonton.houses << house2
puts edmonton.avg_home


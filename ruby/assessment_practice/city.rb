


require_relative 'house'

class City


	#determine and set setter/getter methods
	attr_accessor :houses



	def initialize
		#reads that hash that was created in the house class and creates an instance based on the city symbol
		#The loop to create all the instances of cities will be done using driver code. 
		@houses = []
	end
		


	def output_city
		puts "#{avg_home} #{max_city_price} #{min_city_price} #{market_value_increase}" 
	end




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


		"The maximum price of a home is $#{max}."
	end



		
	def min_city_price

		#finds the minimum home value in that city
		prices = []
		@houses.each do |house|
			prices << house.p_year1
		end
		min = prices.min

		"The minimum price of a home is $#{min}."
	end





	def market_value_increase
		prices1 = []
		prices2 = []

		@houses.each do |house|
			prices1 << house.p_year1
			prices2 << house.p_year2
		end


		#Collecting the increase in value throughout whole city
		value_change = 0
		i = 0
		while i < prices1.length
			value_change += prices1[i] - prices2[i]
			i += 1
		end
		

		#Collecting the worth of property during base year
		base_worth = 0
		prices2.each do |house|
			base_worth += house
		end
		

		#Calculating final increase
		change = ((value_change.to_f / base_worth.to_f) * 100).floor

		"The housing market's average price changed by #{change} percent this year."
	end




	def market_value_output_num
		prices1 = []
		prices2 = []

		@houses.each do |house|
			prices1 << house.p_year1
			prices2 << house.p_year2
		end


		#Collecting the increase in value throughout whole city
		value_change = 0
		i = 0
		while i < prices1.length
			value_change += prices1[i] - prices2[i]
			i += 1
		end
		

		#Collecting the worth of property during base year
		base_worth = 0
		prices2.each do |house|
			base_worth += house
		end
		

		#Calculating final increase
		change = ((value_change.to_f / base_worth.to_f) * 100).floor

	end





	def total_value
		prices1 = []
		@houses.each do |house|
			prices1 << house.p_year1
		end

		worth = 0
		prices1.each do |house|
			worth += house
		end
		worth
	end 


	def price_per_foot
		market_value = 0
		@houses.each do |house|
			market_value += house.p_year1
		end
		square_feet = 0
		@houses.each do |house|
			square_feet += house.sq_foot
		end

		price_foot = market_value / square_feet
	end

end














































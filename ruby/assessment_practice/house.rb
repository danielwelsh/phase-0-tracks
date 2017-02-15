#create a hash that is stored in another document.
#In the driver code of this program there will be a loop that reads in everything and initalizes it 



class House

	#determine and create setter/getter methods


	#method initialize
	def initialize(p_year1, p_year2, sq_foot)
		@p_year1 = p_year1
		@p_year2 = p_year2
		@sq_foot = sq_foot
		#Creates an instance of each house 
		#Sets all the instance variables that have been passed in as parameters
	end
		

	#method house info
	def print_house
		#This method prints all the private methods in a nice way
		"This house costs $#{price_per_foot} a square foot and changed in value by $#{capital_gains} from last year."
	end
		

	
	#method calc_price_per_foot
	def price_per_foot
		#This will be returned becuase of implicit return.
		price_foot = @p_year1 / @sq_foot
		#Allows a calculation to be performed that tells price per square foot. This method can be made as a private method that only uses instance variables
	end
		

	#method capital_gains
	def capital_gains
		change =  @p_year1 - @p_year2
		#Calculation of the year over year loss or appreciation in capital gains that has affected the house. Like the method before this one is private and does not need to be passed instance variables. Because of implicit return this amount will be returned
	end
	





end
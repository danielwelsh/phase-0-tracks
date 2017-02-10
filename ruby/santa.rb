class Santa

	#Getter method to access within
	attr_reader :age, :ethnicity, :gender

	#Setter methods
	attr_accessor :age, :gender


	def speak
		puts 'Ho, ho, ho! Haaaapy holidays!'
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}"
		puts "#{@name} says that was a good cookie"		
	end

	def initialize(gender, ethnicity)
		puts "Inializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def about
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end

	#Setter methods

	def get_mad_at=(name)
		@reindeer_ranking << name
	end

	


end


def create_santa(num)
	
	genders = ["cat", "male", "female", "fluid", "N/A"]
	ethnicities = ["american", "canadian", "french", "english", "chinese"]
	i = 0

	while i < num
		santa_instance = Santa.new(genders.sample, ethnicities.sample)
		age = rand(0..140)
		i += 1
		puts "Santa's gender is: #{santa_instance.gender}"
		puts "Santa's ethnicity is: #{santa_instance.ethnicity}"
		puts "Santa's age is: #{santa_instance.age}"
	end
	
end




create_santa(55)












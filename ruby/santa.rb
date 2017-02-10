class Santa

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


end


genders = ["cat", "male", "female", "fluid", "N/A"]
ethnicities = ["american", "canadian", "french", "english", "chinese"]

santas = []

i = 0
while i < genders.length 
	santas << Santa.new(genders[i], ethnicities[i])
	i += 1
end



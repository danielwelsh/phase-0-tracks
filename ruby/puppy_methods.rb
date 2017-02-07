

# class Puppy

#   def self.fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def self.speak(int)
#   	puts "Woof!"*int
#   end


#   def self.rollover
#   	puts "rollover"
#   end

#   def self.dog_years(int)
#   	puts int * 7
  	
#   end

#   def self.sit
#   	puts "sit"
#   end

#   def self.initialize
#   	puts "Initializing new puppy instance..."
#   end

# end

# Puppy.fetch('ball')

# Puppy.speak(2)

# Puppy.rollover

# Puppy.dog_years(5)

# Puppy.sit

# Puppy.new.initialize





class Skiing

	def self.initialize(i)
		puts "Initializing the #{i} skiing instance..."
		return "Initializing # #{i}"
	end

	def self.turn(direction)
		puts "The skiier turned #{direction}"
		return "turn"
	end

	def self.jump
		puts "The skiier jumped"
		return "jump"
	end

end



def create_hash
	ski_data = {}
end


def add_instance(list, init)
	list[init] = 1
end



i = 0
list = create_hash

#Create each instance
until i == 50 
	init = Skiing.initialize(i)
	direction = "right"
	turn = Skiing.turn(direction)
	jump = Skiing.jump
	add_instance(list, init)
	i += 1	
end



#Store information to each instance
i = 0
list.each do |instance|
	init = Skiing.initialize(i)
	turn = Skiing.turn(direction)
	jump = Skiing.jump
	list[init] = turn, jump
	i += 1
end




p list










































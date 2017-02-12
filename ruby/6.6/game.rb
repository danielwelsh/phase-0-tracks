#Pseudocode for game word guessing game. 

#Create game class

class Game 

	#Setter/getter methods- want to be able to set the word from outside, and set guess from outside
	attr_accessor :word, :char



	def initialize
		puts "Welcome to the word guessing game"
		#Create the instance array variable for blanks word 
		@blanks = []
		@blanks_string = ''
		@input_string = ''
		@input_string_array = []
		
	end




	def convert(user_input)
		#Stores master word for later comparison
		@input_string = user_input

		#Convert word to blanks
		user_input.split('').each do |letter|
			@blanks << '_'
			@input_string_array << letter
		end
		
		#Convert back to string for printout
		@blanks.each do |letter|
			@blanks_string += letter
		end

		#Implicit return
		@blanks
	end





	def word_checker(word_input)
		#input: word originating in the driver code
		#output: if the word is a match or not (true or false)

		#If the word is correct match is set to true
		if word_input == @input_string
			match = true

		#Else if they are wrong match is set to false
		else
			match = false
		end	

	end





	def char_checker(char_input)
		#The letter is checked to be included in the word. 
	
		if @input_string_array.include? char_input

			#If the char is a match we want to iterate through each letter and replace the blank with the letter. 
			i = 0
			@input_string_array.each do |char|
				if char == @input_string_array[i]
					#Replace the blank with the character
					@blanks[i] = char
				end
			end
			
		else
			
		end
						#If the letter is in word, fill in the blank elsif the letter has already been guessed this will not count against the user. the loop should be broken to prevent the counter being added to. 
						#Else print a message that this letter was not included
	
		@blanks
	end


end



round = Game.new
round.convert('hello')
round.word_checker('hello')
p round.char_checker('h')













#Driver Code

#The user is welcomed to the game

#User 1 is prompted to enter a word into the game
	#Have this blurred out like a password if possible

#Create a counter varibale


#User 2 enters into the guessing loop of the game. This is limited to the length of the word

	#Class method- display_word
		#User 2 is given the length of the word in order to help gauge what they are looking for

		#User 2 is asked if they would like to make a guess of a letter or a word
			#User 2 makes a guess of a word
				#Class method- word_checker
					#If the word is correct they are told so and the game ends
					#Else if they are wrong they are looped back to give another guess
			
			#User 2 makes a guess of a letter
				#Class method- letter_checker
					#The letter is checked to be include in the word. 
						#If the letter is in word, fill in the blank elsif the letter has already been guessed this will not count against the user. the loop should be broken to prevent the counter being added to. 
						#Else print a message that this letter was not included



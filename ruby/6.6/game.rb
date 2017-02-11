#Pseudocode for game word guessing game. 

#Create game class

class Game 

	#Setter/getter methods- want to be able to set the word from outside, and set guess from outside
	attr_accessor :word, :char



	def initiate
		puts "Welcome to the word guessing game"
		@char = ''
	end




	def convert_word(user_input)
		#Create the instance array variable for blanks word 
		@blanks_word = []
		@word = ''
		
		#Convert word to blanks
		user_input.split('').each do 
			@blanks_word << '_'
		end
		
		#Convert back to string for printout
		@blanks_word.each do |letter|
			@word += letter
		end

		@word
	end



end



round = Game.new
p round.convert_word('hello')













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



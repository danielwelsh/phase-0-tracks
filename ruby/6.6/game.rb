#Pseudocode for game word guessing game. 

#Create game class

class Game 

	#Setter/getter methods- want to be able to set the word from outside, and set guess from outside
	attr_accessor :blanks, :blanks_string, :input_string, :input_string_array

	def initialize
		puts "Welcome to the word guessing game"
		#Create the instance array variable for blanks word 
		@blanks = []
		@blanks_string = ''
		@input_string = ''
		@input_string_array = []
		@tracker = []
		
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



	#If the letter is in word, fill in the blank elsif the letter has already been guessed this will not count against the user. the loop should be broken to prevent the counter being added to. 
	#Else print a message that this letter was not included

	def char_checker(char_input)
		#The letter is checked to be included in the word. 
	
		if @input_string_array.include? char_input

			#If the char is a match we want to iterate through each letter and replace the blank with the letter. 
			i = 0
			@input_string_array.each do |char|
				if char_input == @input_string_array[i]
					
					#Replace the blank with the character
					@blanks[i] = char_input
				end

			i += 1
			end
			
		else
			puts "That letter does not exist in the word."
		end
						
	
		@blanks
	end


	def tracker(char_input)
		#if the character is included return message that it has been used already and try again.
		if @tracker.include? char_input
			puts "\nUser 2: This word has already been used. Try Again.\n"
			allow = 'no'

		#else return nothing and allow the program to continue as usual. 
		else
			allow = 'yes'
		end

		#Add the character to the tracker list.
		@tracker << char_input

		#Implicit return 
		allow

	end






end













#Driver Code

#Initiate a new instance of the class 
round = Game.new


#Get user input from the User 1
puts "User 1: Please enter the word that User 2 will attempt to guess:"
string = gets.chomp
round.convert(string)


#Provide basic instructions to User 2
puts "\nUser 2: Here is the word that you must guess: #{round.blanks}"
puts "User 2: You are limited to a number of guesses equal to the length of word. You have #{round.blanks.length} guesses."


#Set counter are parent while loop that will initiate the proper number of guessing rounds
counter = 1

while counter < round.blanks.length + 1

	puts "\n\n\nGuess #{counter}:"
	
	#Collect user input as to what type of guess they want to make. While loop to check for valid input.
	#Decison branch for word, letter, unknown input, and repeated input (This comes later)
	validation = 'no'
	until validation == 'yes'
	
		puts "\nUser 2: Would you like to guess a letter or the whole word ('l' for letter, 'w' for word)?"
		input = gets.chomp.to_s


		if input == 'l'
			puts "\nUser 2: You have chosen to enter a letter."
			validation = 'yes'
		elsif input == 'w'
			puts "\nUser 2: You have chosen to enter a word."
			validation = 'yes'
		else
			puts "\nUser 2: That is incorrect input. Try again."
			validation = 'no'
		end 

	end





	#Branch for if they have chosen letter
	if input == 'l'

		#Set up loop to ensure that they can make a new guess and not be punished for guessing the same letter more than once
		allow = 'no'
		until allow == 'yes'

			#Ask for user guess input
			puts "What is the letter you guess?"
			char_input = gets.chomp

			#This character input must be checked to see that it has not been used already 
			allow = round.tracker(char_input)
		end

		puts "\nHere is the updated word #{round.char_checker(char_input)}" 
		



	#Branch for if they have chosen word
	elsif input == 'w'
		puts 'What is you word guess?'
		word_input = gets.chomp
		if round.word_checker(word_input) == true
			puts "\nYou guessed the right word and won the game!"
			break
		elsif round.word_checker(word_input) ==  false
			puts "\nYou guessed the wrong word!"
		end
			
	
			
	end

		

	#A test what will check if blanks == the intial input string to catch it they have guess the word with letters alone


	
	counter +=	1
		
	
end




# round.convert('hello')
# round.word_checker('hello')
# p round.char_checker('h')













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





#fake_name (name)
#Split the name into an array using the split function
#Start by changing the first and last letters using swap
#Iterate through all the letters in the name
  #If the letter is a consonant change it the the next possible consonant
  #To compare make a list of consonants that the list can move onto



def fake_name (letters)
  
  #The position of the first and last letter are swapped
  letters[0], letters[-1] = letters[-1], letters[0]

  #Creating list of vowls and consonants
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = [ 'b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']


  #Iterate through each letter in letters
  letters.map! do |letter|
    
    #If the letter is found in the list of vowels
    if (vowels.include? letter) && (letter != 'u')
      #find the index position of the letter in the list vowels and change to the next letter
      letter = vowels[vowels.index(letter)+1]

    #The vowel at the end of the list is manually looped back to the start. 
    elsif letter == 'u'
      letter = 'a'



    #If the letter is found in the list of consonants
    elsif (consonants.include? letter) && (letter != 'z')
      #find the index position of the letter in the list of consonants and move to the next letter
      letter = consonants[consonants.index(letter)+1]

    #The consonant at the end of the list is manually looped back to the start
    elsif  letter == 'z'
      letter = 'b'

    elsif letter == ' '
      letter = ' '
      

    else
    

    end


  end
      
  return letters   
end



def user_input(name_list)
  status = TRUE 
  name_before = [ ]
  name_after = [ ]


  #Loop that work validates if the user would like to continue 
  while status == TRUE
    
    puts "Please enter your name:"
    name = gets.chomp
    


    #convert everything to lowercase
    name.downcase!

    #Name is split by each letter
    letters = name.split('')

    #The encoding is done in other method
    fake_name(letters)

    #The array is placed back together
    new_name = letters.join

    #The first letters of each word are capitalized
    new_name = new_name.split.map(&:capitalize).join(' ')

    #Name from before and name after are added as a hash. 
    name_list = {name_before: 'hi'}
    p name_list
    #Output the final name
    puts "Your new name is #{new_name}"





    puts "Would you like to enter another name? If no type 'exit'. Type anything else to continue:"
    status = gets.chomp

    if status == 'exit'
      status = FALSE

    else
      status = TRUE
    end
  
  end


  puts "Thanks for using this program"
  
  #The hash is returned from the funtion
  return name_list

end

name_list = {}


user_input(name_list)

p name_list
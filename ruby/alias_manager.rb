

#fake_name (name)
#Split the name into an array using the split function
#Start by changing the first and last letters using swap
#Iterate through all the letters in the name
  #If the letter is a consonant change it the the next possible consonant
  #To compare make a list of consonants that the list can move onto



def fake_name (name)
  #Name is split by each letter
  letters = name.split('')
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

    else
    

    end


  end
      
      
end



def method_name
  
end




p fake_name("danieluz")
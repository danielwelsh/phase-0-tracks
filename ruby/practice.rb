  


#Method so prob can be checked at multiple points 
def probchecker(prob)

    #Determines outputs based on all the previous tests
  if prob == 1
     puts "Probably not a vampire"

  elsif prob == 2
     puts "Probably a vampire"

  elsif prob == 3
     puts "Almost certainly a vampire"
     
  elsif prob == 4
     puts "Definitely a vampire"

  else 
    puts "Results inconclusive"
  end
  
end
















  #The user is told instructions and the list is created. 
  puts "Type the word 'done' at any time to leave."
  puts "Please enter any alergies that you may have:"
  alergies = []
  input = ""
  i = 1

  #Asks the user to give input but will break the loop if they enter the correct input. 
  while input != 'done'
    puts "Alergy: #{i}"
    i += 1
    input = gets.chomp

    #To prevent the word exit being added. 
    if input != 'done'
      alergies.push(input)
    end 

    #Check to see if the user is a vampire
    if input == "sunshine"
      prob = 4
      probchecker(prob)
      break
    end 

  end


  #Displays all of the alergies the person has. 
  puts "\nThanks for your input. These are your stated alergies:"
  puts alergies


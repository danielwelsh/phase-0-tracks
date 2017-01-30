
#Method so prob can be checked at multiple points 
def probchecker(prob)

    #Determines outputs based on all the previous tests
  if prob == 1
     puts "\nProbably not a vampire"

  elsif prob == 2
     puts "\nProbably a vampire"

  elsif prob == 3
     puts "\nAlmost certainly a vampire"
     
  elsif prob == 4
     puts "\nDefinitely a vampire"

  else 
    puts "\nResults inconclusive"
  end
  
end





def survey 

  #Have the user input their name
  puts "Please enter your name:"
  name = gets.chomp



  #Have the user input their birth year
  puts "Please enter your birth year:"
  birth_year = gets.chomp
  puts "Please enter your age:"
  age = gets.chomp.to_i



  #Have the user input if they want bread or not. The input is validated. 
  vaild_input = FALSE

  #Asks the user if they like garlic bread and records answer. 
  until vaild_input == TRUE
    puts "Would you like garlic bread (Enter Yes or No):"
    bread = gets.chomp

      if bread == ("Yes") || bread == ("No")
        vaild_input = TRUE
      else
        vaild_input = FALSE
        puts "That is not valid input. Please try again."
      end
  end




  #Have the user input if they have enrolled in the company health insurance The input is validated. 
  vaild_input = FALSE

  #Asks the user if they have health insurance and records answer.
  until vaild_input == TRUE
    puts "Have you enrolled in the company health insurance (Enter Yes or No):"
    insurance = gets.chomp

      if insurance == ("Yes") || insurance == ("No")
          vaild_input = TRUE
      else
        vaild_input = FALSE
        puts "That is not valid input. Please try again."
      end

  end






  #Vampire testing

  #Age Test
  if (2017 - birth_year.to_i) == age
    #The person is not a vampire
    age_test = TRUE


  else
    #The person is a vampire
    age_test = FALSE

  end 



  #Garlic Test
  if bread == "Yes"
    #The person is not vampire
    garlic_test = TRUE

  else 
    #The person is a vampire
    garlic_test = FALSE

  end 



  #Health Insurance Test
  if insurance == "Yes"
    #The person is not a vampire
    insurance_test = TRUE

  else
    #The person is a vampire
    insurance_test = FALSE

  end 




  #Testing the results to see how much we think they are a vampire

  #If all tests say that they are not a vampire
  #   Not a vampire          Not a vampire             Not a vampire
  if age_test == TRUE && garlic_test == TRUE && insurance_test == TRUE
   prob = 1
  end


  #Got the age test wrong and either hates garlic bread or is enrolled in the company health insurance
  #       Is a vampire            Is a vampire             Is a vampire 
  if age_test == FALSE && ( garlic_test == FALSE || insurance_test == FALSE )
    prob = 2
  end


  #Got the age test wrong and the garlic test and the insurance test
  #      Is a vampire          Is a vampire            Is a vampire
  if age_test == FALSE && garlic_test == FALSE && insurance_test == FALSE
    prob = 3
  end


  #Has a name that would suggest they are a vampire
  if name == ("Drake Cula" || "Tu Fang")
    prob = 4
  end

  probchecker(prob)






  #The user is told instructions and the list is created. 
  puts "\nType the word 'done' at any time to leave."
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




end 




#Calling the program in the user interface. 
puts "How many times would you like to administer the survey:"
iterations = gets.chomp.to_i
i = 0

while  i < iterations
  survey
  i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

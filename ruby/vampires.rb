
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



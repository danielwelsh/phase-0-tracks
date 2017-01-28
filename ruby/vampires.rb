
#Have the user input their name
puts "Please enter your name:"
name = gets.chomp


#Have the user input their birth year
puts "Please enter your birth year:"
birth_year = gets.chomp
puts "Please enter your age:"
age = gets.chomp



#Have the user input if they want bread or not. The input is validated. 
vaild_input = FALSE
until vaild_input == TRUE
  puts "Would you like garlic bread (Enter Yes or No):"
  bread = gets.chomp

  if bread == ("Yes") || ("No")
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

  if insurance == ("Yes") || ("No")
      vaild_input = TRUE
  else
    vaild_input = FALSE
    puts "That is not valid input. Please try again."
  end

end



puts 2017 - birth_year.to_i



#Vampire testing

#Age Test
if ((2017 - (birth_year.to_i)) == age)
  puts (2017 - (birth_year.to_i)) == age
  age_test = FALSE
  puts age_test
else
  age_test = FALSE
  puts age_test
  puts (2017 - (birth_year.to_i)) == age
end 
puts age_test

#Garlic Test
if bread == "No"
  garlic_test = FALSE
  puts garlic_test
else 
  garlic_test = TRUE
  puts garlic_test
end 

#Health Insurance Test
if insurance == "No"
  insurance_test = FALSE
  puts insurance_test
else
  insurance_test = TRUE
  puts insurance_test
end 




#Testing the results to see how much we think they are a vampire

#If all tests say that they are not a vampire
if (age_test == FALSE) && (garlic_test == FALSE) && (insurance_test == FALSE)
 prob = 1
 puts prob
end


#Got the age test wrong and either hates garlic bread or is enrolled in the company health insurance
if (age_test == TRUE) && ( (garlic_test == TRUE) || (insurance == TRUE) )
  prob = 2
  puts prob
end


#Got the age test wrong and the garlic test and the insurance test
if (age_test == TRUE) && (garlic_test == TRUE) && (insurance == TRUE)
  prob = 3
  puts prob
end


#Has a name that would suggest they are a vampire
if name == ("Drake Cula" || "Tu Fang")
  prob = 4
  puts prob
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



def calculate(integer_1,operator,integer_2)
  
  #If the user gives the + operator
  if operator == '+'
    result = integer_1 + integer_2

  #If the user gives the - operator
  elsif operator == '-'
    result = integer_1 - integer_2

  #If the user gives the * operator 
  elsif operator == '*'
    result = integer_1 * integer_2

  #If the user gives the / operator  
  elsif operator == '/'
    result = integer_1 / integer_2
  else
  end


end



def user_input
  validation = TRUE
  inter_list = []
  master_list = []

  while validation == TRUE

    #Collecting first integer and validation
    puts 'Please enter your first integer:'
    integer_1 = gets.chomp
    while integer_1.is_a? String
      puts "Your inputs is not valid. Please try again:"
      integer_1 = gets.chomp.to_i
    end 

    #Collecting operator symbol
    puts 'Please enter your operator:'
    operator = gets.chomp

    #Collecting second integer and validation
    puts 'Please enter your second integer'
    integer_2 = gets.chomp.to_i
    while integer_1.is_a? String
      puts "Your inputs is not valid. Please try again:"
      integer_1 = gets.chomp.to_i
    end 

    #Displaying the answer to the user
    puts 'The answer is: '
    p calculate(integer_1,operator,integer_2)

    #Storing the answer in memory
    result = calculate(integer_1,operator,integer_2)

    #The operators are kepy in a list
    master_list << [integer_1, operator, integer_2, result]


    puts "Press any key to make another calculation or 'done' to exit:"
    validation = gets.chomp

    if validation == 'done'
      validation = FALSE
      puts "Thanks!"
    else
      validation = TRUE
    end

  end 


  #The user is printed back what they have just entered
  puts "There were #{master_list.length} calculation(s) performed."
  master_list.each { |sublist| puts "#{sublist[0]} #{sublist[1]} #{sublist[2]} = #{sublist[3]}"}
       

end







user_input
details = {name: nil, age: nil, number_children: nil, decor_theme: nil, state: nil, city: nil, zip_code: nil,  carpet: nil, wood: nil, granite: nil}

puts "Please enter the following information:"

#The user enters their name
puts "Name:"
input = gets.chomp
details[:name] = input


#The user enters their age
puts "Age:"
input = gets.chomp
details[:age] = input


#The user enters the number of children they have
puts "Number of Children:"
input = Integer(gets.chomp) 
details[:number_children] = input

#The user enters their desired decor theme 
puts "Decor Theme:"
input = gets.chomp
details[:decor_theme] = input

#The user enters their State
puts "State:"
input = gets.chomp
details[:state] = input

#The user enters their city
puts "City:"
input = gets.chomp
details[:city] = input

#The user enters zip code
puts "Zip Code:"
input = Integer(gets.chomp)
details[:zip_code] = input

#The user enters if they like carpet. Stored as a boolean. 
puts "Do you like carpet? (Enter true or false)"
input = gets.chomp
details[:carpet] = input

#The user enters if they like wood. Stored as a boolean.
puts "Do you like wood? (Enter true or false)"
input = gets.chomp
details[:wood] = input

#The user enters if they like granite. Stored as a boolean.
puts "Do you like granite? (Enter true or false)"
input = gets.chomp
details[:granite] = input

p details


puts "Would you like to change an input? If so please enter the hash value you would like to change. If no changes are needed please enter 'none'"

input = gets.chomp.to_sym 


if input == :none
    puts "Thanks for providing info"
elsif input == :name
  puts "What would you like to reassign #{input} to?"
  details[:name] = gets.chomp
elsif input == :age
  puts "What would you like to reassign #{input} to?"
  details[:age] = gets.chomp
elsif input == :number_children
  puts "What would you like to reassign #{input} to?"
  details[:number_children] = gets.chomp
elsif input == :decor_theme
  puts "What would you like to reassign #{input} to?"
  details[:decor_theme] = gets.chomp
elsif input == :state
  puts "What would you like to reassign #{input} to?"
  details[:state] = gets.chomp
elsif input == :city
  puts "What would you like to reassign #{input} to?"
  details[:city] = gets.chomp
elsif input == :zip_code
  puts "What would you like to reassign #{input} to?"
  details[:zip_code] = gets.chomp
elsif input == :carpet
  puts "What would you like to reassign #{input} to?"
  details[:carpet] = gets.chomp
elsif input == :wood
  puts "What would you like to reassign #{input} to?"
  details[:wood] = gets.chomp
elsif input == :granite
  puts "What would you like to reassign #{input} to?"
  details[:granite] = gets.chomp
else
  puts "Thanks for providing you input"
end

puts details

  


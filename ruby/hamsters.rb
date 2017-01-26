puts "Please Enter your hamster's name:"
	name = gets.chomp

puts "From 1-10, what would your volume preference be?"
	volume = gets.chomp
	volume = volume.to_i

	
puts "Please enter your hamster's fur color:"
	fur = gets.chomp

puts "Is your hamster a good candidate for adoption? Please answer (Y/N):"
	adoption =gets.chomp

puts "What's your hamster's est age?"
	number = gets.chomp
	if number == ''
		number =nil
	else
		number=number.to_i
	end
		


puts "Name: #{name}"
puts "Volume: #{volume}"
puts "Fur: #{fur}"
puts "Adoption: #{adoption}"
puts "Number: #{number}"
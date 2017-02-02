def math
  x = 45
  y = 66
  puts x + y
  yield(x, y)
end

math { |x, y| puts "The first number is #{x} and the second number is #{y}"}  



#Practice with array
numbers = [1,2,3,4,5,6,7]
new_numbers = []

p numbers
p new_numbers


numbers.each do |number|
  new_numbers << number * number
end 

p numbers 
p new_numbers




#Practice with hash
new_cars = []
car_type = {Ferrari: "sport", Honda: "Bang for your buck", Toyota: "Build Quality", Lotus: "Small sport", Tesla: "electric"}

p new_cars
p car_type


car_type.map do |car_maker, description|
  puts car_maker
  car_type[car_maker] = description.upcase
end

p car_type
p new_cars
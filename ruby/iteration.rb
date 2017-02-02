def math
  x = 45
  y = 66
  puts x + y
  yield(x, y)
end

math { |x, y| puts "The first number is #{x} and the second number is #{y}"}  
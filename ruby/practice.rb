def hello
  puts "Why hello there"
  yield("dan","hannah")
end


hello { |name1, name2| puts "great to meet you #{name1} and #{name2}."}
class Puppy

  def self.fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def self.speak(int)
  	puts "Woof!"*int
  end


  def self.rollover
  	puts "rollover"
  end

  def self.dog_years(int)
  	puts int * 7
  	
  end

  def self.sit
  	puts "sit"
  end

end

Puppy.fetch('ball')

Puppy.speak(2)

Puppy.rollover

Puppy.dog_years(5)

Puppy.sit
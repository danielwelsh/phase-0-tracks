module Flight
	
	def take_off(altitude)
		puts "Taking off and ascendign until reaching #{altitude}"
	end

end





class Bird
	include Flight
end

class Plane
	include Flight
end



bird = Bird.new
bird.take_off(8000)


plane = Plane.new
plane.take_off(3000000)
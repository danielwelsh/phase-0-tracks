# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
#   	end

#   	def self.yell_happily(words)
#   		words + "!" + ":) <3"
  		
#   	end
# end	

module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def yell_happily(words)
  		words + "!" + ":) <3"
  		
  	end
end	


class Babies
	include Shout
end


class Hockey_players
	include Shout
end


babies = Babies.new
puts babies.yell_happily('HELLO')

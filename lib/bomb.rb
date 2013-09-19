class Bomb
	
	def initialize active = false
		@active = active 
	end

	def on?
		@active
	end

	def turn_on
		@active = true
	end

	def defuse
		@active = false
	end

end



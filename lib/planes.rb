class Plane

	def initialize flying = false
		@flying = flying
	end

	def land
		@flying = false
		self 
	end

	def take_off
		@flying = true
		self
	end

	def flying?
		@flying
	end

end

#putting self is important because otherwise nothing to land

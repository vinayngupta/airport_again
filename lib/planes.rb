class Plane
	attr_accessor :plane

	def initialize grounded = true
		@plane = [ ]
	end

	def land
		plane[0] = "grounded" 
	end

	def take_off
		plane[0] = "flying"
	end

end
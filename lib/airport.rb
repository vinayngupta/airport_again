require 'planes'
require 'weather'
require 'bomb'

class Airport
	attr_reader :planes

	def initialize planes = [Plane.new], capacity = 1
		@planes = planes
		@capacity = capacity
	end

	def has_planes?
		planes
	end

	def is_full?
		
	end

end
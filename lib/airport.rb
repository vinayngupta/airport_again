require 'planes'
require 'weather'
require 'bomb'

class Airport

	attr_reader :planes, :capacity, :weather

	def initialize planes = [Plane.new], capacity = 1
		@planes = planes
		@capacity = capacity
	end

	def has_planes?
		planes
	end

	def is_full?
		raise "No landing slots, try again" if planes.length == capacity 
	end

	def plane_takes_off
		bomb.empty? || bomb.scare_off
		plane.take_off if weather.forecast == "sunny"
		
	end
      
end
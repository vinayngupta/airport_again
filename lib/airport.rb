require_relative 'planes'
require_relative 'weather'
#require_relative 'bomb'

class Airport

	attr_reader :planes, :capacity, :weather, :bomb

	def initialize planes = [Plane.new], capacity = 1, weather = Weather.new, bomb = Bomb.new
		@planes = planes
		@capacity = capacity
		@weather = weather
		@bomb = bomb
	end

	def has_planes?
		planes.any?
	end

	def is_full?
		raise "No landing slots, try again" if planes.length == capacity 
	end

	def clear_to_take_off plane 
		planes.last.take_off if ready_to_go?
		planes.pop
	end
      
	def ready_to_go?
		weather_ok? && are_we_safe?
	end

	def weather_ok?
		@weather.forecast == "sunny"
	end

	def are_we_safe?
		@bomb.on? 
	end
end
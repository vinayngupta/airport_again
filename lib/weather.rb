#there is a 50% chance of sunny weather

class Weather
	attr_accessor :weather

	def initialize sunny = true
		@weather = weather
	end

	def forecast
		weather = ["sunny", "stormy"]
		weather.sample
	end

end

#there is a 50% chance of sunny weather

class Weather
	attr_reader :weather

	def initialize sunny = true
		@weather = ["sunny", "stormy"]
	end

	def forecast
		weather.sample
	end

end

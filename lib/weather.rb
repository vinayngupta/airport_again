#there is a 50% chance of sunny weather

class Weather

	def initialize
		@conditions = ["sunny", "stormy"]
	end

	def forecast
		@conditions.sample
	end

end

class Bomb
	attr_accessor :bomb

	def initialize
		@bomb = [ ]
		@bomb = bomb
	end

	def empty?
		bomb.empty?
	end

	def scare_on!
		bomb = 1
		#puts "OMG!!!!!!!!!!!!!!!!! We are going to die."
	end

	def scare_off
		bomb = 0
		#puts "Thank god the bomb squad saved us!"
	end

end

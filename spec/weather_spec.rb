require 'weather'

describe Weather do

	it 'can be sunny or stormy' do
		weather = Weather.new
		expect(["sunny", "stormy"].include? weather.forecast).to be_true
	end

end

# line 7 should be read as follows
# calling forecast on weather should return true if 
# it includes sunny or stormy
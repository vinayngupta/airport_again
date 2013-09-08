require 'weather'

describe Weather do

	it 'can be sunny or stormy' do
		weather = Weather.new
		expect(["sunny", "stormy"].include? weather.forecast).to be_true
	end

end
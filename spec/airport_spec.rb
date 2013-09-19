require 'airport'

describe Airport do
	let(:airport) {Airport.new}

	it 'has a collection of planes' do
		expect(airport).to have_planes
	end

	it 'will not let planes land if full' do
		expect{airport.is_full?}.to raise_error("No landing slots, try again")
	end

	it 'allows take off if sunny and no bomb scare' do
		bomb = Bomb.new
		bomb.on?
		plane = Plane.new
		weather = Weather.new
		weather.forecast == "sunny"
		expect(airport.clear_to_take_off(Plane.new)).to be_true
		expect(plane.take_off).to be_true
	end




end
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
		bomb.empty?
		plane = Plane.new
		plane.take_off
		weather = Weather.new
		weather == "sunny"
		expect(airport.plane_takes_off).to be_true
	end




end
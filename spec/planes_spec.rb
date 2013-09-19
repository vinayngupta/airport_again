require 'planes'

describe Plane do
	let(:plane) {Plane.new}

	it 'has a default state of landed' do
		expect(plane).not_to be_flying
	end

	it 'can fly after taking off' do
		plane.take_off
		expect(plane).to be_flying
	end

	it 'can land after flying' do
		plane.flying?
		plane.take_off
		plane.land
		expect(plane).not_to be_flying
	end

end
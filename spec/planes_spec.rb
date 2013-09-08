require 'planes'

describe Plane do
	let(:plane) {Plane.new}

	it 'is grounded at the airport' do
		expect(plane.land).to eq("grounded")
	end

	it 'can take off' do
		expect(plane.take_off).to eq("flying")
	end

end
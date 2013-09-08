require 'airport'

describe Airport do
	let(:airport) {Airport.new}

	it 'has a collection of planes' do
		expect(airport).to have_planes
	end

	it 'will not let planes land if full' do
		expect(airport.is_full?).to be_true
	end




end
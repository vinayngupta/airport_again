require 'bomb'

describe Bomb do
	let(:bomb) {Bomb.new}

	it 'is neither on or off' do
		expect(bomb).to be_empty
	end

	it 'scare is on' do
		expect(bomb.scare_on!).to eq(1)
	end

	it 'scare is off' do
		expect(bomb.scare_off).to eq(0)
	end

end


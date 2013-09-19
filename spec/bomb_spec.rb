require 'bomb'

describe Bomb do
	let(:bomb) {Bomb.new}

	it 'has a default state off' do
		expect(bomb).not_to be_on
	end

	it 'can be turned on' do
		bomb.turn_on
		expect(bomb).to be_on
	end

	it 'can be defused' do
		bomb.on?
		bomb.turn_on
		bomb.defuse
		expect(bomb).not_to be_on
	end

end


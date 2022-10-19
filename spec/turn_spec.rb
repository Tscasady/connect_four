require './lib/turn'

RSpec.describe Turn do
  describe '#initialize' do
    it 'exists' do
      turn = Turn.new('X')
      expect(turn).to be_a(Turn)
    end

    it 'has a symbol' do
      turn = Turn.new('X')
      expect(turn.symbol).to eq('X')
    end
  end

  describe '#get_human_input' do
    xit '' do
      turn = Turn.new('X')
      expect get_human_input to be called
    end
  end

  describe '#get_computer_input' do
    it '' do
      turn = Turn.new('O')
      computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
      player_input = turn.get_computer_input
      expect(computer_choice.include?(player_input)).to be(true)
    end
  end



end
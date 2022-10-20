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
    #just check that it can be called, not the input due to it being human choice
    it 'responds to method call' do
      turn = Turn.new('X')
      expect(turn.respond_to?(:get_human_input))
    end
  end

  describe '#get_computer_input' do
    it 'returns a random letter between A..G' do
      turn = Turn.new('O')
      computer_choice = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
      expect(computer_choice.include?(turn.get_computer_input)).to be(true)
      expect(computer_choice.include?(turn.get_computer_input)).to be(true)
    end
  end



end
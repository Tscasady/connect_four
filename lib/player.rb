#name #{}, symbol, type: human, computer
class Player
  attr_reader :type,
              :symbol,
              :name

  def initialize(type, symbol, name = 'Computer')
    @type = type
    @symbol = symbol
    @name = name
    
  end
end
class WordMaker
  def initialize
    @ones = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine' }
  end

  def wordizer(number)
    @ones.fetch(number)
  end
end
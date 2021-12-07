require('rspec')
require('numbers_to_words')

describe('WordMaker#wordizer') do
  it('takes a single digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(7)).to(eq('seven'))
  end

  it('takes a two digit number between ten and nineteen and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(12)).to(eq('twelve'))
  end

  it('takes any two digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(69)).to(eq('sixty nine'))
  end

end
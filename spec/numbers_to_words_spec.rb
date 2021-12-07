require('rspec')
require('numbers_to_words_2')

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

  it('takes any three digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(319)).to(eq('three hundred nineteen'))
  end

  it('takes any four digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(4319)).to(eq('four thousand three hundred nineteen'))
  end

  it('takes any 7 digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(7774319)).to(eq('seven million seven hundred seventy four thousand three hundred nineteen'))
  end

  it('takes any 10 digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(6915489712)).to(eq('six billion nine hundred fifteen million four hundred eighty nine thousand seven hundred twelve'))
  end

  it('takes any 13 digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(1000000000000)).to(eq('one trillion'))
  end

end
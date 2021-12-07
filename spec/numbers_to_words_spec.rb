require('rspec')
require('numbers_to_words')

describe('WordMaker#wordizer') do
  it('takes a single digit number and returns the written word version') do
    word1 = WordMaker.new()
    expect(word1.wordizer(7)).to(eq('seven'))
  end
end
class WordMaker
  def initialize
    @ones = { 0 => '', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine' }
    @teens = { 0 => 'ten', 1 => 'eleven', 2 => 'twelve', 3 => 'thirteen', 4 => 'fourteen', 5 => 'fifteen', 6 => 'sixteen', 7 => 'seventeen', 8 => 'eighteen', 9 => 'nineteen' }
    @tens = { 0 => '', 1 => '', 2 => 'twenty', 3 => 'thirty', 4 => 'fourty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }
    @words = ['thousand', 'million', 'billion', 'trillion', 'quadrillion', 'quintillion']
  end

  def wordizer(number)
    input_array = number.to_s.split('')
    number_array = []
    input_array.each do |number|
      number_array.push(number.to_i)
    end
    reversed_input = number_array.reverse()
    output_array = []
    counter = 0
    until reversed_input.length < 1
      word_ignore = true

      if reversed_input[1] == 1
        output_array.push(@teens[reversed_input[0]])
      else
        output_array.push(@ones[reversed_input[0]])
        if reversed_input[1]
          output_array.push(@tens[reversed_input[1]])
        end
      end
      reversed_input.shift
      reversed_input.shift
      if reversed_input.length > 0
        if reversed_input[0] != 0
          output_array.push('hundred')
          output_array.push(@ones[reversed_input[0]])
        end
        reversed_input.shift
        if (reversed_input[0] == 0) && (reversed_input[1] == 0) && (reversed_input[2] == 0)
          word_ignore = false
        end
        if (reversed_input.length > 0) && word_ignore
          output_array.push(@words[counter])
        end
        counter += 1
      end
    end
    output_array.reject!(&:empty?)
    output_array.reverse.join(' ')
  end
end
class WordMaker
  def initialize
    @ones = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine' }
    @teens = { 0 => 'ten', 1 => 'eleven', 2 => 'twelve', 3 => 'thirteen', 4 => 'fourteen', 5 => 'fifteen', 6 => 'sixteen', 7 => 'seventeen', 8 => 'eighteen', 9 => 'nineteen' }
    @tens = { 2 => 'twenty', 3 => 'thirty', 4 => 'fourty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }
  end

  def wordizer(number)
    array = number.to_s.split("")
    number_array = []
    output_array = []
    array.each do |number|
      number_array.push(number.to_i)
    end
    if number_array.length == 1
      @ones.fetch(number)
    elsif (number_array.length == 2) && (number_array[0] == 1)
      @teens.fetch(number_array[1])
    elsif (number_array.length == 2)
      @tens.fetch(number_array[0]) + ' ' + @ones.fetch(number_array[1])
    elsif number_array.length == 3
      output_array.push(@ones.fetch(number_array[0]))
      output_array.push('hundred')
      if number_array[1] == 1
        output_array.push(@teens.fetch(number_array[2]))
        output_array.join(' ')
      else
        output_array.push(@tens.fetch(number_array[1]))
        output_array.push(@ones.fetch(number_array[2]))
        output_array.join(' ')
      end
    else
      output_array.push(@ones.fetch(number_array[0]))
      output_array.push('thousand')
      output_array.push(@ones.fetch(number_array[1]))
      output_array.push('hundred')
      if number_array[2] == 1
        output_array.push(@teens.fetch(number_array[3]))
        output_array.join(' ')
      else
        output_array.push(@tens.fetch(number_array[2]))
        output_array.push(@ones.fetch(number_array[3]))
        output_array.join(' ')
      end
    end
  end
end
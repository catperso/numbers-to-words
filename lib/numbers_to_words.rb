class WordMaker
  def initialize
    @ones = { 0 => '', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine' }
    @teens = { 0 => 'ten', 1 => 'eleven', 2 => 'twelve', 3 => 'thirteen', 4 => 'fourteen', 5 => 'fifteen', 6 => 'sixteen', 7 => 'seventeen', 8 => 'eighteen', 9 => 'nineteen' }
    @tens = { 0 => '', 1 => '', 2 => 'twenty', 3 => 'thirty', 4 => 'fourty', 5 => 'fifty', 6 => 'sixty', 7 => 'seventy', 8 => 'eighty', 9 => 'ninety' }
  end

  def wordizer(number)
    array = number.to_s.split("")
    number_array = []
    hundreds_array = []
    thousands_array = []
    millions_array = []
    billions_array = []
    trillions_array = []
    final_output_array = []
    counter = 1
    array.each do |number|
      number_array.unshift(number.to_i)
    end
    number_array.each do |number|
      if counter < 4
        hundreds_array.unshift(number)
        counter += 1
      elsif counter < 7
        thousands_array.unshift(number)
        counter += 1
      elsif counter < 10
        millions_array.unshift(number)
        counter += 1
      elsif counter < 13
        billions_array.push(number)
      else 
        trillions_array.push(number)
      end
    end
    if number_array.length < 4
      final_output_array.push(self.hundredizer(hundreds_array))
    elsif number_array.length < 7
      final_output_array.unshift('thousand')
      final_output_array.unshift(self.hundredizer(thousands_array))
    final_output_array.unshift('million')
    final_output_array.unshift(self.hundredizer(millions_array))
    final_output_array.join(' ')
  end

  def hundredizer(array)
    output_array = []
    if array.length == 1
      @ones.fetch(array[0])
    elsif (array.length == 2) && (array[0] == 1)
      @teens.fetch(array[1])
    elsif (array.length == 2)
      @tens.fetch(array[0]) + ' ' + @ones.fetch(array[1])
    else array.length == 3
      output_array.push(@ones.fetch(array[0]))
      output_array.push('hundred')
      output_array
      if array[1] == 1
        output_array.push(@teens.fetch(array[2]))
        output_array.join(' ')
        output_array
      else
        output_array.push(@tens.fetch(array[1]))
        output_array.push(@ones.fetch(array[2]))
        output_array.join(' ')
        output_array
      end
    end
  end



end
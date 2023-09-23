class Solver
  def factorial(num)
    result = 1
    if num < 0
      raise ArgumentError, 'You must input positive numbers only'
    elsif num > 0
      (1..num).each do |i|
        result *= i
      end
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if  num % 3 == 0 &&  num % 5 == 0
      return 'fizzbuzz'
    elsif num % 5 == 0
      return 'buzz'
    elsif num % 3 == 0
      return 'fizz'
    else
      return num.to_s
    end
  end
end

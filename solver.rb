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
    if num % 3 == 0 && num % 5 == 0
      'fizzbuzz'
    elsif num % 5 == 0
      'buzz'
    elsif num % 3 == 0
      'fizz'
    else
      num.to_s
    end
  end
end

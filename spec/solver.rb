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
end

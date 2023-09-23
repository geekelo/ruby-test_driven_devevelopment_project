class Solver
  def factorial(n)
    result = 1
    if n < 0
      raise ArgumentError, "You must input positive numbers only"
    elsif n > 0
      (1..n).each do |i|
        result *= i
      end
    end
    result
  end
end

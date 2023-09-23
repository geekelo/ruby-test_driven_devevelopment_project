require 'minitest/autorun'
require_relative 'solver'

class TestSolver < Minitest::Test
  def setup
    @solver = Solver.new
  end

  def test_factorial_positive_num
    assert_equal 6, @solver.factorial(3)
    assert_equal 1, @solver.factorial(0)
  end

  def test_factorial_negative_num
    assert_raises ArgumentError do
      @solver.factorial(-3)
    end
  end

  def test_reverse
    assert_equal "olleh", @solver.reverse("hello")
    assert_equal "", @solver.reverse("")
  end

  def test_fizzbuzz
    assert_equal "1", @solver.fizzbuzz(1)
    assert_equal "fizz", @solver.fizzbuzz(3)
    assert_equal "buzz", @solver.fizzbuzz(5)
    assert_equal "fizzbuzz", @solver.fizzbuzz(15)
  end
end

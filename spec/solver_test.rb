require 'minitest/autorun'

class TestSolver < Minitest::Test
  def setup
    @solver = Solver.new
  end

  def test_factorial_positive_num
    assert_equal 6, @solver.factorial(3)
    assert_equal 1, @solver.factorial(0)
  end
end

# spec/solver_spec.rb
require_relative '../solver'
require 'rspec'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns the factorial of a given positive number' do
      expect(solver.factorial(5)).to eql(120)
    end

    it 'returns 1 when the input is 0' do
      expect(solver.factorial(0)).to eql(1)
    end
    
    it 'raises an exception for a negative number' do
      expect { solver.factorial(-5) }.to raise_exception(ArgumentError)
    end
  end
  
  describe '#reverse' do
    it 'returns the reversed string' do
      expect(solver.reverse('hello')).to eql('olleh')
    end
  end
  
  describe '#fizzbuzz' do
    it 'returns fizz for multiples of 3' do
      expect(solver.fizzbuzz(3)).to eql('fizz')
    end
    
    it 'returns buzz for multiples of 5' do
      expect(solver.fizzbuzz(5)).to eql('buzz')
    end
    
    it 'returns fizzbuzz for multiples of both 3 and 5' do
      expect(solver.fizzbuzz(15)).to eql('fizzbuzz')
    end
    
    it 'returns the number itself for other cases' do
      expect(solver.fizzbuzz(7)).to eql('7')
    end
  end
end
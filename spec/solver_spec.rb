require_relative '../solver'

describe Solver do
  context 'Testing the Solver class' do
    solver = Solver.new
    it 'Factorial of 0 returns 1' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'Raise an exception when negative numbers are passed' do
      expect(solver.factorial(-4)).to eq('No negative numbers allowed')
    end

    it 'Calculate factorial of positive integers' do
      expect(solver.factorial(8)).to eq(40_320)
    end

    it 'Reverses a string with the reverse method' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('testing')).to eq('gnitset')
    end

    it 'Fizzbuzz method returns "fizz" when a multiple of 3 but not 5 is passed ' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(21)).to eq('fizz')
    end

    it 'Fizzbuzz method returns "buzz" when a multiple of 5 but not 3 is passed' do
      expect(solver.fizzbuzz(20)).to eq('buzz')
      expect(solver.fizzbuzz(35)).to eq('buzz')
    end

    it 'Fizzbuzz method returns "fizzbuzz" when a multiple of 3 and 5 is passed' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
    end

    it 'Fizzbuzz method returns a number that is not a multiple of 3 and 5 as a string' do
      expect(solver.fizzbuzz(1)).to eq('1')
      expect(solver.fizzbuzz(7)).to eq('7')
    end
  end
end

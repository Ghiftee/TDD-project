require 'solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#factorial' do
    context '0 and positive integers' do
      it 'should result in 1 when N is 0' do
        result = @solver.factorial 0
        expect(result).to eq(1)
      end

      it 'should return the multiplication of all integers from 1 to N' do
        result = @solver.factorial 3
        expect(result).to eq(1 * 2 * 3)
      end
    end

    context 'negative integers' do
      it 'should raise an error' do
        expect { @solver.factorial(-1) }.to raise_error('Negative integer given')
      end
    end
  end

  describe '#reverse' do
    context 'takes in a string word' do
      it 'should return the reversed word' do
        expect(@solver.reverse('hello')).to eq('olleh')
      end
    end
  end

  describe '#fizzbuzz' do
    context 'when N is divisible by 3' do
      it 'should return Fizz' do
        expect(@solver.fizzbuzz(3)).to eq('fizz')
      end
    end

    context 'when N is divisible by 5' do
      it 'should return Buzz' do
        expect(@solver.fizzbuzz(5)).to eq('buzz')
      end
    end

    context 'when N is divisible by 3 and 5' do
      it 'should return FizzBuzz' do
        expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      end
    end

    context 'when N is not divisible by 3 or 5' do
      it 'should return N as a string' do
        expect(@solver.fizzbuzz(7)).to eq('7')
      end
    end
  end
end

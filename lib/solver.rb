class Solver
  def factorial(num)
    raise 'Negative integer given' if num.negative?

    if num.zero?
      1
    else
      (1..num).inject(:*) || 1
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(num)
    if (num % 15).zero?
      'fizzbuzz'
    elsif (num % 5).zero?
      'buzz'
    elsif (num % 3).zero?
      'fizz'
    else
      num.to_s
    end
  end
end

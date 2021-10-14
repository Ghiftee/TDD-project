class Solver
  def factorial(num)
    raise 'Negative integer given' if num.negative?

    if num.zero?
      1
    else
      (1..num).inject(:*) || 1
    end
  end
end

class Solver
  def factorial(num)
    return 'No negative numbers allowed' if num.negative?
    return 1 if num.zero?

    num * factorial(num -1)
  end
end

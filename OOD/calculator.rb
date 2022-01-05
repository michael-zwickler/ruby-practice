=begin
class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end

  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end
=end

class Calculator
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end
end

class ResultPrinter
  def print_answer(answer)
    "The Answer is: #{ answer }"
  end
end

calc = Calculator.new()
printer = ResultPrinter.new()

puts printer.print_answer(calc.add(5, 6))


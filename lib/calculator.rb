class Calculator

  def initialize(printer = Printer.new, memory = Memory.new)
    @printer = printer
    @memory = Memory.new
  end

  def add(number1, number2, save = false)
    answer = number1 + number2
    @memory.save(answer) if save
    @printer.prettify(answer)
  end

  def subtract(number1, number2, save = false)
    answer = number1 - number2
    @memory.save(answer) if save
    @printer.prettify(answer)
  end

  def divide(dividend, divisor, save = false)
    answer = dividend / divisor
    @memory.save(answer) if save
    @printer.prettify(answer)
  end

  def multiply(number1, number2, save = false)
    answer = number1 * number2
    @memory.save(answer) if save
    @printer.prettify(answer)
  end

  def square(number, save = false)
    answer = number * number
    @memory.save(answer) if save
    @printer.prettify(answer)
  end

  def cube(number, save = false)
    answer = number * number * number
    @memory.save(answer) if save
    @printer.prettify(answer)
  end

  def square_root(number, save = false)
    answer = Math.sqrt(number)
    @memory.save(answer) if save
    @printer.prettify(answer)
  end
end

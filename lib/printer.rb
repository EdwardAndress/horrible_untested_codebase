class Printer
  def prettify(answer)
    puts "The answer is: #{two_decimal_places(answer)}"
  end

  def two_decimal_places(number)
    sprintf('%.2f', number)
  end
end

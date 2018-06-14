class Printer
  def prettify(answer)
    two_decimal_places(answer)
  end

  def two_decimal_places(number)
    sprintf('%.2f', number)
  end
end

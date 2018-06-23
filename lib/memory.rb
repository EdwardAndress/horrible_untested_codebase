class Memory
  CAPACITY = 10

  def intialize
    @data = allocate_space
  end

  def save(number)
    available_space ? save_at_empty_location : replace_oldest_entry
  end

  def save_at_empty_location
    empty_location = @data.find(nil)
    @data[empty_location] = number
  end

  def replace_oldest_entry
    @data.delete_at(0)
    @data << number
  end

  def allocate_space
    [*1..CAPACITY].map {|location| nil }
  end

  def available_space?
    @data.any?(&:nil?)
  end

end

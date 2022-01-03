class Item

  @name
  @price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def view_price()
    return "£#{sprintf("%#.2f", @price)}"
  end

  def price()
    return @price
  end

end
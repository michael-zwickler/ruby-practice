class Item

  attr_reader :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def view_price()
    return "£#{sprintf("%#.2f", @price)}"
  end

end
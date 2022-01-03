class Checkout

  def initialize()
    @basket = []
  end

  def scan(item)
    @basket.push(item)
  end

  def show_total()
    total = calc_total()
    return "£#{sprintf("%#.2f", total)}"
  end

  private
  
  def calc_total()
    sum = 0
    @basket.each { |item| sum += item.price }
    return sum
  end

end

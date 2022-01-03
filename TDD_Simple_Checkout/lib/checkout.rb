class Checkout

  def initialize()
    @basket = []
  end

  def scan(item)
    @basket.push(item)
  end

  def show_total()
    sum = 0
    @basket.each do |item|
      sum += item.price
    end
    
    return "£#{sprintf("%#.2f", sum)}"
  end
end

class PiggyBank
  def initialize
    @balance = 0
  end
  
  def add_coins(num)
    @balance += num
  end
  def shake()
    return 'Cling!' if @balance > 0
    '...'
  end
  def break()
    @balance
  end 
end

class BankAccount
  @balance

  def initialize
    @balance = 0
  end

  def deposit(value)
    raise ArgumentError.new('Cannot deposit negative value') if value <= 0
    
    @balance += value
    return value
  end
  
  def withdraw(value)
    @balance -= value
    return value
  end

  def view_balance()
    return @balance
  end

end

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
    if value > @balance
      err_string = "Not sufficient balance. Max. Amount to be withdrawn: #{@balance}"
      raise ArgumentError.new(err_string)   
    end

    @balance -= value
    return value
  end

  def view_balance()
    return @balance
  end

end
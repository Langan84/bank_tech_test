class Account

  attr_reader :name, :balance

  def initialize(balance = 100)
    @balance = balance
  end

def depost_funds(amount)
  @balance += amount
end

def withdraw_funds(amount)
  @balance -= amount
end

def print_balance
end

end

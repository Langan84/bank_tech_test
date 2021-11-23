require_relative 'transaction'
class Account

  attr_reader :name, :balance
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end

def deposit_funds(credit)
  @balance += credit
  pp create_transaction(credit, 0, balance)
end

def withdraw_funds(debit)
  @balance -= debit
pp create_transaction(0, debit, balance)
end

def print_balance
"you have a balance of #{@balance}"
end

private

def create_transaction(credit, debit, balance)
  @transaction_history << Transaction.new(credit, debit, balance)
end




# Given a client makes a deposit of 1000 on 10-01-2023
# And a deposit of 2000 on 13-01-2023
# And a withdrawal of 500 on 14-01-2023
# When she prints her bank statement
# Then she would see
# date || credit || debit || balance
# 14/01/2023 || || 500.00 || 2500.00
# 13/01/2023 || 2000.00 || || 3000.00
# 10/01/2023 || 1000.00 || || 1000.00

end
account = Account.new
account.deposit_funds(100)
account.withdraw_funds(50)

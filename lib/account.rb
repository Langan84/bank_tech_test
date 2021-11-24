require_relative 'transaction'

class Account

  attr_reader :name, :balance, :transaction_history, :debit
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end

  def deposit_funds(credit)
    @balance += credit
    create_transaction(credit, 0)
  end

  def withdraw_funds(debit)
  raise error_message if debit > @balance
    @balance -= debit
    create_transaction(0, debit)
  end

  def print_statement
    if @transaction_history.empty?
      puts "No transactions to display."
    else
      puts "date || credit || debit || balance"
      @transaction_history.map do |transaction|
      puts " #{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
      end
    end
  end

  private

  def create_transaction(credit, debit)
    @transaction_history << Transaction.new(credit, debit, balance)
  end

  def error_message
     "You have insufficent funds to make this transaction."
  end

  # def insufficent_funds(debit)
  #    debit.to_i > @balance
  # end
end






# def statement_format
#   " #{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
# end


# Given a client makes a deposit of 1000 on 10-01-2023
# And a deposit of 2000 on 13-01-2023
# And a withdrawal of 500 on 14-01-2023
# When she prints her bank statement
# Then she would see
# date || credit || debit || balance
# 14/01/2023 || || 500.00 || 2500.00
# 13/01/2023 || 2000.00 || || 3000.00
# 10/01/2023 || 1000.00 || || 1000.00


account = Account.new
account.deposit_funds(100)
pp account.balance
account.withdraw_funds(50)
pp account.balance
account.withdraw_funds(150)
puts account.balance
account.print_statement

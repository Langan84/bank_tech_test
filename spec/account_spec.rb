require 'account'

describe "Account" do
  it 'is initialised with an opening default balance' do
    account = Account.new
    expect(account.balance).to be(0)
  end

  it 'can deposit funds to the account' do
    account = Account.new
    account.deposit_funds(100)
    expect(account.balance).to be(100)
  end

  it 'can withdrawn funds from the account' do
    account = Account.new
    account.deposit_funds(100)
    account.withdraw_funds(20)
    expect(account.balance).to be(80)
  end

  it 'can store an instance of a transaction' do
    account = Account.new
    account.deposit_funds(100)
    account.withdraw_funds(50)
    expect(account.transaction_history.length).to eq 2
    expect(account.transaction_history.last.balance).to eq 50
  end

end

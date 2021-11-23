require 'account'

describe "Account" do
  it 'is initialised with an opening balance' do
    account = Account.new
    expect(account.balance).to be(0)
  end

  it 'it can have funds deposited to the account' do
    account = Account.new
    account.deposit_funds(100)
    expect(account.balance).to be(100)
  end

  it 'it can have funds withdrawn from the account' do
    account = Account.new
    account.deposit_funds(100)
    account.withdraw_funds(20)
    expect(account.balance).to be(80)
  end

  it 'it can print the balance on the account' do
    account = Account.new
    account.deposit_funds(100)
    expect(account.print_balance).to eq("you have a balance of 100")
  end

end

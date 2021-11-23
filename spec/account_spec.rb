require 'account'

describe "Account" do
  it 'is initialised with an opening balance' do
    account = Account.new
    expect(account.balance).to be(100)
  end
end

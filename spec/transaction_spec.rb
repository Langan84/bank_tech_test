require 'transaction'

describe 'Transaction' do
  let(:transaction) { Transaction.new(100, 0, 100) }

  it 'records the date the transaction took place' do
    @time_now = Time.now.strftime('%d/%m/%Y')
    expect(transaction.date).to eq(@time_now)
  end

  it 'records the credit in the transaction' do
    expect(transaction.credit).to eq 100
  end

  it 'records the debit in the transaction' do
    expect(transaction.debit).to eq 0
  end

  it 'records the balance after the transaction' do
    expect(transaction.balance).to eq 100
  end
end

require 'transaction'

describe Transaction do

  it 'adds date to deposit history' do
    transaction = Transaction.new
    transaction.add_deposit_history(100, 100)
    expect(transaction.history).to eq([{Date: "#{Time.new.strftime("%d/%m/%Y")}", Credit: 100, Balance: 100}])
  end

  it 'adds date to withdraw history' do
    transaction = Transaction.new
    transaction.add_withdraw_history(100, 0)
    expect(transaction.history).to eq([{Date: "#{Time.new.strftime("%d/%m/%Y")}", Debit: 100, Balance: 0}])
  end

end

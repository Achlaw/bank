require 'bank'

describe bank do

  it 'should contain a balance' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end


end

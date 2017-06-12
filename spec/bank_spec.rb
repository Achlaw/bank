require 'bank'

describe Bank do

  it 'should contain a balance' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end


end

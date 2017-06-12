require 'bank'

describe Bank do

  it 'should contain a balance' do
    bank = Bank.new
    expect(bank.balance).to eq(0)
  end

  describe '#deposit' do
    it 'stores money in bank balance' do
      bank = Bank.new
      bank.deposit(100)
      expect(bank.balance).to eq(100)
    end
  end

  describe '#withdraw' do
    it 'removes money from bank balance' do
      bank = Bank.new
      bank.withdraw(50)
      expect(bank.balance).to eq(50)
    end
  end

end

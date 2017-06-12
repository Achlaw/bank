require 'bank'

describe Bank do

  let(:bank) {described_class.new}

  it 'should contain a balance' do
    expect(bank.balance).to eq(0)
  end

  describe '#deposit' do
    it 'stores money in bank balance' do
      bank.deposit(100)
      expect(bank.balance).to eq(100)
    end
  end

  describe '#withdraw' do
    it 'removes money from bank balance' do
      bank.deposit(100)
      bank.withdraw(50)
      expect(bank.balance).to eq(50)
    end
  end

end

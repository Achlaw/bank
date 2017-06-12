describe Transaction do
  
  it 'adds date to deposit history' do
    transaction = Transaction.new
    transaction.add_deposit_history(100, 100)
    expect(transaction.log).to eq([{Date: '13/06/2017', Credit: 100, Balace: 100}])
  end

end
require_relative 'transaction'

class Bank

  attr_reader :balance, :transaction

  def initialize(balance =0, transaction = Transaction.new)
    @balance = 0
    @transaction = transaction
  end

  def deposit(amount)
    @balance += amount
    @transaction.add_deposit_history(amount, @balance)
  end

  def withdraw(amount)
    @balance -= amount
  end

end

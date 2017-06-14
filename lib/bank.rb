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
    @transaction.add_withdraw_history(amount, @balance)
  end

  def print
    puts "|    Date    |  Credit  |  Debit  |  Balance  |\n"
    @transaction.history.each do |history|
      puts "| #{history[:Date]} |    #{history[:Credit]}   |    #{history[:Debit]}   |   #{history[:Balance]}   |\n"
    end
  end

end

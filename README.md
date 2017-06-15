# Bank Tech Test

## User Stories

```
As a customer
So that I can save money
I can make a deposit of 1000 to my bank

As a customer
So that I will have money
I can make a withdrawal of 500 from my bank

As a customer
So that I can know how much money I have
I can check my current balance

As a customer
So that I can keep track of my savings
I can print out a bank statement
```

## How to use in IRB
```
$ irb
2.4.0 :001 > require './lib/bank'
 => true
2.4.0 :002 > bank = Bank.new
 => #<Bank:0x007fa79f1d5f08 @balance=0, @transaction=#<Transaction:0x007fa79f1d5ee0 @history=[]>>
2.4.0 :003 > bank.deposit(500)
 => [{:Date=>"15/06/2017", :Credit=>500, :Balance=>500}]
2.4.0 :004 > bank.withdraw(200)
 => [{:Date=>"15/06/2017", :Credit=>500, :Balance=>500}, {:Date=>"15/06/2017", :Debit=>200, :Balance=>300}]
2.4.0 :005 > bank.print
|    Date    |  Credit  |  Debit  |  Balance  |
| 15/06/2017 |    500   |       |   500   |
| 15/06/2017 |       |    200   |   300   |
 => [{:Date=>"15/06/2017", :Credit=>500, :Balance=>500}, {:Date=>"15/06/2017", :Debit=>200, :Balance=>300}]
2.4.0 :006 > quit
```
## How to run tests
```
$ rspec

Bank
  should contain a balance
  #deposit
    stores money in bank balance
  #withdraw
    removes money from bank balance
  #print
    prints a deposit bank statement
  #print
    prints a withdraw bank statement

Transaction
  adds date to deposit history
  adds date to withdraw history

Finished in 0.00449 seconds
```

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
```

## How to use in IRB
```
Alexs-MacBook-Pro:bank alex$ irb
2.4.0 :001 > require './lib/bank'
 => true
2.4.0 :002 > bank = Bank.new
 => #<Bank:0x007f8554089f40 @balance=0>
2.4.0 :003 > bank.balance
 => 0
2.4.0 :004 > bank.deposit(1000)
 => 1000
2.4.0 :005 > bank.balance
 => 1000
2.4.0 :006 > bank.withdraw(500)
 => 500
2.4.0 :007 > bank.balance
 => 500
2.4.0 :008 > quit
```

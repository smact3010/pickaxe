class Account
  attr_accessor :balance      # setter and getter
  def initialize(balance)     # like 1 arg constructor
    @balance = balance
  end
end

class Transaction

  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

private

  def debit(account, amount)
    account.balance -= amount
  end
  def credit(account, amount)
    account.balance += amount  
  end

public

  #...
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end
  #...
end

savings   = Account.new(100)
checking  = Account.new(200)
puts "New account \'savings\' balance: #{savings.balance}"
puts "New account \'checking\' balance: #{checking.balance}"

trans = Transaction.new(checking, savings)
trans.transfer(50)

puts savings.balance
puts checking.balance
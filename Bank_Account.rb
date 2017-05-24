class BankAccount
  @@interest_rate = 1.007.to_f
  @@accounts = []



attr_accessor :balance


  def initialize
    @balance = 0
  end

  def self.create
    name = BankAccount.new
    @@accounts << name
    name
  end

  def self.total_funds
    sum = 0
    @@accounts.each do |account|
      sum += account.balance
    end
    sum
  end

  def self.interest_time
    @@accounts.map do |account|
      account.balance *=  @@interest_rate
    end
    account.balance
  end

  def deposit(money)
    @balance += money
  end

  def withdraw(money)
    @balance -= money
  end


end



emily = BankAccount.create
jenny = BankAccount.create
sam = BankAccount.create

#
puts emily.deposit(400)
puts sam.deposit(25)
puts jenny.deposit(390)

# puts emily.withdraw(60)


puts BankAccount.total_funds

puts BankAccount.interest_time

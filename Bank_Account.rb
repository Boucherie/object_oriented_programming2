class BankAccount
  @@interest_rate = 0.007
  @@accounts = []

attr_accessor :balance

  def initialize
    @balance = 0
  end

  def deposit(money)
    @balance += money
  end



end



emily = BankAccount.new

puts emily.deposit(400)

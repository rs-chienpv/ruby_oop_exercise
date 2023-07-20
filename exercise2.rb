class BankAccount
  def initialize(account_number, name, balance)
    @account_number = account_number
    @name = name
    @balance = balance
  end

  def deposit(money)
    p "Your current balance is: #{(@balance + money).to_i}"
    @balance += money
  end

  def withdrawal(money)
    return p "Your account balance is not enough" if @balance < money
    p "Your current balance is: #{@balance - (money + money * 0.05).to_i}"
    @balance -= (money + money * 0.05)
  end

  def display
    p "Account number: #{@account_number}"
    p "Account name: #{@name}"
    p "Account balance: #{@balance.to_i}"
  end
end

account = BankAccount.new(2_178_514_584, 'Albert', 2700)
account.withdrawal(300)
account.deposit(200)
account.display

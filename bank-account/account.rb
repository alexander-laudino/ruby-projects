class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  def display_balance(pin_number)
    pin_number == pin ? "Balance: $#{@balance}" : pin_error
  end

  def withdraw(pin_number, amount)
    pin_number == pin ? "Withdrew #{amount}. New balance: $#{@balance}" : pin_error
  end

  private
  def pin
    @pin = 1234
  end

  private
  def pin_error
    "Access denied: incorrect PIN."
  end

end

checking_account = Account.new("check-ing", 200_000)
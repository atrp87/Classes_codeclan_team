class BankAccount

  attr_accessor :holder_name, :balance, :type


  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

  def pay_in(amount)
    @balance += amount
  end

  def pay_out()
    @balance -= 50 if @type == "Business"
    @balance -= 10 if @type == "personal"
  end

end


# [Task:] Write getters for the balance and the type of account, with tests first.

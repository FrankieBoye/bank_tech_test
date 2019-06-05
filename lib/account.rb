# frozen_string_literal: true

# main class
class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def credit(credit_amount)
    @balance += credit_amount
  end

def debit(debit_amount)
  @balance -= debit_amount
end

end

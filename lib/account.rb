# frozen_string_literal: true

# main class
class Account
  attr_reader :balance, :transaction, :date

  def initialize
    @balance = 0
    @date = Time.now.strftime('%d/%m/%y')
    @transaction = []
  end

  def credit(credit_amount)
    @balance += credit_amount
    @transaction << "#{@date} || #{credit_amount} || || #{@balance}"
  end

  def debit(debit_amount)
    @balance -= debit_amount
    @transaction << "#{@date} || || #{debit_amount} || #{@balance}"
  end
end

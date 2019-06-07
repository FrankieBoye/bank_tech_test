# frozen_string_literal: true

require_relative 'History'
# main class
class Account
  attr_reader :balance, :history, :date

  def initialize(history = History.new)
    @balance = 0
    @date = Time.now.strftime('%d/%m/%y')
    @history = history
  end

  def credit(credit_amount)
    @balance += credit_amount
    @history.update("#{@date} || #{credit_amount} || || #{@balance}")
  end

  def debit(debit_amount)
    @balance -= debit_amount
    @history.update("#{@date} || || #{debit_amount} || #{@balance}")
  end
end

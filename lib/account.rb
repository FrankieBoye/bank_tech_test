# frozen_string_literal: true

require_relative 'Transaction'
# main class
class Account
  attr_reader :balance, :history, :date

  def initialize
    @balance = 0
    @date = Time.now.strftime('%d/%m/%y')
    @transaction_history = []
  end

  def credit(credit)
    @balance += credit
    transaction = Transaction.new(date, credit, 0, balance)
    @transaction_history << transaction
  end

  def debit(debit)
    @balance -= debit
    transaction = Transaction.new(date, 0, debit, balance)
    @transaction_history << transaction
  end

end

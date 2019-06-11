# frozen_string_literal: true

require_relative 'Transaction'
require_relative 'Print'
# main class
class Account
  attr_reader :balance, :date

  def initialize
    @balance = 0
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

  def print(statement = Print)
    statement.new(@transaction_history).print_statement
  end
end

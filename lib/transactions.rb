# frozen_string_literal: true

# transactions class
class Transactions
  attr_reader :history

  def initialize
    @history = []
  end
end

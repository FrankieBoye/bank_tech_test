# frozen_string_literal: true

# history class
class History
  attr_reader :history

  def initialize
    @history = []
  end

  def update(transaction)
    @history << transaction
  end
end

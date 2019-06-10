class Print

  def initialize(transaction_history)
    @transaction_history = transaction_history
  end

  def print_statement
    puts 'date || credit || debit || balance'
    @transaction_history.reverse_each do |a|
      puts "#{a.date} || #{a.credit} || #{a.debit} || #{a.balance}"
  end
  end
end

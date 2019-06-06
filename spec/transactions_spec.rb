# frozen_string_literal: true

require 'transactions'

describe Transactions do
  it 'must store transaction history' do
    expect(subject.history).to eq []
  end
end

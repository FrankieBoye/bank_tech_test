# frozen_string_literal: true

require 'account'

describe Account do
  it 'must store a balance' do
    expect(subject.balance).to eq 0
  end

  describe '#credit' do
    it { is_expected.to respond_to(:credit).with(1).argument }
    it 'allows account to be credited' do
      expect { subject.credit 1000 }.to change { subject.balance }.by 1000
    end
  end
end

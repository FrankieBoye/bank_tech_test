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

    it 'pushs the credit transaction into array' do
      subject.credit 1000
      date = Time.now.strftime('%d/%m/%y')
      expect(subject.transaction).to eq ["#{date} || 1000 || || 1000"]
    end
  end

  describe '#debit' do
    it { is_expected.to respond_to(:debit).with(1).argument }
    it 'allows account to be debited' do
      expect { subject.debit 100 }.to change { subject.balance }.by(-100)
    end

    it 'pushs the debit transaction into array' do
      subject.debit 100
      date = Time.now.strftime('%d/%m/%y')
      expect(subject.transaction).to eq ["#{date} || || 100 || -100"]
    end
  end
end

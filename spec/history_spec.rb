# frozen_string_literal: true

require 'history'

describe History do
  describe '#update' do
    it 'pushes argument to history array' do
      subject.update('transaction')
      expect(subject.history).to eq ['transaction']
    end
  end
end

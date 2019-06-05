require 'account'

describe Account do

  it 'must store a balance' do
    expect(subject.balance).to eq 0
  end

end

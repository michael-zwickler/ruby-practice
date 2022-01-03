require 'piggy_bank'

describe PiggyBank do
  it 'can add coins to the bank' do
    expect(subject).to respond_to(:add_coins)
  end
  it 'adds 5 coins to the bank and returns 5' do
    expect(subject.add_coins(5)).to eq(5)
  end
  it 'clings when shaked and coins are in' do
    subject.add_coins(5)
    expect(subject.shake).to eq('Cling!')
  end
  it 'stays silent if empty' do
    expect(subject.shake).to eq('...')
  end
  it 'returns balance when you call break' do
    subject.add_coins(5)
    expect(subject.break).to eq(5)
  end

end

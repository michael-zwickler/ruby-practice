require './greeter.rb'

describe 'Greeter' do
  it 'greets Rico' do
    expect(greet('Rico')).to eq 'Hallo Rico!'
  end
end

describe 'Greeter' do
  it 'greets Michael' do
    name = 'Michael'
    result = greet(name)
    expect(result).to eq 'Hallo Michael!'
  end
end

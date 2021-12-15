require 'BankAccount'

RSpec.describe BankAccount do

  describe '#deposit' do
    it 'returns the confirmation of the deposited value' do
      expect(subject.deposit(100)).to eq(100)           
    end
  end

  describe '#withdraw' do
    it 'returns the requested money' do
      expect(subject.withdraw(100)).to eq(100)
    end
  end

  describe '#view_balance' do
    it 'shows the account balance' do
      subject.deposit(100)
      expect(subject.view_balance).to eq(100)
    end
  end

end
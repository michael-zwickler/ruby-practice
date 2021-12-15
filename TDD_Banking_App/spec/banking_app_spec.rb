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
    context 'new bank account' do
      it 'shows the account balance 0' do
        expect(subject.view_balance).to eq(0)
      end
    end
    context 'deposit money to an empty account first, and then view balance' do
      it 'shows the account balance 100' do
        subject.deposit(100)
        expect(subject.view_balance).to eq(100)
      end
    end
    context 'withdraw money from an account, and then view balance' do
      it 'shows the account balance 50' do
        subject.deposit(100)
        subject.withdraw(50)
        expect(subject.view_balance).to eq(50)
      end
    end
  end

end
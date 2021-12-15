require_relative '../lib/NameMemory.rb'
RSpec.describe NameMemory do
  describe '#store_name' do
    it 'returns a confirmation with the stored name' do
      expect(subject.store_name('Michael')).to eq('Michael stored in Memory!')
    end
    it 'returns a confirmation with the stored name' do
      expect(subject.store_name('Boris')).to eq('Boris stored in Memory!')
    end
  end
end 
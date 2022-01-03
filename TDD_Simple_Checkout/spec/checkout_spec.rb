require 'checkout'

RSpec.describe Checkout do

  describe '#scan' do
    it 'scans an item and adds to the basket' do 
      item = Item.new('Banana', 5)
      expect(subject.scan(item)).to eq([item])
    end
  end

  describe '#show_total' do
    it 'shows the sum of the shopping basket' do
      subject.scan(Item.new('Banana', 5))
      subject.scan(Item.new('Apple', 3.59))
      expect(subject.show_total()).to eq ('£8.59')
    end
  end

end
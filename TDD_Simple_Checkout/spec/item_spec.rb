require 'item'

RSpec.describe Item do

  describe '#view_price' do
    it 'returns the price of an item formatted £x.xx' do
      item = Item.new('Banana', 5.50)
      expect(item.view_price).to eq('£5.50')
    end

    it 'returns the price of an item formatted £x.xx' do
      item = Item.new('Banana', 20)
      expect(item.view_price).to eq('£20.00')
    end

  end
  
  describe '#price' do
    it 'returns the price of an item' do
      item = Item.new('Banana', 5.50)
      expect(item.price).to eq(5.50)
    end
  end

end

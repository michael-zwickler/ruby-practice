require 'notes'

RSpec.describe Notes do

  describe '#add_note' do
    it 'it adds a note, and returns all notes currently stored' do
      expect (subject.add_note('Testtitel', 'Testbody')).to eq({Testtitel: 'Body'})
    end
  end

end

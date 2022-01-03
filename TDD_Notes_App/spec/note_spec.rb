require 'notes'

RSpec.describe Notes do

  describe '#add_note' do
    it 'it adds a note, and returns all notes currently stored' do
      subject.add_note('Titel1', 'Body1')
      expect(subject.add_note('Titel2', 'Body2')).to eq({Titel1: 'Body1', Titel2: 'Body2'})
    end
  end

  describe '#list_titles' do
    it 'it returns a list of all titles stored' do
      subject.add_note('Titel1', 'Body1')
      subject.add_note('Titel2', 'Body2')
      subject.add_note('Titel3', 'Body3')
      expect(subject.list_titles).to eq([:Titel1, :Titel2, :Titel3])
    end
  end

end

require 'secret_diary'

RSpec.describe SecretDiary do

  context 'when fresh diary' do
    it {is_expected.to be_locked}
    it '#get_entries returns an empty array' do
      subject.unlock!()
      expect(subject.get_entries()).to be_empty
    end
  end

  context 'when diary is locked' do
    it '#unlock changes locked? to false' do 
      expect { subject.unlock!() }.to change { subject.locked?() }.from(true).to(false)
    end
    it '#add_entry throws an error' do 
      expect { subject.add_entry(" ") }.to raise_error('Diary is locked!')
    end
    it '#get_entries throws an error' do 
      expect { subject.get_entries() }.to raise_error('Diary is locked!') 
    end
  end

  context 'when diary is unlocked' do
    it '#lock changes locked? to true' do
      subject.unlock!()
      expect { subject.lock!() }.to change { subject.locked?() }.from(false).to(true)
    end
    it '#add_entry stores an entry into the diary' do
      new_entry = 'I am a new entry'
      subject.unlock!()
      subject.add_entry(new_entry)
      expect(subject.get_entries()).to include(new_entry)
    end
  end
end
class SecretDiary

  def initialize()
    @is_locked = true
    @entries = []
  end

  def locked?
    return @is_locked
  end

  def add_entry(entry)
    access_check()
    @entries << entry
  end

  def get_entries()
    access_check()
    return @entries
  end

  def lock!()
    @is_locked = true
  end

  def unlock!()
    @is_locked = false
  end

  private 

  def access_check()
    raise 'Diary is locked!' if locked?()  
  end

end

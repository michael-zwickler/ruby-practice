class Notes

  def initialize()
    @notes = {}
  end

  def add_note(title, body)
    @notes[title.to_sym] = body 
    return @notes 
  end

end
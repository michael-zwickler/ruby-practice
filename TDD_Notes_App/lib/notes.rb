class Notes

  def initialize()
    @notes = {}
  end

  def add_note(title, body)
    @notes[title.to_sym] = body 
    return @notes 
  end

  def list_titles()
    titles = []
    @notes.each_key { |title| titles << title }
    return titles
  end
end
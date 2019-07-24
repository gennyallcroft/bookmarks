class TextNote
  def create(note)
    @note = note
    "Note has been created"
  end
  def add_tag(tag)
    @tag = tag
  end
  def get_tag
    @tag
  end
end

class Notebook
  def initialize
    @notebook = []
  end
  def add_note(note)
    @notebook << note
  end
  def search(tag)
    @notebook.each do |note|
      print note if note.get_tag == tag
    end
  end
end

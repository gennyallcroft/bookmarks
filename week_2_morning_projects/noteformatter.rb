class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

end

class NoteFormatter

  def initialize(note = Note.new(title, body)
    @note = note
  end

  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end

describe NoteFormatter do
  note_double = double :note, :title, :body
  it 'formats the title for the note' do
  end
end

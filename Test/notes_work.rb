class NotesWork

  attr_accessor :notes

  def initialize(notes)
    @notes = notes
  end

  def find_by_tags(tags_to_explore)
    notes_to_return = []
    @notes.each do |note|
      tags_to_explore.each do |tag|
        notes_to_return << note if note.tags.include? tag
      end
    end
    notes_to_return
  end

  def find_by_dates(date1, date2)
    notes_to_return = []
    @notes.each do |note|
      notes_to_return << note if note.date > date1 && note.date < date2
    end
    notes_to_return
  end

  def find_notes(some_text)
    notes_to_return = []
    @notes.each do |note|
      if note.class.equal? Text
        notes_to_return << note if note.text.include? some_text
      elsif note.class.equal? List
        note.list.each do |string|
          notes_to_return << note if string.include? some_text
        end
      elsif note.class.equal? Picture
        note.picture.each do |_, value|
          notes_to_return << note if value.include? some_text
        end
      end
    end
    notes_to_return
  end

  def sort_by_last_edited
    @notes.sort_by { |note| [note.last_edited] }
  end

  def sort_by_importance
    @notes.sort_by { |note| [note.importance] }
  end

  def sort_by_title
    @notes.sort_by { |note| [note.title] }
  end

end

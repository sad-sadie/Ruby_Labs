require 'minitest/autorun'
require './note'
require './text'
require './picture'
require './list'
require './notes_work'
require 'date'

class NoteTest < Minitest::Test

  def setup
    @note1 = Text.new("I need to go for a walk", "to do", Date.new(2022, 3, 3), %w[car task], 4, Date.new(2022, 6, 3))
    @note2 = List.new(["some new note", "make sandwich", "do some work"], "must be done", Date.new(2022, 8, 2), %w[car main job], 3, Date.new(2022, 2, 6))
    @note3 = Picture.new({"image1" => "Visiting my friend", "image2" => "find new job"}, "just a title", Date.new(2022, 6, 12), %w[row task work], 7, Date.new(2022, 5, 6))

    notes = [@note1, @note2, @note3]

    @notes_work = NotesWork.new(notes)
  end


  def test_find_by_tags
    assert_equal([@note3], @notes_work.find_by_tags(%w[low row bro]))
  end

  def test_find_by_dates
    assert_equal([@note1, @note3], @notes_work.find_by_dates(Date.new(2022, 3, 1), Date.new(2022, 6, 13)))
  end

  def test_find_notes
    assert_equal([@note1], @notes_work.find_notes("to go for"))
  end

  def test_sort_by_last_edited
    assert_equal([@note2, @note3, @note1], @notes_work.sort_by_last_edited)
  end

  def test_sort_by_importance
    assert_equal([@note2, @note1, @note3], @notes_work.sort_by_importance)
  end

  def test_sort_by_title
    assert_equal([@note3, @note2, @note1], @notes_work.sort_by_title)
  end

end

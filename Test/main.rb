=begin
require './note'
require './text'
require './picture'
require './list'
require './notes_work'
require 'date'

text1 = Text.new("I need to go for a walk", "to do", Date.new(2022, 3, 3), %w[car task], 4, Date.new(2022, 6, 3))
text2 = List.new(["some new note", "make sandwich", "do some work"], "must be done", Date.new(2022, 8, 2), %w[car main job], 3, Date.new(2022, 2, 6))
text3 = Picture.new({"image1" => "Visiting my friend", "image2" => "find new job"}, "just a title", Date.new(2022, 6, 12), %w[row task work], 7, Date.new(2022, 5, 6))

notes = [text1, text2, text3]

notes_work = NotesWork.new(notes)
(notes_work.find_by_tags %w[low row bro]).each { |note| puts note.title }
puts "======================="
(notes_work.find_by_dates(Date.new(2022, 3, 1), Date.new(2022, 6, 13))).each { |note| puts note.title }
puts "======================="
(notes_work.find_notes"new").each { |note| puts note.title }
puts "======================="
notes.each { |note| puts note.title }
puts "======================="
notes_work.sort_by_last_edited.each { |note| puts note.title }
puts "======================="
notes_work.sort_by_importance.each { |note| puts note.title }
puts "======================="
notes_work.sort_by_title.each { |note| puts note.title }



=end

class Note

  attr_accessor :title, :date, :tags, :importance, :last_edited

  def initialize(title, date, tags, importance, last_edited)
    @title = title
    @date = date
    @tags = tags
    @importance = importance
    @last_edited = last_edited
  end

end

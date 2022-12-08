class Text < Note

  attr_accessor :text

  def initialize(text, title, date, tags, importance, last_edited)
    @text = text
    super(title, date, tags, importance, last_edited)
  end

end

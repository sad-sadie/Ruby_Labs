class Picture < Note

  attr_accessor :picture

  def initialize(picture, title, date, tags, importance, last_edited)
    @picture = picture
    super(title, date, tags, importance, last_edited)
  end

end

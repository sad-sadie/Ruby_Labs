class List < Note

  attr_accessor :list

  def initialize(list, title, date, tags, importance, last_edited)
    @list = list
    super(title, date, tags, importance, last_edited)
  end

end

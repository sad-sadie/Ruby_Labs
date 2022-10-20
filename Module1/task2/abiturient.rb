class Abiturient

  attr_accessor :id, :last_name, :first_name, :middle_name, :address, :phone_number, :grades

  def initialize(id, last_name, first_name, middle_name, address, phone_number, grades)
    @id = id
    @last_name = last_name
    @first_name = first_name
    @middle_name = middle_name
    @address = address
    @phone_number = phone_number
    @grades = grades
  end

=begin
  def initialize(last_name, first_name, middle_name, address, phone_number, grades)
    @id = Time.now.to_i, @last_name = last_name, @first_name = first_name, @middle_name = middle_name
    @address = address, @phone_number = phone_number, @grades = grades
  end
=end

  def to_s
    "[id = #{@id}, last_name = #{@last_name}, first_name = #{@first_name}, middle_name = #{@middle_name}, address = #{@address}, phone_number = #{@phone_number}, grades = #{@grades}]"
  end


end

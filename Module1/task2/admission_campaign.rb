require 'set'

class AdmissionCampaign

  def initialize(abiturients)
    @abiturients = abiturients
  end

  def add_abiturient(abiturient)
    @abiturients.push(abiturient)
  end

  def get_abiturients_with_poor_grades
    abiturients_to_return = [].to_set
    @abiturients.each do |abiturient|
      abiturient.grades.each do |_, grade|
        abiturients_to_return.add(abiturient) if grade < 160
      end
    end
    abiturients_to_return
  end

  def get_abiturients_with_sum_of_grades_more_than_given(given_sum)
    abiturients_to_return = [].to_set

    @abiturients.each do |abiturient|
      sum = 0
      abiturient.grades.each do |_, grade|
        sum += grade
      end
      abiturients_to_return.add(abiturient) if sum > given_sum
    end
    abiturients_to_return
  end

  def get_abiturients_with_semi_passing_sum_of_grades
    get_abiturients_with_sum_of_grades_more_than_given(510)
  end

  def get_n_best_students(n)
    abiturients_grades = Hash.new(0)
    @abiturients.each do |abiturient|
      abiturient.grades.each do |_, grade|
        abiturients_grades[abiturient] += grade
      end
    end

    abiturients_grades = abiturients_grades.sort_by(&:last)

    while abiturients_grades.size > n
      abiturients_grades.shift
    end

    abiturients_grades
  end


  def to_s
    string = ""
    @abiturients.each { |p| string += + p.to_s + " "}
    str
  end

end

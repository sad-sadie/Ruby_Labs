require 'minitest/autorun'
require './task2/admission_campaign'
require './task2/abiturient'

class Task2Test < Minitest::Test

  @@grades1 = {:Maths => 192, :Ukrainian => 200, :English => 185}
  @@grades2 = {:Maths => 159, :Ukrainian => 163, :English => 143}
  @@grades3 = {:Maths => 200, :Ukrainian => 182, :English => 180}
  @@grades4 = {:Maths => 186, :Ukrainian => 190, :Physics => 158}
  @@grades5 = {:Maths => 150, :Ukrainian => 146, :Physics => 130}

  @@abiturient1 = Abiturient.new(1, :Surkov, :Vladislav, :Kyrylovich,
                               "77 8th St.Butler, PA 16001", "972-322-6096", @@grades1)
  @@abiturient2 = Abiturient.new(2, :Stepaniuk,:Volodymyr, :Borisovich,
                               "7237 Green Hill Street Hagerstown, MD 21740", "228-265-4572", @@grades2)
  @@abiturient3 = Abiturient.new(3, :Chabaniuk, :Oleksandr, :Romanovich,
                               "59 Creekside St. Owosso, MI 48867", "570-787-2953", @@grades3)
  @@abiturient4 = Abiturient.new(4, :Havryliuk, :Dmytro, :Illich,
                               "14 Cherry Road Westlake, OH 44145", "904-541-1847", @@grades4)
  @@abiturient5 = Abiturient.new(5, :Shevchenko, :Taras, :Grigorovich,
                               "82 Tunnel Court Bear, DE 19701", "806-781-4928", @@grades5)

  @@abiturients = [@@abiturient1, @@abiturient2, @@abiturient3, @@abiturient4, @@abiturient5]
  @@admission_campaign = AdmissionCampaign.new(@@abiturients)

  def test_get_abiturients_with_poor_grades
    set = [].to_set
    set.add(@@abiturient2)
    set.add(@@abiturient4)
    set.add(@@abiturient5)
    assert_equal(set, @@admission_campaign.get_abiturients_with_poor_grades)
  end

  def test_get_abiturients_with_sum_of_grades_more_than_given
    set = [].to_set
    set.add(@@abiturient1)
    set.add(@@abiturient3)
    assert_equal(set, @@admission_campaign.get_abiturients_with_sum_of_grades_more_than_given(560))
  end

  def test_get_abiturients_with_semi_passing_sum_of_grades
    set = [].to_set
    set.add(@@abiturient1)
    set.add(@@abiturient3)
    set.add(@@abiturient4)
    assert_equal(set, @@admission_campaign.get_abiturients_with_semi_passing_sum_of_grades)
  end

  def test_get_n_best_students
    assert_output(stdout = "[id = 4, last_name = Havryliuk, first_name = Dmytro, middle_name = Illich, address = 14 Cherry Road Westlake, OH 44145, phone_number = 904-541-1847, grades = {:Maths=>186, :Ukrainian=>190, :Physics=>158}]\n534\n[id = 3, last_name = Chabaniuk, first_name = Oleksandr, middle_name = Romanovich, address = 59 Creekside St. Owosso, MI 48867, phone_number = 570-787-2953, grades = {:Maths=>200, :Ukrainian=>182, :English=>180}]\n562\n[id = 1, last_name = Surkov, first_name = Vladislav, middle_name = Kyrylovich, address = 77 8th St.Butler, PA 16001, phone_number = 972-322-6096, grades = {:Maths=>192, :Ukrainian=>200, :English=>185}]\n577\n"){
      puts @@admission_campaign.get_n_best_students(3)
    }
  end

end

# frozen_string_literal: true

require 'minitest/autorun'
require './task2'

class TestTask2 < Minitest::Test
  def test_task2_case1
    assert_equal(Vector[0.5, 0.25, 0, -0.25],
                 task2(Matrix[[2, 6, 6, 6], [6, 2, 6, 6], [6, 6, 2, 6], [6, 6, 6, 2]], Vector[1, 2, 3, 4]))
  end

  def test_task2_case2
    assert_equal(Vector[11.0 / 28, 1.0 / 7, -3.0 / 28],
                 task2(Matrix[[2, 6, 6], [6, 2, 6], [6, 6, 2]], Vector[1, 2, 3]))
  end

  def test_task2_case3
    assert_equal(Vector[47.0 / 64, 31.0 / 64, 15.0 / 64, -1.0 / 64, -17.0 / 64, -33.0 / 64],
                 task2(
                   Matrix[[2, 6, 6, 6, 6, 6], [6, 2, 6, 6, 6, 6], [6, 6, 2, 6, 6, 6], [6, 6, 6, 2, 6, 6],
                          [6, 6, 6, 6, 2, 6], [6, 6, 6, 6, 6, 2]], Vector[1, 2, 3, 4, 5, 6]
                 ))
  end
end

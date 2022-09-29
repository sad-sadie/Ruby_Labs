# frozen_string_literal: true

require 'minitest/autorun'
require './task1'

class TestTask1 < Minitest::Test
  def test_task1_case1
    assert_equal(Matrix[[58, 79, 47], [56, 54, 43], [60, 75, 48]],
                 multiply([[5, 3, 4], [7, 2, 1], [6, 3, 3]], [[7, 4, 5], [1, 9, 2], [5, 8, 4]]))
  end

  def test_task1_case2
    assert_equal(Matrix[[48, 102, 77, 122], [60, 100, 96, 152], [47, 73, 55, 95], [37, 98, 73, 112]],
                 multiply([[4, 4, 7, 3], [4, 8, 4, 8], [2, 7, 4, 3], [5, 1, 7, 2]],
                          [[2, 7, 5, 9], [4, 3, 1, 4], [3, 8, 5, 7], [1, 2, 6, 7]]))
  end
end

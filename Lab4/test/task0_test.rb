# frozen_string_literal: true

require 'minitest/autorun'
require './task0'

class TestTask1 < Minitest::Test
  def test_task0_case1
    assert_equal([8, 5, 6], task0([5, 6, 8]))
  end

  def test_task0_case2
    assert_equal([2, 5], task0([5, 2]))
  end

  def test_task0_case3
    assert_equal([2, 6, 4, 8], task0([6, 4, 8, 2]))
  end

  def test_task0_case4
    assert_equal([8, 6, 3, 6, 2, 8, 3, 2], task0([6, 3, 6, 2, 8, 3, 2, 8]))
  end

  def test_task0_case5
    assert_equal([4, 6, 3, 7, 5, 2, 1, 8, 3, 0], task0([6, 3, 7, 5, 2, 1, 8, 3, 0, 4]))
  end
end

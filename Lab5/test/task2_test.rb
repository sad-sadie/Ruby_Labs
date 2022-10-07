# frozen_string_literal: true

require 'minitest/autorun'
require './task2'
class Task1Test < Minitest::Test
  def test_task1_case0
    assert_equal(0.47580197353966036,
                 task2(1, 23))
  end

  def test_task1_case1
    assert_equal(1.0140396919247636,
                 task2(2, 40))
  end

  def test_task1_case2
    assert_equal(0.38682227139505565,
                 task2(1, 1))
  end

  def test_task1_case3
    assert_equal(0.9269349825741209,
                 task2(1.5, 100))
  end
end

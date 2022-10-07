# frozen_string_literal: true

require 'minitest/autorun'
require './task1'
class Task1Test < Minitest::Test
  def test_task1_case0
    assert_equal(2.5,
                 integrate_rectangular(0.0, 2.0, 2) { |x| x**2 })
  end

  def test_task1_case1
    assert_equal(3.0,
                 integrate_trapezoidal(0.0, 2.0, 2) { |x| x**2 })
  end

  def test_task1_case2
    assert_equal(0.5,
                 integrate_rectangular(-1.0, 1.0, 2) { |x| x**2 })
  end

  def test_task1_case3
    assert_equal(1.0,
                 integrate_trapezoidal(-1.0, 1.0, 2) { |x| x**2 })
  end
end

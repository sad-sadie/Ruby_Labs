require 'minitest/autorun'
require './task1/function'

class Task1Test < Minitest::Test
  def test_case1
    assert_equal("x: 0.0 f: 0.333\nx: 2.0 f: 2.0\nx: 4.0 f: 4.0\nx: 6.0 f: 6.0\nx: 8.0 f: 8.0\nx: 10.0 f: 10.0\n",
                 solve(1, 2, 3, 0, 10, 2))
  end

  def test_case2
    assert_equal("x: 3.0 f: -16.0\nx: 6.0 f: -34.0\nx: 9.0 f: -52.0\nx: 12.0 f: -70.0\n",
                 solve(6, 3, -2, 3, 12, 3))
  end

  def test_case3
    assert_equal("x: -6.0 f: -3.0\nx: -4.0 f: -2.0\nx: -2.0 f: -1.0\nx: 0.0 f: -1.0\nx: 2.0 f: 1.0\nx: 4.0 f: 2.0\nx: 6.0 f: 3.0\n",
                 solve(-2, 2, 2, -6, 6, 2))
  end
end

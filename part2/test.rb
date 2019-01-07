require './src.rb'
require 'minitest/autorun'

# test class
class TestFunction < Minitest::Test
  def test_func_e4
    x = 0.0001
    answer = 0.5403
    assert_in_delta(answer, count(x), 0.0001)
  end

  def test_func_e6
    x = 0.000001
    answer = 0.540303
    assert_in_delta(answer, count(x), 0.000001)
  end
end

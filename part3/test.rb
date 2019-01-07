require_relative 'maxim'
require 'minitest/autorun'

# Testing class
class Tester < Minitest::Test
  def test_lambda
    res = maxim(
        0.5,
        1,
        ->(x) { Math.sin(x) / x },
        ->(x) { Math.tan(x + 1) / (x + 1) }
        )
    assert_in_delta(res, 798.9039723309172, 10**-3)
  end

  def test_proc
    res = maxim(0.5, 1) do |x|
      ((Math.sin(x) / x) - (Math.tan(x + 1) / (x + 1))).abs
    end
    assert_in_delta(res, 798.9039723309172, 10**-3)
  end
end

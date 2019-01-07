def fact(num)
  f = 1
  unless num.zero?
    1.upto(num) do |i|
      f *= i
    end
  end
  f
end

def sum(eps)
  s = 1
  k = 1.0
  m = ((-1.0)**k) / (fact 2.0 * k)
  while m.abs > eps
    s += m
    k += 1
    m = ((-1.0)**k) / (fact 2.0 * k)
  end
  s
end

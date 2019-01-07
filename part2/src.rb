require '../part1/src.rb'
def enumerator
  Enumerator.new do |i|
    p = 0.0
    s = 1.0
    (1..Float::INFINITY).lazy.each do |counter|
      i.yield s, p
      p = s
      s += ((-1.0)**counter) / (fact 2.0 * counter)
    end
  end
end

def count(eps)
  c = enumerator.take_while { |s, p| (p - s).abs >= eps }
  c.last[0]
end

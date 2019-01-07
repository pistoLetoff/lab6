STEP = 0.01

def maxim(start_point, end_point, func_f = nil, func_g = nil)
  cur_point = start_point
  max_delta = -1
  while cur_point < end_point
    if block_given?
      delta = yield(cur_point)
    else
      delta = (func_f.call(cur_point) - func_g.call(cur_point)).abs
    end
    max_delta = delta if delta > max_delta
    cur_point += STEP
  end
  max_delta
end
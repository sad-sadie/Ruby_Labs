def func1(a, c, x)
  -a * x - c
end

def func2(a, c, x)
  (a - x) / c
end

def func3(a, b, c, x)
  b * x / (c - a)
end

def func(a, b, c, x)
  f = if c.negative? && x != 0
        func1(a, c, x)
      elsif c.positive? && x.zero?
        func2(a, c, x)
      else
        func3(a, b, c, x)
      end

  if (a.to_i | b.to_i | c.to_i) != 0
    f.to_f
  else
    f.to_i
  end
  f
end

def solve(a, b, c, x_start, x_end, dx)
  str = ""
  x = x_start.to_f
  while x <= x_end
    str += "x: #{x.round(3)} f: #{func(a, b, c, x).round(3)}\n"
    x += dx
    break if dx.zero?
  end
  str
end

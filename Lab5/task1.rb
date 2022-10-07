# frozen_string_literal: true

def integrate_rectangular(a, b, n)
  sum = 0.0
  h = (b - a) * 1.0 / n.to_f
  (1..n).each do |i|
    sum += yield(a + i * h - h / 2.0)
  end
  sum *= h
  sum
end

def integrate_trapezoidal(a, b, n)
  sum = yield(a) / 2.0
  h = (b - a) * 1.0 / n.to_f
  (1...n).each do |i|
    sum += yield(a + i * h)
  end
  sum += yield(b) / 2.0
  sum *= h
  sum
end

def f1(x)
  (x**2 - 1) * 10**(-2 * x)
end

def f2(x)
  1 / (3 + 2 * Math.cos(x))
end

puts integrate_rectangular(0.0, 0.5, 1000) { |x| f1(x) }
puts integrate_trapezoidal(0.0, 0.5, 1000) { |x| f1(x) }

puts integrate_rectangular(0.0, Math::PI / 2, 1000) { |x| f2(x) }
puts integrate_trapezoidal(0.0, Math::PI / 2, 1000) { |x| f2(x) }

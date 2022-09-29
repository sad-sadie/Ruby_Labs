# frozen_string_literal: true

n = 4
c = 5

puts '5.1:'
x = 1.0

def func1(size, value)
  (2 * value**(-1.0 / 3)) / (value**(2.0 / 3) - 3 * value**(-1.0 / 3)) -
    ((value**(2.0 / size)) / (value**(5.0 / 3) - value**(2.0 / size))) -
    ((value + 1) / (value**2 - 4 * value + 3))
end

(1..n + c).each do
  puts func1(n, x)
  x += (n - 1) / (n + c - 1).to_f
end

puts '5.2:'
x = (Math::PI / n).to_f

def func2(coefficient, size, value)
  sin(9 * Math::PI / 8 + value / 4)**2 - sin(7 * Math::PI / size + value / coefficient**value)**2 +
    tan(2 * value - 1)**(-1 / value)
end

(1..3 * n / 2 + c).each do
  puts func2(c, n, x)
  x += (Math::PI - (Math::PI / n).to_f) / (3 * n / 2 + c - 1)
end

puts '5.3:'
x = 2
(1..n).each do
  puts func1(n, x)
  x += (c - 2.0) / (2 * n - 1)
end
(n + 1..2 * n).each do
  puts func2(c, n, x)
  x += (c - 2.0) / (2 * n - 1)
end

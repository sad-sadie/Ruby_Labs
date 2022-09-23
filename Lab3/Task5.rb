include Math

n = 4
c = 5

puts "5.1:"
x = 1.0
(1..n+c).each do
puts (2 * x ** (-1.0 / 3)) / (x ** (2.0 / 3) - 3 * x ** (-1.0 / 3)) -
         ((x ** (2.0 / n)) / (x ** (5.0 / 3)  - x ** (2.0 / n) )) -
         ((x + 1) / (x ** 2 - 4 * x + 3))
  x += (n - 1) / (n + c - 1).to_f
end


puts "5.2:"
x = (Math::PI / n).to_f
(1..3 * n / 2 + c).each do
  puts sin(9 * Math::PI / 8 + x / 4) ** 2 - sin(7 * Math::PI / n + x / c ** x) ** 2 + tan(2 * x - 1) ** (-1 / x)
  x += (Math::PI - (Math::PI / n).to_f) / (3 * n /2 + c - 1)
end

puts "5.3:"
x = 2
(1..n).each do
  puts (2 * x ** (-1.0 / 3)) / (x ** (2.0 / 3) - 3 * x ** (-1.0 / 3)) -
         ((x ** (2.0 / n)) / (x ** (5.0 / 3)  - x ** (2.0 / n) )) -
         ((x + 1) / (x ** 2 - 4 * x + 3))
  x += (c - 2.0) / (2 * n - 1)
end
(n + 1..2 * n).each do
  puts sin(9 * Math::PI / 8 + x / 4) ** 2 - sin(7 * Math::PI / n + x / c ** x) ** 2 + tan(2 * x - 1) ** (-1 / x)
  x += (c - 2.0) / (2 * n - 1)

end

include Math
def factorial n
  n > 1 ? n * factorial(n - 1) : 1.0
end

e = 0.00001
sum = 0.0
n = 2

loop do
  current_e = (factorial(n - 1) / factorial(n + 1)) ** (n * (n + 1))
  sum += current_e
  n += 1
  break unless current_e > e
end

puts "4.1: #{sum}"

n = 1
sum = 0.0
loop do
  current_e = (1.0 * (-1) ** n) / (n ** 2)
  sum += current_e
  n += 1
  break unless current_e.abs > e
end

puts "4.2: #{(sum.abs - (Math::PI ** 2) / 12) > e ? "not equal" : "equal"}"


sum = 0.0
n = 1
loop do
  current_e = (factorial(4 * n - 1) * factorial(n + 1)) / (factorial(4 * n) * 3 ** (2 * n) * factorial(2 * n))
  sum += current_e
  n += 1
  break unless current_e > e
end

puts "4.3: #{sum}"
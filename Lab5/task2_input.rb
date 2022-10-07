require './task2'

x = nil
loop do
  puts 'Enter x [π/5 <= x <= 4π/5]'
  x = gets.chomp.to_f
  break if x.between?(0.628, 2.513)
end

puts 'Enter n:'
n = gets.chomp.to_i

puts task2(x, n)

require './task1/function'

puts "Enter a, b, c, x_start, x_end, dx:"

a = gets.chomp.to_f
b = gets.chomp.to_f
c = gets.chomp.to_f
x_start = gets.chomp.to_f
x_end = gets.chomp.to_f
dx = gets.chomp.to_f

puts solve(a, b, c, x_start, x_end, dx)

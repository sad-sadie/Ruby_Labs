# frozen_string_literal: true

# variant 4

require 'matrix'
require './task2'

n = 3

loop do
  puts 'Enter n (n >= 3 and n <= 9):'
  n = gets.chomp.to_i
  break if n.between?(3, 9)
end

a = (0...n).map { Array.new(n) }

n.times do |i|
  n.times do |j|
    a[i][j] = i == j ? 2 : 6
  end
end

a_matrix = Matrix[*a]

b = (1..n)
b_vec = Vector[*b]

puts a_matrix
puts b_vec

solution = task2(a_matrix, b_vec)
puts "Solution: #{solution}"

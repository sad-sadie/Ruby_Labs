# frozen_string_literal: true

# variant 4

require 'matrix'

def multiply(matrix1, matrix2)
  Matrix[*matrix1] * Matrix[*matrix2]
end

a = (0...8).map { Array.new(8) }
b = (0...8).map { Array.new(8) }

8.times do |i|
  8.times do |j|
    a[i][j], b[i][j] = i == j ? [1, 1] : [rand(10), rand(10)]
  end
end

p a
p b

p multiply(a, b)

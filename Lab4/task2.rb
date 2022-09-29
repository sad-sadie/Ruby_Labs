# frozen_string_literal: true

# variant 4

require 'matrix'

def task2(matrix_a, vector_b)
  matrix_a.inverse * vector_b
end

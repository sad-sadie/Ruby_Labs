# frozen_string_literal: true

# variant 4

def task0(array)
  array.unshift(array.pop)
end

array = Array.new(12)

12.times do |i|
  array[i] = rand(10)
end

p array
p task0(array)

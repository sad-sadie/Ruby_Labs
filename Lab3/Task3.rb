include Math
def task_3_2
  (0..8).sum do |i|
    1.0 / 3 ** i
  end
end

puts "3.2: #{task_3_2}"


n = 0
loop do
  puts "For task 3.5 enter n (n > 0) : "
  n = gets.chomp.to_i
  break if n > 0
end

def task_3_5(n)
  n < 1 ?  sqrt(2): sqrt(2 + task_3_5(n - 1))
end


puts "3.5: #{task_3_5(n)}"

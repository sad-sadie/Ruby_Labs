def task2(x, n)
  sum = 0.0
  if n >= 18 && n <= 58
    (1..n).each do |i|
      sum += (-1)**(i + 1) * Math.sin(i * x) / i
      puts sum
    end
  else
    e = 0.001
    i = 1
    loop do
      current_e = (-1)**(i + 1) * Math.sin(i * x) / i
      sum += current_e
      i += 1
      break unless current_e > e
    end
  end
  sum
end

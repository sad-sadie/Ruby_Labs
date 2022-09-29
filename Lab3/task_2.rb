include Math
puts "Enter x: "
x = gets.chomp.to_f

#using case
case x
  when -4..0
    y1 = ((x-2).abs / (x ** 2 * cos(x)))**(1.0/7)
  when 0..12
    y1 = 1 / (tan(x + 1 / exp(x)) / sin(x)**2)**(2.0/7)
  else
    y1 = 1 / (1 + x / (1 + x / (1 + x)))
end


#using if-else
if -4 <= x && x <= 0
  y2 = ((x-2).abs / (x ** 2 * cos(x)))**(1.0/7)
elsif 0 < x && x <= 12
  y2 = 1 / (tan(x + 1 / exp(x)) / sin(x)**2)**(2.0/7)
else
  y2 = 1 / (1 + x / (1 + x / (1 + x)))
end

puts "#{y1}, #{y2}"




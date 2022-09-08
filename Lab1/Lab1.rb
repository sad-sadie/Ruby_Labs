puts "Enter x:"
x = gets.to_f
puts "Enter j:"
j = gets.to_f

v = nil

begin
  v = Math.cos(12 * Math::PI) + (Math.tan(Math.log(x**3).abs)**5 + 4.2 * 10**(-2.8)) / (Math.sqrt((x + Math::E**j).abs))
rescue
  puts "Incorrect data input"
end

puts v

#1.1
A = false
B = false
C = true
X = 60
Y = -10
Z = -4
puts "1.1:"
puts "a) " + (!(A || B) && (A && !B)).to_s
puts "b) " + ((Z != Y).object_id <= (6 >= Y).object_id && A || B && C && X >= 1.5).to_s
puts "c) " + ((8 - X * 2 <= Z) && (X ** 2 != Y ** 2) || (Z >= 15)).to_s
puts "d) " + (X > 0 && Y < 0 || Z >= (X * Y - (- Y / X)) + (-Z)).to_s
puts "e) " + (!(A || B && !(C || (!A || B)))).to_s
puts "f) " + (X ** 2 + Y ** 2 >= 1 && X >= 0 && Y >= 0).to_s
puts "g) " + ((A && (C && B != B || A) || C) && B).to_s

#1.2
x = -0.5
y = -1
P = true
puts "1.2:"
puts ((y * y - x) > x * x) || (Math.cos(x) > 0) && !P

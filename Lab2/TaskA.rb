input = [[114,146], [147,106], [167,84], [224,56], [277,47],
        [373,41], [441,45], [456,101], [453,147], [453,213],
        [425,245], [382,270], [330,273], [290,248], [300,199],
        [238,195], [197,212], [151,209], [105,190], [104,163]]

s = 0
(0...input.length - 1).each do |i|
  s += (input[i][0] + input[i + 1][0]) * (input[i][1] - input[i + 1][1])
end
s += (input[input.length - 1][0] + input[0][0]) * (input[input.length - 1][1] - input[0][1])

puts s.abs / 2

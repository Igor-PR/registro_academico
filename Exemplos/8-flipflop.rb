
selected = []
0.upto 10 do |value|
  selected << value if value==2..value==8
end
p selected # prints [2, 3, 4, 5, 6, 7, 8]

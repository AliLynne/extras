array = [[0, 0, 0, 0],
[0, 1, 0, 0],
[0, 0, 0, 0],
[0, 0, 0, 0]]


puts array.collect{ |a| a.collect{ |b| b + 1} }
puts array

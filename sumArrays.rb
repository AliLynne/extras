def sum(numbers)
 numbers.reduce(0, :+)

end

puts sum([])
puts sum([1, 5.2, 4, 0, -1])

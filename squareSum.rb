def squareSum(numbers)
  y = 0
  numbers.each do |num|
    y = y + (num * num)
  end
  return y
end

puts squareSum([1,2,3])

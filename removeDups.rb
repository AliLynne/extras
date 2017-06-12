
def unique(integers)
    y = 1
  integers.each do |int|
    if int 
    puts integers[y]
    y = y + 1
    end
  end
end

#puts unique([])
#puts unique([5, 2, 1, 3])
unique([1, 5, 2, 0, 2, -3, 1, 10])

def digitize(n)
  n.to_s.split("").map(&:to_i)

end

puts digitize(24)

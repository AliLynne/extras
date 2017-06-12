def find_missing_number(sequence)
  sequence = sequence.split(" ").map { |n| n.to_i  }.sort!
  if sequence.empty?
    return 0
  else
    y = 1
    sequence.each do |num|
        if num == y
            y = y + 1
          else
            return y
        end
    end
  end
end

puts find_missing_number("1 2 3 5")
puts find_missing_number("1 3")
puts find_missing_number("")
puts find_missing_number("2 3 4 5")
puts find_missing_number("2 1 4 3 a")

def smash(words)
  words.join(" ").chomp
end

puts smash(["hello"])
puts smash(["hello", "world"])

def say_hello(name, city, state)
  puts "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

say_hello(['John', 'Smith'], 'Phoenix', 'Arizona')

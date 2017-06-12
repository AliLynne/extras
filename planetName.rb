def get_planet_name(id)
  puts case id
    when 1
      "Mercury"
    when 2
      "Venus"
    when 3
      "Earth"
    when 4
      "Mars"
    when 5
      "Jupiter"
    when 6
      "Saturn"
    when 7
      "Uranus"
    when 8
      "Neptune"
    end
end

get_planet_name(2)

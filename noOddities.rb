def no_odds(values)
  array =[]
  values.each do |val|
    if val.even?
      array << val.to_i
    end
  end
  puts array
end


no_odds([0,1,2,3,4,5])

def solution(a,b)
  if a.length < b.length
    puts a + b + a
  else
    puts b + a + b
  end
end

solution("","bb")
solution("22","1")

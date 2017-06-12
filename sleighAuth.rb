class Sleigh
  def authenticate(name, password)
    if name == "Santa Clause" && password == "Ho Ho Ho!"
      true
    else
      false
    end
  end
end

puts Sleigh.new.authenticate("Santa Claus", "Ho Ho Ho!")

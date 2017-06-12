class Ghost
  attr_accessor :color
  def initialize
    colors = ["red", "white", "yellow", "purple"]
    self.color = colors.sample
  end
end

puts ghost = Ghost.new
puts ghost.color

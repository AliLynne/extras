class Person
  attr_accessor :name, :otherName


  def initialize(name)
    @name = name
  end

  def greet(otherName)
    @otherName = otherName
    "Hello #{otherName}, my name is #{name}"
  end

end

joe = Person.new("Joe")
puts joe.greet("Kate")
puts joe.name

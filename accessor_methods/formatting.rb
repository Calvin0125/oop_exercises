class Person
  attr_reader :name
  def name=(name)
    @name = name.downcase.capitalize
  end
end

person1 = Person.new
person1.name = 'eLiZaBeTh'
puts person1.name
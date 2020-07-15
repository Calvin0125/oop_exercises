class Cat
  attr_accessor :name
  @@total = 0
  COLOR = 'purple'

  def self.total
    puts @@total
  end

  def initialize(name)
    @name = name
    @@total += 1
  end

  def rename(name)
    @name = name
  end

  def identify
    self
  end

  def personal_greeting
    puts "Hello! My name is #{name} and I'm a #{COLOR} cat!"
  end

  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end

  def to_s
    "I'm #{name}!"
  end
end

Cat.generic_greeting
kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name
p kitty.identify
kitty.personal_greeting
Cat.total
puts kitty
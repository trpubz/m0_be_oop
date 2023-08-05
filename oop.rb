# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name, color = :silver)
    @name = name
    @color = color
  end

  def say(saying)
    "*~*#{saying}*~*"
  end
end

uni = Unicorn.new("Fred")
puts uni
#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
  def initialize(name, pet = :bat, thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def drink
    @thirsty = false
  end
end

vamp = Vampire.new("taylor")
vamp.drink
vamp

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color, is_hungry = true)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = is_hungry
    @hunger_counter = 0
  end

  def eat
    if @is_hungry
      @hunger_counter += 1
      if @hunger_counter == 4
        @is_hungry = false
      end
    end
  end
end

drag = Dragon.new("tay", "manders", "blue")
drag.eat
drag.eat
drag.eat
drag
drag.eat
drag

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  attr_reader :name, :has_ring

  def initialize(name, disposition, age = 0)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    check_adult
    @is_old = false
    check_old
    @has_ring = false
    if @name == "Frodo"
      @has_ring = true
    end
  end

  def celebrate_birthday
    @age += 1
    check_adult
  end

  def check_adult
    if @age >= 33
      @is_adult = true
    end
  end

  def check_old
    if @age >= 101
      @is_old = true
    end
  end
end

h1 = Hobbit.new("taylor", "happy")
p h1.has_ring
h2 = Hobbit.new("Frodo", "scuured", 10000)
puts "#{h2.name} has ring: #{h2.has_ring}"



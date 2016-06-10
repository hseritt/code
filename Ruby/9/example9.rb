#!/usr/bin/env ruby2

class Animal
  attr_reader :species
  attr_accessor :species

  def initialize species=nil
    @species = species
  end

end


class Vertebrate < Animal
  def initialize species=nil

    super
    @has_backbone = true

  end

  def display_info extra_info=false

    puts "A #{species} is a species of #{self.class}. Movement method: #{moves}"

    if extra_info
      display_more
    end

  end

  def display_more

    puts "Skin: #{@outer}, Lays Eggs?: #{@lay_eggs}, Warm-blooded?: #{@is_warm_blooded}, Has a backbone?: #{@has_backbone}"

  end
end


class Reptile < Vertebrate
  def initialize species=nil
    super

    @outer = "scaly"
    @lay_eggs = true
    @is_warm_blooded = false

  end

  def moves
    "sliters or walks"
  end

end

class Bird < Vertebrate
  def initialize species=nil

    super
    @outer = "feathery"
    @lay_eggs = true
    @is_warm_blooded = true

  end

  def moves
    "flies or walks"
  end
end

class Fish < Vertebrate
  def initialize species=nil

    super
    @outer = "scaly"
    @lay_eggs = "Yes and no"
    @is_warm_blooded = false

  end

  def moves
    "swims"
  end
end

class Mammal < Vertebrate
  def initialize species=nil
    super
    @outer = "furry"
    @lay_eggs = false
    @is_warm_blooded = true
  end

  def moves
    "runs or walks"
  end
end

class Amphibian < Vertebrate
  def initialize species=nil
    super

    @outer = "slimy"
    @lay_eggs = true
    @is_warm_blooded = false
  end

  def moves
    "swims, jumps or walks"
  end
end


# call foo=bar just assigns the local variable foo, it is not a named parameter/keyword argument
snake = Reptile.new "garden snake"
snake.display_info true
puts ""

eagle = Bird.new "bald eagle"
eagle.display_info true
puts ""

shark = Fish.new "great white shark"
shark.display_info true
puts ""

ape = Mammal.new
ape.species = "silver-back gorilla"
ape.display_info
puts ""

dog = Mammal.new
dog.display_info
puts ""

frog = Amphibian.new "bull frog"
frog.display_info
puts ""

require "pry"
require_relative "./dog.rb"

class Owner
  # code goes here
  attr_accessor :pets, :name, :mood
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)

    @@all << self
    @species = "human"
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|x| x.mood = "nervous"}
      pets.clear
    end
    #@pets = {:fishes => [], :dogs => [], :cats => []}
      #pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end

new_owner = Owner.new("owner name")
new_owner.buy_dog("doggie")



puts "bla"

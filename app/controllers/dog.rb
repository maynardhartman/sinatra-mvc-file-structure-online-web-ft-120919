class Dog < Sinatra::Base
  attr_accessor :name
  attr_reader :breed, :age
  attr_writer :bread, :age
  
  @@all = []
  
  def initialize(name, breed, age)
    @name   = name
    @breed  = breed
    @age    = age  
  end
  
  @@all << self
  
  def self.all 
    return(@@all)
  end
  
  def all=(new_all)
    @@all = new_all
  end
  
  def all
    @@all
  end
  
  binding.pry
  Dog
end
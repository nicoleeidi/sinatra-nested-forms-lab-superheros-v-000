class Superhero
  @@all= []
  attr_accessor :name, :power, :biography
  def initialize(args)
    @name=args[:name]
    @power=args[:power]
    @biography=args[:biography]
    @@all << self
  end
  def self.all
    @@all
  end
end

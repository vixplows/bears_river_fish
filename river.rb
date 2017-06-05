require('pry')

class River
attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def number_of_fish
    @fishes.length
  end

  def add_fish_to_river(fish)
    @fishes << fish
  end

  def add_multiple_fish(fishes)
    fishes.each {|fish|add_fish_to_river(fish)}
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end

  def remove_multiple_fish(fishes)
    fishes.each {|fish|remove_fish(fish)}
  end
end
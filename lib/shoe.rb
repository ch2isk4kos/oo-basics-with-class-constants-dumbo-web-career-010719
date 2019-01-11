require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition,
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
      @brand = brand
  end

  #Setter
  def brands=(brands)
    @brands = brands
    if brands.include?(brand)
      BRANDS << brand
    end
  end

  def brands
    @brands
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end

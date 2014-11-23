class Shape
  # ovewritte this method for the class that defines the area of your shape
  attr_writer :area
  attr_reader :area
end

class Rectangle < Shape
  attr_writer :width, :height
  attr_reader :width, :height

  def initialize(sizes)
    @width = sizes[:width]
    @height = sizes[:height]
  end

  def area
    width*height
  end

end

class Circle < Shape
  attr_writer :radius
  attr_reader :radius

  def initialize(r)
    @radius = r
  end

  def area
    radius*radius*Math::PI
  end
end


class AreaCalculator

  def self.area(shapes)
    area = 0
    shapes.each do |shape|
      area += shape.area
    end
    area
  end

end



r1 = Rectangle.new(:width => 10, :height => 20)
r2 = Rectangle.new(:width => 5, :height => 14)
c1 = Circle.new(30)

puts "area r1= #{r1.area}"
puts "area r2= #{r2.area}"
puts "area c1= #{c1.area}"

r_collect = []
r_collect << r1
r_collect << r2
r_collect << c1

puts "collection area= #{AreaCalculator.area(r_collect)}"


class Shape
  attr_accessor :area

  def area
    raise "this shape doesn't have an area method. Overwrite it in your shape class"
  end
end

class Rectangle < Shape
  attr_accessor :width, :height

  def initialize(sizes)
    @width = sizes[:width]
    @height = sizes[:height]
  end

  def area
    width*height
  end

end

class Circle < Shape
  attr_accessor :radius

  def initialize(r)
    @radius = r
  end

  def area
    radius*radius*Math::PI
  end
end

class Triangle < Shape
  attr_accessor :base, :height

  def initialize(params)
    @base = params[:base]
    @height = params[:height]
  end

  def area
    base * height / 2
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
t1 = Triangle.new(:base => 10, :height => 30)

puts "area r1= #{r1.area}"
puts "area r2= #{r2.area}"
puts "area c1= #{c1.area}"
puts "area t1= #{t1.area}"

r_collect = []
r_collect << r1
r_collect << r2
r_collect << c1
r_collect << t1

puts "collection area= #{AreaCalculator.area(r_collect)}"


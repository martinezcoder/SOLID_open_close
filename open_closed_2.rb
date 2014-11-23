class Rectangle
  attr_writer :width, :height
  attr_reader :width, :height

  def initialize(sizes)
    @width = sizes[:width]
    @height = sizes[:height]
  end

  def area
    Area.calculate([] << self)
  end
end

class Area

  def self.calculate(rectangles)
    self.new
    area = 0
    rectangles.each do |r|
      area += r.width*r.height
    end
    area
  end

end


r1 = Rectangle.new(:width => 10, :height => 20)
r2 = Rectangle.new(:width => 5, :height => 14)

puts "area r1= #{r1.area}"
puts "area r2= #{r2.area}"

r_collect = []
r_collect << r1
r_collect << r2

puts "collection area= #{Area.calculate(r_collect)}"


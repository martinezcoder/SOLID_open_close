class Rectangle
  attr_accessor :width, :height

  def area
    width * height
  end
end

r = Rectangle.new

r.width = 10
r.height = 20

puts "width = #{r.width}"
puts "height = #{r.height}"
puts "area = #{r.area}"


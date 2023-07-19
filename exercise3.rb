class Geometry
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
  def distance(point_a, point_b)
    return Math.sqrt((point_a.x - point_b.x)**2 + (point_a.y - point_b.y)**2)
  end
  def middle(point_a, point_b)
    p "Middle of points a and b: ( #{(point_a.x + point_b.x) / 2} , #{(point_a.y + point_b.y) / 2} )"
  end
end
class Triangle < Geometry
  attr_accessor :point_a, :point_b, :point_c
  def initialize(point_a, point_b, point_c)
    @point_a = point_a
    @point_b = point_b
    @point_c = point_c
  end
  def triangle_perimeter
    self.check ? p("Perimeter of the triangle: #{self.distance(point_a, point_b) + self.distance(point_b, point_c) + self.distance(point_c, point_a)}") : p('3 points do not form a triangle')
  end
  def triangle_isoscel?
    self.distance(point_a, point_b) == self.distance(point_b, point_c) || self.distance(point_c, point_a) == self.distance(point_a, point_b) || self.distance(point_a, point_b) == self.distance(point_b, point_c) ? true : false
  end
  def check
    [self.point_a.x,self.point_b.x,self.point_c.x].count(self.point_a.x) == 3 || [self.point_a.y,self.point_b.y,self.point_c.y].count(self.point_a.y) == 3 || self.distance(point_a, point_b) == 0 || self.distance(point_b, point_c) == 0 || self.distance(point_a, point_c) == 0 ? false : true
  end
end

a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 20)
triangle = Triangle.new(a, b, c)
triangle.triangle_perimeter
triangle.middle(a,b)
p triangle.triangle_isoscel?
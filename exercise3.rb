class Geometry
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def distance(point)
    Math.sqrt((point.x - @x)**2 + (point.y - @y)**2)
  end

  def middle(point)
    p "Middle of points a and b: ( #{(point.x + @x) / 2} , #{(point.y + @y) / 2} )"
  end
end

class Triangle < Geometry
  attr_reader :point_a, :point_b, :point_c

  def initialize(point_a, point_b, point_c)
    @point_a = point_a
    @point_b = point_b
    @point_c = point_c
  end

  def triangle_perimeter
    check_triangle ? p("Perimeter of the triangle: #{point_a.distance(point_b) + point_b.distance(point_c) + point_c.distance(point_a)}") : p('3 points do not form a triangle')
  end

  def triangle_isoscel?
    point_a.distance(point_b) == point_b.distance(point_c) || 
    point_c.distance(point_a) == point_a.distance(point_b) || 
    point_a.distance(point_b) == point_b.distance(point_c)
  end

  def check_triangle
    [point_a.x,point_b.x,point_c.x].count(point_a.x) == 3 ||
    [point_a.y,point_b.y,point_c.y].count(point_a.y) == 3 || 
    point_a.distance(point_b) == 0 || 
    point_b.distance(point_c) == 0 || 
    point_a.distance(point_c) == 0
  end
end

a = Geometry.new(10, 10)
b = Geometry.new(10, 50)
c = Geometry.new(30, 20)
triangle = Triangle.new(a, b, c)
triangle.triangle_perimeter
a.middle(b)
p triangle.triangle_isoscel?

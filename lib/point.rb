class Point
  attr_accessor :x, :y

  def initialize(x=0, y=0)
    @x = x
    @y = y
  end

  def add_vector(vector)
    p = Point.new
    p.x = x + vector.x
    p.y = y + vector.y
    p
  end

  def -(other)
    v = Vector.new
    v.x = x - other.x
    v.y = y - other.y
    v
  end

end

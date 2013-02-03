class Point
  attr_accessor :x, :y

  def add_vector(vector)
    p = Point.new
    p.x = x + vector.x
    p.y = y + vector.y
    p
  end

end

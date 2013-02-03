class Vector
  attr_accessor :x, :y

  def initialize(x=0.0, y=0.0)
    @x = x
    @y = y
  end

  def length
    Math.sqrt(x*x + y*y)
  end

  def length_sqr
    (x*x + y*y)
  end

  def normalized
    self / length
  end

  def *(scale)
    scaled = Vector.new
    scaled.x = x * scale.to_f
    scaled.y = y * scale.to_f
    scaled
  end

  def /(scale)
    scaled = Vector.new
    scaled.x = x / scale.to_f
    scaled.y = y / scale.to_f
    scaled
  end
end

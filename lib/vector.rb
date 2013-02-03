class Vector
  attr_accessor :x, :y

  def length
    Math.sqrt(x*x + y*y)
  end

  def length_sqr
    (x*x + y*y)
  end
end

class Triangle

attr_accessor :side1, :side2, :side3

def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

def kind()
   if (@side_1 <= 0) || (@side_2 <= 0) || (@side_3 <= 0)
     raise TriangleError
   elsif (@side_1+@side_2 <= @side_3) || (@side_1+@side_3 <= @side_2) || (@side_2+@side_3 <= @side_1)
     raise TriangleError
   else
    return :equilateral if @side1 == @side2 && @side2 == @side3
    return :isosceles if @side1 == @side2 || @side2 == @side3 || @side1 == @side3
    :scalene
end
end


class TriangleError < StandardError
 def message
   "TriangleError"
 end
end
end

class Triangle

attr_accessor :side1, :side2, :side3

def initialize(side1, side2, side3)
  @side1 = side1
  @side2 = side2
  @side3 = side3
end

 def kind?(side1,side2,side3)
    if (@side1 + @side2 >= @side3 && @side2 + @side3 >= @side1 && @side3 + @side1 >= @side2)  # ||
       #(side1 <= 0 || side2 <= 0 || side3 <= 0)
      begin
        raise TriangleError
        rescue TriangleError => error
        puts error.message
  else

  # def triangle(a,b,c)
  #   sides = [a,b,c].sort
    return :equilateral if @side1 == @side2 && @side2 == @side3
    return :isosceles if @side1 == @side2 || @side2 == @side3 || @side1 == @side3
    :scalene
end
end
end

class TriangleError < StandardError
 def message
   "TriangleError"
 end
end
end

class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end#

   def kind(side1,side2,side3)
      if (side1+side2> side3 and side2+side3> side1 and side3+side1> side2) != true
    begin
        raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
  else
    def triangle(a, b, c)
  sides = [a,b,c].sort

  raise TriangleError if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
  return :equilateral if sides.uniq.length  == 1
  return :isosceles if sides.uniq.length  == 2
  :scalene
end
end
end

 class PartnerError < StandardError
   def message
     "TriangleError"
   end
 end
 end

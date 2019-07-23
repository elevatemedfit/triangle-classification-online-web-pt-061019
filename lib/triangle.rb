class Triangle

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end#

   def kind(a,b,c)
     sides = [a,b,c].sort
      if sides.first <= 0 || sides[2] >= sides[1] + sides[0]
    begin
        raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
  else
    # def triangle(a,b,c)
    #   sides = [a,b,c].sort
      return :equilateral if sides.uniq.length  == 1
      return :isosceles if sides.uniq.length  == 2
      :scalene
end
end



 class PartnerError < StandardError
   def message
     "TriangleError"
   end
 end
 end

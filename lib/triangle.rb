  class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

   def kind
      if (@side1 + @side2 >= @side3 && @side2 + @side3 >= @side1 && @side3 + @side1 >= @side2) = false #||(side1 <=0 || side2 <= 0 || side3 <= 0)||(side1 + side2 <= side3)
    begin
        raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
  else
    # def triangle(a,b,c)
    #   sides = [a,b,c].sort
      return :equilateral if @side1 == @side2 && @side2 == @side3
      return :isosceles if @side1 == @side2 || @side2 == @side3 || @side1 == @side3
      :scalene
end
end



 class PartnerError < StandardError
   def message
     "TriangleError"
   end
 end
 end

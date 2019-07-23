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
    def triangle(kind)
    kind.each do |a,b,c|
      if a == b && b == c
        puts "equilateral"
      elsif a == b || b == c || a == c
        puts "isosceles"
      elsif a != b && a != c && b != c
        puts "scalene"
   end
 end
 end
 end
 end

 class PartnerError < StandardError
   def message
     "TriangleError"
   end
 end
 end

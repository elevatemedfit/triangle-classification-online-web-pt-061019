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
    def kind.each do |side1,side2,side|
      if side1 == side2 && side2 == side3
        puts "equilateral"
      elsif side1 == side2 || side2 == side3 || side1 == side3
        puts "isosceles"
      elsif side1 != side2 && side1 != side3 && side2 != side3
        puts "scalene"
   end
 end

 class PartnerError < StandardError
   def message
     "TriangleError"
   end
 end
 end

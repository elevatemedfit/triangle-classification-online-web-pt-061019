class Triangle

  attr_accessor

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end#

   def kind(side1,side2,side3)
     if side1 != side2 && side1 != side3 && side2 != side3 
     begin
       raise TriangeError
     rescue TriangelError => error
       puts error.message
     end
     class TriangleError < StandardError
       def message
         "error message"
       end
   end
 end
 end

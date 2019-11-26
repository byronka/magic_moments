with AUnit;
with Aunit.Test_Fixtures;

package Geometry.Circles is

   type Circle is new Object with
      record
         Radius: Float;
      end record;
    
   function Area(C: Circle) return Float;
   function MI(C: Circle) return Float;
   function Name(C: Circle) return String;
   
private
   
   function return_real_value(i : Integer) return Integer;

   function Area(C: Circle;
                 baz : not null access Function(i : Integer) return Integer)
                 return Float ;

end Geometry.Circles;

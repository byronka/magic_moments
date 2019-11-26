with AUnit;
with Aunit.Test_Fixtures;
with sample_dependency;

package Geometry.Circles is

   type Circle is new Object with
      record
         Radius: Float;
      end record;
    
   function Area(C: Circle) return Float;
   function MI(C: Circle) return Float;
   function Name(C: Circle) return String;
private
   function Area(C: Circle; 
                 aif : access function (X : Integer) return Integer) return Float;

end Geometry.Circles;

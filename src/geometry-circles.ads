with AUnit;
with Aunit.Test_Fixtures;

package Geometry.Circles is

   type Circle is new Object with
      record
         Radius: Float;
      end record;
   
   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   function Area(C: Circle) return Float;
   function MI(C: Circle) return Float;
   function Name(C: Circle) return String;
   
   procedure Test_Circles_Area (T : in out Test);

end Geometry.Circles;

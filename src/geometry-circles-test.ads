package Geometry.Circles.Test is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
      
   function return_fake_value(i : Integer) return Integer;
   
   procedure Test_Circles_Area (T : in out Test);

end Geometry.Circles.Test;

with AUnit.Assertions;

package body Geometry.Circles.Test is

   somevalue : Integer := 3;
   
   function return_fake_value(i : Integer) return Integer is
   begin
      return somevalue;
   end return_fake_value;
   
   -- just trying to make sure the area is right
   procedure Test_Circles_Area (T : in out Test) is
      Radius : Float := 3.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 28.274;
      my_circle : Circle := (0.0, 0.0, Radius);
   begin
      somevalue := 2;
      Result := Area(C => my_circle, baz => return_fake_value'Access);
      Actual_Epsilon := Result - Expected_Result;
      Aunit.Assertions.Assert( Actual_Epsilon < 0.001, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_Circles_Area;

end Geometry.Circles.Test;

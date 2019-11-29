with AUnit.Assertions;
with Geometry.Circles;
use Geometry.Circles;

package body circle_tests is
   
   package constants is
      X_Coord_Default, Y_Coord_Default : Float := 0.0;
      Epsilon_default : Float := 0.001;
   end constants;
   
   use constants;
   
   procedure Test_Circles_Area (T : in out Test) is
      Radius : Float := 3.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 28.274;
      my_circle : Circle := (X_Coord_Default, Y_Coord_Default, Radius);
   begin
      Result := Area(C => my_circle);
      Actual_Epsilon := Result - Expected_Result;
      Aunit.Assertions.Assert( Actual_Epsilon < Epsilon_default, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_Circles_Area;

   procedure Test_Circles_MI (T : in out Test) is
      Radius : Float := 3.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 127.234;
      my_circle : Circle := (X_Coord_Default, Y_Coord_Default, Radius);
   begin
      Result := MI(C => my_circle);
      Actual_Epsilon := Result - Expected_Result;
      Aunit.Assertions.Assert( Actual_Epsilon < Epsilon_default, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_Circles_MI;
   
   procedure Test_BigCircle_Area (T : in out Test) is
      Radius : Float := 3_000.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 28_274_333.882;
      my_circle : Circle := (X_Coord_Default, Y_Coord_Default, Radius);
   begin
      Result := Area(C => my_circle);
      Actual_Epsilon := Result - Expected_Result;
      Aunit.Assertions.Assert( Actual_Epsilon < Epsilon_default, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_BigCircle_Area;
   
   procedure Test_Circle_Name (T : in out Test) is
      my_circle : Circle := (0.0,0.0,0.0);
   begin
      Aunit.Assertions.Assert(my_circle.name, "Circle","name should be circle");
   end Test_Circle_Name;
   
     

end circle_tests;

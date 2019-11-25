with Geometry.Squares;
use Geometry.Squares;
with AUnit.Assertions;
use AUnit.Assertions;

package body square_tests is
   
   package constants is
      X_Coord_Default, Y_Coord_Default, Side_Default : Float := 0.0;
      Epsilon_default : Float := 0.001;
   end constants;
   
   use constants;

   procedure Test_Squares_Area (T : in out Test) is
      Side_Length : Float := 3.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 9.0;
      my_square : Square := (X_Coord_Default, Y_Coord_Default, Side_Length);
   begin
      Result := Area(S => my_square);
      Actual_Epsilon := Result - Expected_Result;
      Assert( Actual_Epsilon < Epsilon_default, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_Squares_Area;
   
   procedure Test_Squares_MI (T : in out Test) is
      Side_Length : Float := 3.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 13.5;
      my_square : Square := (X_Coord_Default, Y_Coord_Default, Side_Length);
   begin
      Result := MI(S => my_square);
      Actual_Epsilon := Result - Expected_Result;
      Assert( Actual_Epsilon < Epsilon_default, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_Squares_MI;
   
   procedure Test_Squares_Name (T : in out Test) is
      my_square : Square := (X_Coord_Default, Y_Coord_Default, Side_Default);
   begin
      Assert(my_square.Name, "Square", "name of a square object is 'square'");
   end Test_Squares_Name;
   

end square_tests;

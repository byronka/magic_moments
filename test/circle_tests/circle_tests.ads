with AUnit;
with Aunit.Test_Fixtures;

package circle_tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   -- just trying to make sure the area is right
   procedure Test_Circles_Area (T : in out Test);
   
   -- just trying to make sure the moment of inertia is handled right
   procedure Test_Circles_MI (T : in out Test);
   
   -- testing area with a big radius (3 thousand)
   procedure Test_BigCircle_Area (T : in out Test);
   
   -- circle should have a name of "circle"
   procedure Test_Circle_Name (T : in out Test);


end circle_tests;

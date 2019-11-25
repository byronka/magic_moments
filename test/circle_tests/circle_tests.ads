with AUnit;
with Aunit.Test_Fixtures;

package circle_tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   procedure Test_Circles_Area (T : in out Test);
   procedure Test_Circles_MI (T : in out Test);
   procedure Test_BigCircle_Area (T : in out Test);
   procedure Test_Circle_Name (T : in out Test);


end circle_tests;

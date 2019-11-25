with AUnit;
with Aunit.Test_Fixtures;

package square_tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   procedure Test_Squares_Area (T : in out Test);
   procedure Test_Squares_MI (T : in out Test);
   procedure Test_Squares_Name (T : in out Test);
   

end square_tests;

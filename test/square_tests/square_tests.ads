with AUnit;
with Aunit.Test_Fixtures;

package square_tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   -- test that the area equation is right
   procedure Test_Squares_Area (T : in out Test);
   
   -- that that the moment of inertia equation is right
   procedure Test_Squares_MI (T : in out Test);
   
   -- test that the name of a Square object is "square"
   procedure Test_Squares_Name (T : in out Test);
   

end square_tests;

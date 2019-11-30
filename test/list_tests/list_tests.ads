with AUnit;
with Aunit.Test_Fixtures;

package list_tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   -- just adding a few items to the list and making sure
   -- what we expect is there.
   procedure List_Basic_Test (T : in out Test);
   
   -- what happens if we add a triangle to the list?
   procedure Test_Should_List_Triangle (T : in out Test);
   
   -- what happens if we add a square to the list?
   procedure Test_Should_List_Square (T : in out Test);
   
   -- what happens if we add a circle to the list?
   procedure Test_Should_List_Circle (T : in out Test);
   
   -- what happens if we add a point to the list?
   procedure Test_Should_List_Point (T : in out Test);
   

end list_tests;

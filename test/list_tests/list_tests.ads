with AUnit;
with Aunit.Test_Fixtures;

package list_tests is

   type Test is new AUnit.Test_Fixtures.Test_Fixture with null record;
   
   procedure List_Basic_Test (T : in out Test);

end list_tests;

with AUnit.Assertions;
with Geometry.Lists; 
with Geometry.Squares; 
use Geometry;

package body list_tests is

   procedure List_Basic_Test (T : in out Test) is
      l : Lists.List := null;
   begin
      Lists.Add_To_List(l, new Squares.Square'(1.0, 1.0, 1.0));
      Lists.Add_To_List(l, new Squares.Square'(2.0, 2.0, 1.0));
      Lists.Add_To_List(l, new Squares.Square'(3.0, 3.0, 1.0));
      Lists.Add_To_List(l, new Squares.Square'(4.0, 4.0, 1.0));
      
      -- we have generated this linked list:
      --   (4.0) -> (3.0) -> (2.0) -> (1.0) -> null
      
      -- To traverse the linked list, we start at 4.0 and 
      -- we can assert that the *next* value will give us 3.0
      
      AUnit.Assertions.Assert(l.Next.Element.X_Coord = 3.0, 
                              "The value at the second position should be 3.0");
   end List_Basic_Test;
   
end list_tests;

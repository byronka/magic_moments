with AUnit.Assertions;
with Geometry.Lists; 
with Geometry.Squares; 
with Geometry.Circles;
with Geometry.Triangles;
with Geometry.Point;
with Ada.Numerics;
with Ada.Text_IO;
  
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
   
   procedure Test_Should_List_Triangle (T : in out Test) is
      l : Lists.List := null;
      Triangle_area_is_correct : Boolean;
   begin
      Lists.Add_To_List(l, new Triangles.Triangle'(3.0, 3.0, 3.0, 4.0, 5.0));
      
      Triangle_area_is_correct := l.Element.Area = 6.0;
      
      AUnit.Assertions.Assert(Triangle_area_is_correct, "");
   end Test_Should_List_Triangle;   
   
   procedure Test_Should_List_Square (T : in out Test) is
      l : Lists.List := null;
      Square_area_is_correct : Boolean;
   begin
      Lists.Add_To_List(l, new Squares.Square'(1.0, 1.0, 1.0));
      
      Square_area_is_correct := l.Element.Area = 1.0;
      
      AUnit.Assertions.Assert(Square_area_is_correct, "");
   end Test_Should_List_Square;   
   
   procedure Test_Should_List_Circle (T : in out Test) is
      l : Lists.List := null;
      Circle_area_is_correct : Boolean;
   begin
      Lists.Add_To_List(l, new Circles.Circle'(2.0, 2.0, 1.0));
      
      Circle_area_is_correct := l.Element.Area = Ada.Numerics.Pi * 1.0 ** 2;
      
      AUnit.Assertions.Assert(Circle_area_is_correct, "The circle calculation is pi*r**2");
   end Test_Should_List_Circle;  
   
   procedure Test_Should_List_Point (T : in out Test) is
      l : Lists.List := null;
      point_area_is_correct : Boolean;
   begin
      Lists.Add_To_List(l, new Point.Point'(4.0, 4.0));
      
      point_area_is_correct := l.Element.Area = 0.0;
      
      AUnit.Assertions.Assert(point_area_is_correct, "The point's area is always 0");
   end Test_Should_List_Point;
   
   procedure Test_Can_Add_Lots_Of_Entries (T : in out Test) is
      use Geometry.Lists;
      l : Lists.List := null;
      p : access Cell;
      count : Natural := 0;
   begin
      for i in 1 .. 1_000_000 loop
         Lists.Add_To_List(l, new Squares.Square'(1.0, 1.0, 1.0));
      end loop;
      
      -- we have generated this linked list:
      --   (square)1 -> (square)2 -> ... -> (square)1,000,000 -> null
      
      -- To count the list we can loop through and count the number
      -- of loops before we hit null
      p := l;
      while p /= null loop
         count := count + 1;
         p := p.Next;
      end loop;
       
      AUnit.Assertions.Assert(count = 1_000_000, 
                              "We should have counted a lot of times looping");
   end Test_Can_Add_Lots_Of_Entries;
   
  
   
end list_tests;

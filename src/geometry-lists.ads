package Geometry.Lists is

   type Pointer is access Object'Class;
   
   type Cell is
      record
         Next: access Cell;
         Element: Pointer;
      end record;
   
   type List is access Cell;
   
   -- a linked list:
   --     a --> b --> c --> null
   --
   -- The new value goes at the front, like this:
   --   (new_value) --> a --> b --> c --> d --> null
   --
   procedure Add_To_List(The_List: in out List;
                         Obj_Ptr: in Pointer);

end Geometry.Lists;

package body Geometry.Lists is

   procedure Add_To_List(The_List: in out List;
                         Obj_Ptr: in Pointer) is
   begin
      -- A bit convoluted but what we do is we make a new cell that 
      -- has the new data we want stored, and the "next" value points
      -- to where the previous cell was, or to null, and then we update
      -- "The_List" 
      
      -- to travel through the list, you must start at one end and then 
      -- follow the pointers to the next cell until you get to the end,
      -- denoted by a null value.
      The_List := new Cell'(The_List, Obj_Ptr);
   end Add_To_List;
   

end Geometry.Lists;

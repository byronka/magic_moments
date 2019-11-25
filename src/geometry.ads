package Geometry is

   type object is abstract tagged
      record
         X_Coord : Float;
         Y_Coord : Float;
      end record;
   
   function Distance (O : Object) return Float;
   function Area (O : Object) return Float is abstract;
   function MI (O : Object) return Float is abstract;
   function Name (O : Object) return String is abstract;

end Geometry;

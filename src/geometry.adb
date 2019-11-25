with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

package body Geometry is
   function Distance (O : Object) return Float is
   begin
      return Sqrt(O.X_Coord**2 + O.Y_Coord**2);
   end Distance;

end Geometry;

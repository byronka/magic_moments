with Ada.Numerics;

package body Geometry.Circles is
   
   function Area(C: Circle) return Float is
      baz : access_integer_function := sample_dependency.foo'Access;
   begin
      return Area(C, baz);
   end Area;
      
   function Area(C: Circle; aif : access_integer_function) return Float is
   begin
      return Ada.Numerics.Pi * C.Radius**aif(2);
   end Area;
   
   function MI(C: Circle) return Float is
   begin
      return 0.5 * C.Area * C.Radius**2;
   end MI;
   
   function Name(C: Circle) return String is
   begin
      return "Circle";
   end Name;

end Geometry.Circles;

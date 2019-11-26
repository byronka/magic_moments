with Ada.Numerics;
with sample_dependency;


package body Geometry.Circles is
   
   function Area(C: Circle) return Float is
   begin
      return Area(C, return_real_value'Access); 
   end Area;
   
   function Area(C: Circle;
                 baz : not null access Function(i : Integer) return Integer)
                 return Float is
   begin
      return Ada.Numerics.Pi * C.Radius**baz(2);
   end Area;
   
   function MI(C: Circle) return Float is
   begin
      return 0.5 * C.Area * C.Radius**2;
   end MI;
   
   function Name(C: Circle) return String is
   begin
      return "Circle";
   end Name;
                  
   function return_real_value(i : Integer) return Integer is
   begin
      return sample_dependency.foo(i);
   end return_real_value;

end Geometry.Circles;

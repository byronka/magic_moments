with Ada.Numerics;
with sample_dependency;
with AUnit.Assertions;

package body Geometry.Circles is

   function return_real_value(i : Integer) return Integer;
   function return_fake_value(i : Integer) return Integer;
   function Area(C: Circle;
                 baz : not null access Function(i : Integer) return Integer)
                 return Float ;
   
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
   
   function return_fake_value(i : Integer) return Integer is
   begin
      return 3;
   end return_fake_value;
                  
   function return_real_value(i : Integer) return Integer is
   begin
      return sample_dependency.foo(i);
   end return_real_value;
                  
   
   
   
    -- just trying to make sure the area is right
   procedure Test_Circles_Area (T : in out Test) is
      Radius : Float := 3.0;
      Result, Actual_Epsilon : Float;
      Expected_Result : Float := 28.274;
      my_circle : Circle := (0.0, 0.0, Radius);
   begin
      Result := Area(C => my_circle, baz => return_fake_value'Access);
      Actual_Epsilon := Result - Expected_Result;
      Aunit.Assertions.Assert( Actual_Epsilon < 0.001, "not spot-on, epsilon was: " & Actual_Epsilon'Image);
   end Test_Circles_Area;

end Geometry.Circles;

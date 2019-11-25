package Geometry.Triangles is

   type Triangle is new Object with
      record
         -- three sides define a triangle
         A: Float;
         B: Float;
         C: Float;
      end record;

   function Area(T: Triangle) return Float;
   function MI(T: Triangle) return Float;
   function Name(T: Triangle) return String;

end Geometry.Triangles;

package Geometry.Points is

   type Point is new Object with null record;
      end record;

   function Area(P: Point) return Float;
   function MI(P: Point) return Float;
   function Name(P: Point) return String;

end Geometry.Points;

with Build_List;
with Tabulate_Properties;
with Geometry.Lists; use Geometry.Lists;
with Ada.Text_IO;
with Ada.Float_Text_IO;
use Ada;
procedure Magic_Moments is
   The_List : List := null;
begin
      Text_IO.Put("Welcome to Magic Moments");
      Text_IO.New_Line(2);
      Text_IO.Put("Enter C, T, or S followed by " &
                    "coords and dimensions");
      Text_IO.New_Line;
      Text_IO.Put("Terminate list with any other letter");
      Text_IO.New_Line(2);
      Build_list(The_List);
      Tabulate_Properties(The_List);
      Text_IO.New_Line(2);
      Text_IO.Put("Finished");
      Text_IO.New_Line;
      Text_IO.Skip_Line(2);

end Magic_Moments;

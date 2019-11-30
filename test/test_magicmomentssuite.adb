with AUnit.Test_Caller;
with AUnit.Test_Suites;
with circle_tests;
with square_tests;
with list_tests;
with Geometry.Circles;
with Geometry.Circles.Test;


package body test_magicmomentssuite is

   package circle_caller is new AUnit.Test_Caller(circle_tests.Test);
   package square_caller is new AUnit.Test_Caller(square_tests.Test);
   package insideCircles_caller is new AUnit.Test_Caller(geometry.Circles.Test.Test);
   package list_caller is new AUnit.Test_Caller(list_tests.Test);

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
      this_suite : constant AUnit.Test_Suites.Access_Test_Suite := AUnit.Test_Suites.New_Suite;
   begin
      this_suite.Add_Test(circle_caller.Create("circle_tests.Test_Circles_Area",
                            circle_tests.Test_Circles_Area'Access));
      this_suite.Add_Test(circle_caller.Create("circle_tests.Test_Circles_MI",
                          circle_tests.Test_Circles_MI'Access));
      this_suite.Add_Test(circle_caller.Create("circle_tests.Test_BigCircle_Area",
                          circle_tests.Test_BigCircle_Area'Access));
      this_suite.Add_Test(circle_caller.Create("circle_tests.Test_Circle_Name",
                          circle_tests.Test_Circle_Name'Access));

      this_suite.Add_Test(square_caller.Create("square_tests.Test_Squares_Area",
                          square_tests.Test_Squares_Area'Access));
      this_suite.Add_Test(square_caller.Create("square_tests.Test_Squares_MI",
                          square_tests.Test_Squares_MI'Access));
      this_suite.Add_Test(square_caller.Create("square_tests.Test_Squares_Name",
                          square_tests.Test_Squares_Name'Access));

      -- testing inside the class so we have access to private stuff
      this_suite.Add_Test(insideCircles_caller.Create(
                          "geometry.Circles.Test.Test_Circles_Area",
                          geometry.Circles.Test.Test_Circles_Area'Access));

      this_suite.Add_Test(list_caller.Create("list_tests.List_Basic_Test",
                            list_tests.List_Basic_Test'Access));
      this_suite.Add_Test(list_caller.Create(
                          "list_tests.Test_Should_List_Triangle",
                          list_tests.Test_Should_List_Triangle'Access));
      this_suite.Add_Test(list_caller.Create(
                          "list_tests.Test_Should_List_Square",
                          list_tests.Test_Should_List_Square'Access));
      this_suite.Add_Test(list_caller.Create(
                          "list_tests.Test_Should_List_Circle",
                          list_tests.Test_Should_List_Circle'Access));
      this_suite.Add_Test(list_caller.Create(
                          "list_tests.Test_Should_List_Point",
                          list_tests.Test_Should_List_Point'Access));
      this_suite.Add_Test(list_caller.Create(
                          "list_tests.Test_Can_Add_Lots_Of_Entries",
                          list_tests.Test_Can_Add_Lots_Of_Entries'Access));


      return this_suite;
   end Suite;

end test_magicmomentssuite;

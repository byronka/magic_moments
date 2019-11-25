with AUnit.Test_Caller;
with AUnit.Test_Suites;
with circle_tests;
with square_tests;
with Geometry.Circles;


package body test_magicmomentssuite is

   package circle_caller is new AUnit.Test_Caller(circle_tests.Test);
   package square_caller is new AUnit.Test_Caller(square_tests.Test);
   package insideCircles_caller is new AUnit.Test_Caller(geometry.Circles.Test);

   function Suite return AUnit.Test_Suites.Access_Test_Suite is
      this_suite : constant AUnit.Test_Suites.Access_Test_Suite := AUnit.Test_Suites.New_Suite;
   begin
      this_suite.Add_Test(circle_caller.Create("A basic test for circle area", circle_tests.Test_Circles_Area'Access));
      this_suite.Add_Test(circle_caller.Create("A basic test for circle MI", circle_tests.Test_Circles_MI'Access));
      this_suite.Add_Test(circle_caller.Create("testing a large radius on a circle", circle_tests.Test_BigCircle_Area'Access));
      this_suite.Add_Test(circle_caller.Create("testing that the name for circles is 'circle'", circle_tests.Test_Circle_Name'Access));

      this_suite.Add_Test(square_caller.Create("a basic square area test", square_tests.Test_Squares_Area'Access));
      this_suite.Add_Test(square_caller.Create("a basic square MI test", square_tests.Test_Squares_MI'Access));
      this_suite.Add_Test(square_caller.Create("a basic square name test", square_tests.Test_Squares_Name'Access));

      this_suite.Add_Test(insideCircles_caller.Create("madness! testing *inside* the class", geometry.Circles.Test_Circles_Area'Access));
      return this_suite;
   end Suite;

end test_magicmomentssuite;

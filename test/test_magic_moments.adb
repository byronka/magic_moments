with AUnit.Reporter.Text;
with AUnit.Run;
with Test_MagicMomentsSuite;

procedure test_magic_moments is
   procedure Runner is new AUnit.Run.Test_Runner (Test_MagicMomentsSuite.Suite);
   Reporter : AUnit.Reporter.Text.Text_Reporter;
begin
   Runner(Reporter);
end test_magic_moments;

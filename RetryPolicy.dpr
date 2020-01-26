program RetryPolicy;
{

  Delphi DUnit-Testprojekt
  -------------------------
  Dieses Projekt enth�lt das DUnit-Test-Framework und die GUI/Konsolen-Test-Runner.
  F�gen Sie den Bedingungen in den Projektoptionen "CONSOLE_TESTRUNNER" hinzu,
  um den Konsolen-Test-Runner zu verwenden.  Ansonsten wird standardm��ig der
  GUI-Test-Runner verwendet.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Bott.RetryPolicy in 'source\Bott.RetryPolicy.pas',
  Bott.RetryPolicy.Tests in 'tests\Bott.RetryPolicy.Tests.pas';

{$R *.RES}

begin
  ReportMemoryLeaksOnShutdown:=true;
  DUnitTestRunner.RunRegisteredTests;
end.


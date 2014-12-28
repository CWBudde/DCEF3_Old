program guiclient;

uses
  Sysutils,
  Windows,
  Forms,
  ceflib in '..\..\src\ceflib.pas',
  ceffilescheme in '..\filescheme\ceffilescheme.pas',
  main in 'main.pas' {MainForm};

{$R *.res}

procedure RegisterSchemes(const registrar: ICefSchemeRegistrar);
begin
  registrar.AddCustomScheme('local', True, True, False);
end;

begin
  CefCache := 'cache';
  CefOnRegisterCustomSchemes := RegisterSchemes;
  CefSingleProcess := False;
  if not CefLoadLibDefault then
    Exit;

  CefRegisterSchemeHandlerFactory('local', '', False, TFileScheme);


  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

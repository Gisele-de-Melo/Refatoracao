program Project1;

uses
  Vcl.Forms,
  untMain in 'untMain.pas' {Form1},
  untClassPerson in 'untClassPerson.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

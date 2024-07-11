//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit untMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //Classe que será refatorada
  TOldPerson = class
    Name: string;
    Age: Integer;
    procedure DisplayInfo;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses untClassPerson;

procedure TForm1.Button1Click(Sender: TObject);
var
  person : TPerson;

begin
  person := TPerson.Create;
  try
    try
      person.Name := 'John Doe';
      person.Age := 30;
      person.DisplayInfo;

    except
      on E: Exception do
        ShowMessage('Erro:'+ E.Message);
    end;
  finally
    person.Free;
  end;
end;

{ TOldPerson }

procedure TOldPerson.DisplayInfo;
begin
  ShowMessage('Name: ' + Name);
  ShowMessage('Age: ' + IntToStr(Age));
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  person : TOldPerson;

begin
  person := TOldPerson.Create;
  try
    try
      person.Name := 'John Doe';
      person.Age := 30;
      person.DisplayInfo;

    except
      on E: Exception do
        ShowMessage('Erro:'+ E.Message);
    end;
  finally
    person.Free;
  end;
end;

end.

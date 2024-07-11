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

unit untClassPerson;

interface

uses System.SysUtils, System.Classes, Vcl.Dialogs;

type
  //Classe refatorada
  TPerson = class
  private
    FName: string;
    FAge: Integer;
    function GetName: string;
    function GetAge: Integer;
    procedure SetName(const Value: string);
    procedure SetAge(Value: Integer);
    function FormatInfo: string;
  public
    property Name: string read GetName write SetName;
    property Age: Integer read GetAge write SetAge;
    procedure DisplayInfo;
  end;

implementation

function TPerson.GetName: string;
begin
  Result := FName;
end;

function TPerson.GetAge: Integer;
begin
  Result := FAge;
end;

procedure TPerson.SetName(const Value: string);
begin
  FName := Value;
end;

procedure TPerson.SetAge(Value: Integer);
begin
  FAge := Value;
end;

procedure TPerson.DisplayInfo;
begin
  ShowMessage(FormatInfo);
end;

function TPerson.FormatInfo: string;
begin
  Result := 'Name: ' + FName + sLineBreak + 'Age: ' + IntToStr(FAge);
end;

end.

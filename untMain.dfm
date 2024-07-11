object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Exemplo de Refatora'#231#227'o'
  ClientHeight = 92
  ClientWidth = 308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Button1: TButton
    Left = 153
    Top = 8
    Width = 147
    Height = 73
    Caption = 'Exibir Pessoa Refatorado'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 8
    Width = 139
    Height = 73
    Caption = 'Exibir Pessoa Antigo'
    TabOrder = 1
    OnClick = Button2Click
  end
end

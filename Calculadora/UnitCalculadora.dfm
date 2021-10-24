object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora'
  ClientHeight = 288
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object edtResultado: TEdit
    Left = 16
    Top = 16
    Width = 261
    Height = 24
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = '0'
  end
  object btn7: TButton
    Left = 16
    Top = 56
    Width = 65
    Height = 49
    Caption = '7'
    TabOrder = 1
    OnClick = NumeroClick
  end
  object btn8: TButton
    Left = 87
    Top = 56
    Width = 65
    Height = 49
    Caption = '8'
    TabOrder = 2
    OnClick = NumeroClick
  end
  object btn9: TButton
    Left = 158
    Top = 56
    Width = 64
    Height = 49
    Caption = '9'
    TabOrder = 3
    OnClick = NumeroClick
  end
  object btnSoma: TButton
    Left = 228
    Top = 56
    Width = 49
    Height = 49
    Caption = '+'
    TabOrder = 4
    OnClick = btnSomaClick
  end
  object btn4: TButton
    Left = 16
    Top = 111
    Width = 65
    Height = 49
    Caption = '4'
    TabOrder = 5
    OnClick = NumeroClick
  end
  object btn5: TButton
    Left = 87
    Top = 111
    Width = 65
    Height = 49
    Caption = '5'
    TabOrder = 6
    OnClick = NumeroClick
  end
  object btn6: TButton
    Left = 158
    Top = 111
    Width = 64
    Height = 49
    Caption = '6'
    TabOrder = 7
    OnClick = NumeroClick
  end
  object btnSubtrair: TButton
    Left = 228
    Top = 111
    Width = 49
    Height = 49
    Caption = '-'
    TabOrder = 8
    OnClick = btnSubtrairClick
  end
  object btn1: TButton
    Left = 16
    Top = 166
    Width = 65
    Height = 49
    Caption = '1'
    TabOrder = 9
    OnClick = NumeroClick
  end
  object btn2: TButton
    Left = 87
    Top = 166
    Width = 65
    Height = 49
    Caption = '2'
    TabOrder = 10
    OnClick = NumeroClick
  end
  object btn3: TButton
    Left = 158
    Top = 166
    Width = 64
    Height = 49
    Caption = '3'
    TabOrder = 11
    OnClick = NumeroClick
  end
  object btnMultiplicar: TButton
    Left = 228
    Top = 166
    Width = 49
    Height = 49
    Caption = 'X'
    TabOrder = 12
    OnClick = btnMultiplicarClick
  end
  object btnLimpar: TButton
    Left = 16
    Top = 221
    Width = 65
    Height = 49
    Caption = 'C'
    TabOrder = 13
    OnClick = btnLimparClick
  end
  object btn0: TButton
    Left = 87
    Top = 221
    Width = 65
    Height = 49
    Caption = '0'
    TabOrder = 14
    OnClick = NumeroClick
  end
  object btnIgual: TButton
    Left = 158
    Top = 221
    Width = 64
    Height = 49
    Caption = '='
    TabOrder = 15
    OnClick = btnIgualClick
  end
  object btnDividir: TButton
    Left = 228
    Top = 221
    Width = 49
    Height = 49
    Caption = '/'
    TabOrder = 16
    OnClick = btnDividirClick
  end
end

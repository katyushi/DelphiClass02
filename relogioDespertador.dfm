object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Relogio/Despertador'
  ClientHeight = 286
  ClientWidth = 270
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbdtCompleto: TLabel
    Left = 48
    Top = 40
    Width = 56
    Height = 13
    Caption = '99/99/9999'
  end
  object lbHoraAtual: TLabel
    Left = 88
    Top = 92
    Width = 86
    Height = 23
    Caption = '00:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Despertar: TLabel
    Left = 24
    Top = 141
    Width = 48
    Height = 13
    Caption = 'Despertar'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 270
    Height = 286
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = 5
  end
  object edtHorDesp: TEdit
    Left = 24
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object rgControle: TRadioGroup
    Left = 165
    Top = 141
    Width = 97
    Height = 100
    Caption = 'Controle'
    Items.Strings = (
      'Desligado'
      'Ligado')
    TabOrder = 1
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 152
    Top = 40
  end
end

object FormHint: TFormHint
  Left = 408
  Top = 201
  BorderStyle = bsNone
  Caption = 'FormHint'
  ClientHeight = 142
  ClientWidth = 275
  Color = clInfoBk
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  OnClick = FormClick
  OnHide = FormHide
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 39
    Height = 13
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    OnClick = FormClick
  end
  object Label2: TLabel
    Left = 8
    Top = 22
    Width = 32
    Height = 13
    Caption = 'Label2'
    Transparent = True
    OnClick = FormClick
  end
  object Label3: TLabel
    Left = 8
    Top = 42
    Width = 32
    Height = 13
    Caption = 'Label3'
    Transparent = True
    OnClick = FormClick
  end
  object Label4: TLabel
    Left = 8
    Top = 63
    Width = 32
    Height = 13
    Caption = 'Label4'
    Transparent = True
    OnClick = FormClick
  end
  object Label5: TLabel
    Left = 8
    Top = 83
    Width = 32
    Height = 13
    Caption = 'Label5'
    Transparent = True
    OnClick = FormClick
  end
  object Label6: TLabel
    Left = 8
    Top = 104
    Width = 32
    Height = 13
    Caption = 'Label6'
    Transparent = True
    OnClick = FormClick
  end
  object Label7: TLabel
    Left = 8
    Top = 124
    Width = 32
    Height = 13
    Caption = 'Label7'
    Transparent = True
    OnClick = FormClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 240
    Top = 48
  end
end

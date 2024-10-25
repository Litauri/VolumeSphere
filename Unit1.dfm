object MainForm: TMainForm
  Left = 963
  Top = 306
  Width = 316
  Height = 239
  Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077' '#1086#1073#1098#1077#1084#1072' '#1096#1072#1088#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 10
    Width = 112
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1088#1072#1076#1080#1091#1089' '#1096#1072#1088#1072':'
  end
  object LabelResult: TLabel
    Left = 10
    Top = 100
    Width = 3
    Height = 13
  end
  object EditRadius: TEdit
    Left = 10
    Top = 30
    Width = 100
    Height = 21
    TabOrder = 0
  end
  object ButtonCalculate: TButton
    Left = 10
    Top = 60
    Width = 75
    Height = 25
    Caption = #1042#1099#1095#1080#1089#1083#1080#1090#1100
    TabOrder = 1
    OnClick = ButtonCalculateClick
  end
end

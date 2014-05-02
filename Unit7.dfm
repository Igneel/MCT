object Form7: TForm7
  Left = 309
  Top = 227
  BorderStyle = bsDialog
  Caption = #1056#1072#1079#1073#1088#1086#1089' '#1079#1085#1072#1095#1077#1085#1080#1081
  ClientHeight = 435
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 256
    Width = 33
    Height = 16
    Caption = 'Mu ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 280
    Width = 77
    Height = 16
    Caption = #1057#1088#1077#1076#1085#1077#1077' ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 304
    Width = 43
    Height = 16
    Caption = #1057#1050#1054' ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Top = 328
    Width = 60
    Height = 16
    Caption = #1057#1050#1054' % ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 408
    Top = 264
    Width = 46
    Height = 16
    Caption = 'Fmin ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 408
    Top = 288
    Width = 77
    Height = 16
    Caption = #1057#1088#1077#1076#1085#1077#1077' ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 408
    Top = 312
    Width = 43
    Height = 16
    Caption = #1057#1050#1054' ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 408
    Top = 336
    Width = 60
    Height = 16
    Caption = #1057#1050#1054' % ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Chart2: TChart
    Left = 400
    Top = 0
    Width = 400
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1060#1091#1085#1082#1094#1080#1103)
    Legend.LegendStyle = lsSeries
    Legend.Visible = False
    View3D = False
    TabOrder = 0
    object Series2: TPointSeries
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = 33023
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Chart1: TChart
    Left = 0
    Top = 0
    Width = 400
    Height = 249
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'Mu')
    Legend.LegendStyle = lsSeries
    Legend.Visible = False
    View3D = False
    TabOrder = 1
    object Series1: TPointSeries
      Tag = 1
      Marks.ArrowLength = 0
      Marks.Visible = False
      SeriesColor = clRed
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      Pointer.Visible = True
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 336
    Top = 368
    Width = 105
    Height = 57
    Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 96
    Top = 256
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 504
    Top = 256
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 96
    Top = 280
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 5
  end
  object Edit4: TEdit
    Left = 504
    Top = 280
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 6
  end
  object Edit5: TEdit
    Left = 96
    Top = 304
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 7
  end
  object Edit6: TEdit
    Left = 504
    Top = 304
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 8
  end
  object Edit7: TEdit
    Left = 96
    Top = 328
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 9
  end
  object Edit8: TEdit
    Left = 504
    Top = 328
    Width = 177
    Height = 21
    ImeName = 'Russian'
    TabOrder = 10
  end
end

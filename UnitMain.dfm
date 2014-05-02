object Form1: TForm1
  Left = 152
  Top = 187
  BorderStyle = bsSingle
  Caption = #1050#1056#1058
  ClientHeight = 633
  ClientWidth = 1079
  Color = clBtnFace
  TransparentColorValue = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1079
    Height = 633
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1061#1086#1083#1083'. '#1052#1072#1089#1096#1090#1072#1073
      object Label7: TLabel
        Left = 272
        Top = 424
        Width = 3
        Height = 13
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1061#1086#1083#1083'. '#1057#1087#1077#1082#1090#1088' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080
      ImageIndex = 1
      object GroupBox5: TGroupBox
        Left = 0
        Top = 8
        Width = 609
        Height = 593
        Caption = #1057#1087#1077#1082#1090#1088' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080
        Color = cl3DLight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label31: TLabel
          Left = 368
          Top = 224
          Width = 3
          Height = 15
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clLime
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 368
          Top = 192
          Width = 3
          Height = 15
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clLime
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 368
          Top = 144
          Width = 3
          Height = 15
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clLime
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 368
          Top = 112
          Width = 3
          Height = 15
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clLime
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 368
          Top = 64
          Width = 3
          Height = 15
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clLime
          Font.Height = -12
          Font.Name = 'Times New Roman'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object Chart3: TChart
          Left = 8
          Top = 24
          Width = 561
          Height = 361
          Cursor = crCross
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Text.Strings = (
            '')
          OnClickSeries = Chart3ClickSeries
          BottomAxis.Logarithmic = True
          BottomAxis.Title.Caption = #1055#1086#1076#1074#1080#1078#1085#1086#1089#1090#1100', '#1084'^2/'#1042'/'#1089
          BottomAxis.Title.Font.Charset = RUSSIAN_CHARSET
          BottomAxis.Title.Font.Color = clBlack
          BottomAxis.Title.Font.Height = -12
          BottomAxis.Title.Font.Name = 'Times New Roman'
          BottomAxis.Title.Font.Style = []
          LeftAxis.Title.Caption = '1/(Om*m)'
          LeftAxis.Title.Font.Charset = RUSSIAN_CHARSET
          LeftAxis.Title.Font.Color = clBlack
          LeftAxis.Title.Font.Height = -12
          LeftAxis.Title.Font.Name = 'Times New Roman'
          LeftAxis.Title.Font.Style = [fsItalic]
          Legend.Visible = False
          View3D = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          OnMouseMove = Chart3MouseMove
          object Label22: TLabel
            Left = 8
            Top = 8
            Width = 3
            Height = 15
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object LineSeries1: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clBlue
            LineHeight = 20
            LinePen.Width = 4
            Pointer.InflateMargins = True
            Pointer.Style = psDiagCross
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
          object Series5: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            LinePen.Width = 4
            Pointer.InflateMargins = True
            Pointer.Style = psDiagCross
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
        object StringGrid3: TStringGrid
          Left = 8
          Top = 392
          Width = 561
          Height = 104
          ColCount = 3
          RowCount = 4
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnSelectCell = StringGrid3SelectCell
          ColWidths = (
            128
            154
            157)
        end
        object Button8: TButton
          Left = 457
          Top = 404
          Width = 105
          Height = 81
          Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1090#1072#1073#1083#1080#1094#1091
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          WordWrap = True
          OnClick = Button8Click
        end
        object GroupBox7: TGroupBox
          Left = 8
          Top = 496
          Width = 177
          Height = 89
          Caption = #1044#1072#1085#1085#1099#1077
          TabOrder = 3
          object Button7: TButton
            Left = 8
            Top = 24
            Width = 153
            Height = 25
            Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button7Click
          end
        end
        object GroupBox10: TGroupBox
          Left = 200
          Top = 496
          Width = 177
          Height = 89
          Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
          TabOrder = 4
          object Button15: TButton
            Left = 8
            Top = 24
            Width = 153
            Height = 25
            Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = Button15Click
          end
          object Button16: TButton
            Left = 8
            Top = 56
            Width = 153
            Height = 25
            Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Button16Click
          end
        end
        object ButtonNext1: TButton
          Left = 440
          Top = 536
          Width = 75
          Height = 25
          Caption = #1044#1072#1083#1077#1077
          TabOrder = 5
          OnClick = ButtonNext1Click
        end
      end
      object GroupBox6: TGroupBox
        Left = 616
        Top = 8
        Width = 345
        Height = 593
        Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090#1099' '#1090#1077#1085#1079#1086#1088#1072' '#1087#1088#1086#1074#1086#1076#1080#1084#1086#1089#1090#1080
        Color = cl3DLight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Chart6: TChart
          Left = 8
          Top = 304
          Width = 313
          Height = 281
          BackWall.Brush.Color = clWhite
          BackWall.Brush.Style = bsClear
          Title.Font.Charset = RUSSIAN_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsItalic]
          Title.Text.Strings = (
            #1055#1086#1087#1077#1088#1077#1095#1085#1072#1103' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' Gxy')
          BottomAxis.Title.Caption = #1052#1072#1075#1085#1080#1090#1085#1086#1077' '#1087#1086#1083#1077', '#1058#1083
          BottomAxis.Title.Font.Charset = RUSSIAN_CHARSET
          BottomAxis.Title.Font.Color = clBlack
          BottomAxis.Title.Font.Height = -12
          BottomAxis.Title.Font.Name = 'Times New Roman'
          BottomAxis.Title.Font.Style = []
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Maximum = 875.000000000000000000
          LeftAxis.Minimum = 71.000000000000000000
          LeftAxis.Title.Caption = '1/(Om*m)'
          LeftAxis.Title.Font.Charset = RUSSIAN_CHARSET
          LeftAxis.Title.Font.Color = clBlack
          LeftAxis.Title.Font.Height = -12
          LeftAxis.Title.Font.Name = 'Times New Roman'
          LeftAxis.Title.Font.Style = [fsItalic]
          Legend.Alignment = laBottom
          Legend.LegendStyle = lsSeries
          Legend.ShadowColor = -1
          Legend.ShadowSize = 0
          Legend.Visible = False
          View3D = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object LineSeries4: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            SeriesColor = clRed
            Title = 'Gxy'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
          object PointSeries2: TPointSeries
            Marks.ArrowLength = 0
            Marks.Visible = False
            SeriesColor = clGreen
            Title = 'ExpXY'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
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
        object Chart5: TChart
          Left = 8
          Top = 24
          Width = 313
          Height = 273
          BackWall.Brush.Color = clWhite
          Title.Font.Charset = RUSSIAN_CHARSET
          Title.Font.Color = clBlue
          Title.Font.Height = -12
          Title.Font.Name = 'Times New Roman'
          Title.Font.Style = [fsItalic]
          Title.Text.Strings = (
            #1055#1088#1086#1076#1086#1083#1100#1085#1072#1103' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' Gxx')
          BottomAxis.Title.Caption = #1052#1072#1075#1085#1080#1090#1085#1086#1077' '#1087#1086#1083#1077', '#1058#1083
          BottomAxis.Title.Font.Charset = RUSSIAN_CHARSET
          BottomAxis.Title.Font.Color = clBlack
          BottomAxis.Title.Font.Height = -12
          BottomAxis.Title.Font.Name = 'Times New Roman'
          BottomAxis.Title.Font.Style = []
          LeftAxis.Automatic = False
          LeftAxis.AutomaticMaximum = False
          LeftAxis.AutomaticMinimum = False
          LeftAxis.Maximum = 875.000000000000000000
          LeftAxis.Minimum = 71.000000000000000000
          LeftAxis.Title.Caption = '1/(Om*m)'
          LeftAxis.Title.Font.Charset = RUSSIAN_CHARSET
          LeftAxis.Title.Font.Color = clBlack
          LeftAxis.Title.Font.Height = -12
          LeftAxis.Title.Font.Name = 'Times New Roman'
          LeftAxis.Title.Font.Style = [fsItalic]
          Legend.Alignment = laBottom
          Legend.LegendStyle = lsSeries
          Legend.ShadowColor = -1
          Legend.ShadowSize = 0
          Legend.Visible = False
          View3D = False
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 1
          object LineSeries3: TLineSeries
            Marks.ArrowLength = 8
            Marks.Visible = False
            PercentFormat = '##0.##,%'
            SeriesColor = clRed
            Title = 'Gxx'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.DateTime = False
            XValues.Name = 'X'
            XValues.Multiplier = 1.000000000000000000
            XValues.Order = loAscending
            YValues.DateTime = False
            YValues.Name = 'Y'
            YValues.Multiplier = 1.000000000000000000
            YValues.Order = loNone
          end
          object PointSeries1: TPointSeries
            Marks.ArrowLength = 0
            Marks.Visible = False
            SeriesColor = clGreen
            Title = 'ExpXX'
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
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
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1061#1086#1083#1083'. '#1052#1085#1086#1075#1086#1079#1086#1085#1085#1072#1103' '#1087#1086#1076#1075#1086#1085#1082#1072
      ImageIndex = 4
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 1071
        Height = 605
        ActivePage = TabSheet10
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet9: TTabSheet
          Caption = #1044#1072#1085#1085#1099#1077
          OnShow = TabSheet9Show
          object Label41: TLabel
            Left = 248
            Top = 0
            Width = 136
            Height = 19
            Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1092#1072#1081#1083#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 392
            Top = 0
            Width = 4
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object GroupBox8: TGroupBox
            Left = 8
            Top = 24
            Width = 233
            Height = 169
            Caption = #1044#1072#1085#1085#1099#1077
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Button10: TButton
              Left = 16
              Top = 24
              Width = 193
              Height = 33
              Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button10Click
            end
            object Button12: TButton
              Left = 16
              Top = 120
              Width = 193
              Height = 33
              Caption = #1048#1079' '#1057#1087#1077#1082#1090#1088#1072' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button12Click
            end
            object Button27: TButton
              Left = 16
              Top = 72
              Width = 193
              Height = 33
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = Button27Click
            end
          end
          object Memo6: TMemo
            Left = 248
            Top = 24
            Width = 801
            Height = 537
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
          end
        end
        object TabSheet10: TTabSheet
          Caption = #1055#1086#1076#1075#1086#1085#1082#1072
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold, fsItalic]
          ImageIndex = 1
          ParentFont = False
          object Label34: TLabel
            Left = 768
            Top = 488
            Width = 16
            Height = 19
            Caption = 'p1'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 360
            Top = 400
            Width = 64
            Height = 19
            Caption = #1060#1091#1085#1082#1094#1080#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 952
            Top = 488
            Width = 16
            Height = 19
            Caption = 'p2'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label33: TLabel
            Left = 592
            Top = 488
            Width = 9
            Height = 19
            Caption = 'n'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 952
            Top = 400
            Width = 42
            Height = 19
            Caption = 'Mu p2'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 768
            Top = 400
            Width = 42
            Height = 19
            Caption = 'Mu p1'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 568
            Top = 400
            Width = 35
            Height = 19
            Caption = 'Mu n'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object GroupBox12: TGroupBox
            Left = 0
            Top = 485
            Width = 225
            Height = 89
            Caption = #1055#1086#1076#1075#1086#1085#1082#1072
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Button18: TButton
              Left = 16
              Top = 56
              Width = 193
              Height = 25
              Caption = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1072#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button18Click
            end
            object Button17: TButton
              Left = 16
              Top = 24
              Width = 193
              Height = 25
              Caption = #1054#1076#1085#1086#1082#1088#1072#1090#1085#1072#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button17Click
            end
          end
          object GroupBox13: TGroupBox
            Left = 0
            Top = 408
            Width = 225
            Height = 73
            Caption = #1042#1077#1089
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label43: TLabel
              Left = 48
              Top = 16
              Width = 28
              Height = 19
              Caption = 'Gxx'
            end
            object Label44: TLabel
              Left = 144
              Top = 16
              Width = 27
              Height = 19
              Caption = 'Gxy'
            end
            object Edit7: TEdit
              Left = 32
              Top = 40
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 0
              Text = '10'
            end
            object Edit8: TEdit
              Left = 128
              Top = 40
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 1
              Text = '0,01'
            end
          end
          object MemoMnog4: TMemo
            Left = 880
            Top = 424
            Width = 177
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 2
            WordWrap = False
          end
          object MemoMnog7: TMemo
            Left = 880
            Top = 504
            Width = 177
            Height = 65
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 3
            WordWrap = False
          end
          object MemoMnog6: TMemo
            Left = 696
            Top = 504
            Width = 177
            Height = 65
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 4
            WordWrap = False
          end
          object MemoMnog5: TMemo
            Left = 496
            Top = 504
            Width = 193
            Height = 65
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 5
            WordWrap = False
          end
          object MemoMnog3: TMemo
            Left = 696
            Top = 424
            Width = 177
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 6
            WordWrap = False
          end
          object MemoMnog2: TMemo
            Left = 496
            Top = 424
            Width = 193
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 7
            WordWrap = False
          end
          object MemoMnog1: TMemo
            Left = 304
            Top = 424
            Width = 185
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 8
            WordWrap = False
          end
          object Chart4: TChart
            Left = 0
            Top = 0
            Width = 545
            Height = 393
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1055#1088#1086#1076#1086#1083#1100#1085#1072#1103' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' Gxx')
            Legend.Alignment = laBottom
            View3D = False
            TabOrder = 9
            object Series7: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = #1058#1077#1086#1088'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series8: TPointSeries
              Marks.ArrowLength = 0
              Marks.Visible = False
              SeriesColor = clGreen
              Title = #1069#1082#1089#1087'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
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
          object Chart7: TChart
            Left = 542
            Top = 0
            Width = 521
            Height = 393
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1055#1086#1087#1077#1088#1077#1095#1085#1072#1103' '#1082#1086#1084#1087#1086#1085#1077#1085#1090#1072' Gxy')
            Legend.Alignment = laBottom
            View3D = False
            TabOrder = 10
            object Series9: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = #1058#1077#1086#1088'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series10: TPointSeries
              Marks.ArrowLength = 0
              Marks.Visible = False
              SeriesColor = clGreen
              Title = #1069#1082#1089#1087'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
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
          object GroupBox14: TGroupBox
            Left = 232
            Top = 485
            Width = 249
            Height = 89
            Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 11
            object Button19: TButton
              Left = 48
              Top = 24
              Width = 153
              Height = 25
              Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button19Click
            end
            object Button20: TButton
              Left = 48
              Top = 56
              Width = 153
              Height = 25
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button20Click
            end
          end
          object Pnl_Pr_Hall8: TPanel
            Left = 480
            Top = 360
            Width = 129
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentBackground = False
            ParentFont = False
            TabOrder = 12
          end
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1043#1077#1086#1084#1077#1090#1088#1080#1103' '#1060#1072#1088#1072#1076#1077#1103
      ImageIndex = 2
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1071
        Height = 605
        ActivePage = TabSheet6
        Align = alClient
        MultiLine = True
        ParentShowHint = False
        ShowHint = False
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet6: TTabSheet
          Caption = #1044#1072#1085#1085#1099#1077
          OnShow = TabSheet6Show
          object Label38: TLabel
            Left = 360
            Top = 0
            Width = 136
            Height = 19
            Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1092#1072#1081#1083#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 504
            Top = 0
            Width = 4
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object GroupBox15: TGroupBox
            Left = 8
            Top = 24
            Width = 233
            Height = 169
            Caption = #1044#1072#1085#1085#1099#1077
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Button22: TButton
              Left = 16
              Top = 24
              Width = 193
              Height = 33
              Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WordWrap = True
              OnClick = Button22Click
            end
            object Button21: TButton
              Left = 16
              Top = 120
              Width = 193
              Height = 33
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              WordWrap = True
              OnClick = Button21Click
            end
            object Button31: TButton
              Left = 16
              Top = 72
              Width = 193
              Height = 33
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = Button31Click
            end
          end
          object Memo16: TMemo
            Left = 248
            Top = 24
            Width = 801
            Height = 537
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
          end
        end
        object TabSheet7: TTabSheet
          Caption = #1055#1086#1076#1075#1086#1085#1082#1072
          ImageIndex = 1
          object Label36: TLabel
            Left = 760
            Top = 480
            Width = 76
            Height = 19
            Caption = #1055#1086#1076#1082#1083#1072#1076#1082#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 392
            Top = 480
            Width = 64
            Height = 19
            Caption = #1060#1091#1085#1082#1094#1080#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 584
            Top = 480
            Width = 22
            Height = 19
            Caption = 'Mu'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 976
            Top = 480
            Width = 11
            Height = 19
            Caption = 'K'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object GroupBox16: TGroupBox
            Left = 0
            Top = 384
            Width = 145
            Height = 89
            Caption = #1055#1086#1076#1075#1086#1085#1082#1072
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Button24: TButton
              Left = 8
              Top = 56
              Width = 121
              Height = 25
              Caption = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1072#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button24Click
            end
            object Button23: TButton
              Left = 8
              Top = 24
              Width = 121
              Height = 25
              Caption = #1054#1076#1085#1086#1082#1088#1072#1090#1085#1072#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button23Click
            end
          end
          object Memo15: TMemo
            Left = 712
            Top = 504
            Width = 177
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 1
            WordWrap = False
          end
          object Chart11: TChart
            Left = 152
            Top = 0
            Width = 905
            Height = 473
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1060#1086#1090#1086#1087#1088#1086#1074#1086#1076#1080#1084#1086#1089#1090#1100' '#1074' '#1075#1077#1086#1084#1077#1090#1088#1080#1080' '#1060#1072#1088#1072#1076#1077#1103)
            BottomAxis.Automatic = False
            BottomAxis.AutomaticMaximum = False
            BottomAxis.AutomaticMinimum = False
            BottomAxis.ExactDateTime = False
            BottomAxis.Maximum = 2.000000000000000000
            BottomAxis.MinorTickCount = 4
            BottomAxis.MinorTickLength = 3
            BottomAxis.StartPosition = 1.000000000000000000
            BottomAxis.EndPosition = 99.000000000000000000
            Legend.Alignment = laBottom
            View3D = False
            TabOrder = 2
            object Series_FP: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = #1058#1077#1086#1088'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series_FP_Exp: TPointSeries
              Marks.ArrowLength = 0
              Marks.Visible = False
              SeriesColor = clGreen
              Title = #1069#1082#1089#1087'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
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
          object Memo14: TMemo
            Left = 520
            Top = 504
            Width = 177
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 3
            WordWrap = False
          end
          object Memo10: TMemo
            Left = 344
            Top = 504
            Width = 169
            Height = 57
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 4
            WordWrap = False
          end
          object Edit6: TEdit
            Left = 904
            Top = 504
            Width = 145
            Height = 57
            AutoSize = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            TabOrder = 5
          end
          object GroupBox17: TGroupBox
            Left = 0
            Top = 480
            Width = 185
            Height = 89
            Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
            object Button25: TButton
              Left = 16
              Top = 24
              Width = 153
              Height = 25
              Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button25Click
            end
            object Button26: TButton
              Left = 16
              Top = 56
              Width = 153
              Height = 25
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button26Click
            end
          end
          object GroupBox23: TGroupBox
            Left = 0
            Top = 0
            Width = 145
            Height = 377
            Caption = #1042#1077#1089
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            object Label55: TLabel
              Left = 8
              Top = 24
              Width = 28
              Height = 19
              Caption = 'B=0'
            end
            object Label56: TLabel
              Left = 8
              Top = 88
              Width = 40
              Height = 19
              Caption = 'B=0,2'
            end
            object Label57: TLabel
              Left = 8
              Top = 120
              Width = 40
              Height = 19
              Caption = 'B=0,4'
            end
            object Label58: TLabel
              Left = 8
              Top = 152
              Width = 40
              Height = 19
              Caption = 'B=0,6'
            end
            object Label59: TLabel
              Left = 8
              Top = 184
              Width = 40
              Height = 19
              Caption = 'B=0,8'
            end
            object Label60: TLabel
              Left = 8
              Top = 216
              Width = 28
              Height = 19
              Caption = 'B=1'
            end
            object Label61: TLabel
              Left = 8
              Top = 248
              Width = 40
              Height = 19
              Caption = 'B=1,2'
            end
            object Label62: TLabel
              Left = 8
              Top = 280
              Width = 40
              Height = 19
              Caption = 'B=1,4'
            end
            object Label63: TLabel
              Left = 8
              Top = 312
              Width = 40
              Height = 19
              Caption = 'B=1,6'
            end
            object Label65: TLabel
              Left = 8
              Top = 344
              Width = 28
              Height = 19
              Caption = 'B=2'
            end
            object Label64: TLabel
              Left = 8
              Top = 56
              Width = 40
              Height = 19
              Caption = 'B=0,1'
            end
            object EditVes1: TEdit
              Left = 72
              Top = 24
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 0
              Text = '1'
            end
            object EditVes8: TEdit
              Left = 72
              Top = 248
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 1
              Text = '1'
            end
            object EditVes3: TEdit
              Left = 72
              Top = 88
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 2
              Text = '1'
            end
            object EditVes2: TEdit
              Left = 72
              Top = 56
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 3
              Text = '1'
            end
            object EditVes5: TEdit
              Left = 72
              Top = 152
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 4
              Text = '1'
            end
            object EditVes4: TEdit
              Left = 72
              Top = 120
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 5
              Text = '1'
            end
            object EditVes6: TEdit
              Left = 72
              Top = 184
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 6
              Text = '1'
            end
            object EditVes7: TEdit
              Left = 72
              Top = 216
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 7
              Text = '1'
            end
            object EditVes11: TEdit
              Left = 72
              Top = 344
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 8
              Text = '1'
            end
            object EditVes10: TEdit
              Left = 72
              Top = 312
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 9
              Text = '1'
            end
            object EditVes9: TEdit
              Left = 72
              Top = 280
              Width = 57
              Height = 24
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ImeName = 'Russian'
              ParentFont = False
              TabOrder = 10
              Text = '1'
            end
          end
          object Pnl_Pr_Farad: TPanel
            Left = 464
            Top = 432
            Width = 129
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentBackground = False
            ParentFont = False
            TabOrder = 8
          end
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1043#1077#1086#1084#1077#1090#1088#1080#1103' '#1060#1086#1081#1075#1090#1072
      ImageIndex = 3
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 1071
        Height = 605
        ActivePage = TabSheet8
        Align = alClient
        Style = tsFlatButtons
        TabOrder = 0
        object TabSheet8: TTabSheet
          Caption = ' '#1044#1072#1085#1085#1099#1077
          OnShow = TabSheet8Show
          object Label45: TLabel
            Left = 360
            Top = 0
            Width = 136
            Height = 19
            Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1092#1072#1081#1083#1072
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Label46: TLabel
            Left = 504
            Top = 0
            Width = 4
            Height = 19
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object GroupBox18: TGroupBox
            Left = 8
            Top = 24
            Width = 233
            Height = 169
            Caption = #1044#1072#1085#1085#1099#1077
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Button28: TButton
              Left = 16
              Top = 120
              Width = 193
              Height = 33
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              WordWrap = True
              OnClick = Button28Click
            end
            object Button4: TButton
              Left = 16
              Top = 24
              Width = 193
              Height = 33
              Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button4Click
            end
            object Button30: TButton
              Left = 16
              Top = 72
              Width = 193
              Height = 33
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              WordWrap = True
              OnClick = Button30Click
            end
          end
          object Memo7: TMemo
            Left = 248
            Top = 24
            Width = 801
            Height = 537
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object GroupBox21: TGroupBox
            Left = 6
            Top = 200
            Width = 235
            Height = 177
            Caption = 'U'#1092#1087
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 2
            object Label47: TLabel
              Left = 24
              Top = 24
              Width = 144
              Height = 19
              Caption = #1052#1072#1089#1096#1090#1072#1073' '#1089#1072#1084#1086#1087#1080#1089#1094#1072
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label48: TLabel
              Left = 104
              Top = 54
              Width = 31
              Height = 19
              Caption = #1042'/'#1089#1084
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 24
              Top = 88
              Width = 142
              Height = 19
              Caption = #1052#1072#1089#1096#1090#1072#1073' '#1091#1089#1080#1083#1080#1090#1077#1083#1103
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label50: TLabel
              Left = 104
              Top = 118
              Width = 20
              Height = 19
              Caption = #1084#1042
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
            object ComboBox3: TComboBox
              Left = 32
              Top = 48
              Width = 65
              Height = 27
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ImeName = 'Russian'
              ItemHeight = 19
              MaxLength = 6
              ParentFont = False
              TabOrder = 0
              Text = '0,2'
              Items.Strings = (
                '0,2'
                '0,1'
                '0,02'
                '0,002')
            end
            object ComboBox4: TComboBox
              Left = 32
              Top = 112
              Width = 65
              Height = 27
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ImeName = 'Russian'
              ItemHeight = 19
              MaxLength = 6
              ParentFont = False
              TabOrder = 1
              Text = '1'
              Items.Strings = (
                '0,1'
                '0,3'
                '1')
            end
          end
          object GroupBox22: TGroupBox
            Left = 6
            Top = 384
            Width = 235
            Height = 177
            Caption = 'U'#1092#1084#1101
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 3
            object Label51: TLabel
              Left = 24
              Top = 24
              Width = 144
              Height = 19
              Caption = #1052#1072#1089#1096#1090#1072#1073' '#1089#1072#1084#1086#1087#1080#1089#1094#1072
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label52: TLabel
              Left = 104
              Top = 54
              Width = 31
              Height = 19
              Caption = #1042'/'#1089#1084
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
            object Label53: TLabel
              Left = 24
              Top = 88
              Width = 142
              Height = 19
              Caption = #1052#1072#1089#1096#1090#1072#1073' '#1091#1089#1080#1083#1080#1090#1077#1083#1103
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = [fsItalic]
              ParentFont = False
            end
            object Label54: TLabel
              Left = 104
              Top = 118
              Width = 20
              Height = 19
              Caption = #1084#1042
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clWindowText
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
            end
            object ComboBox5: TComboBox
              Left = 32
              Top = 48
              Width = 65
              Height = 27
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ImeName = 'Russian'
              ItemHeight = 19
              MaxLength = 6
              ParentFont = False
              TabOrder = 0
              Text = '0,1'
              Items.Strings = (
                '0,2'
                '0,1'
                '0,02'
                '0,002')
            end
            object ComboBox6: TComboBox
              Left = 32
              Top = 112
              Width = 65
              Height = 27
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ImeName = 'Russian'
              ItemHeight = 19
              MaxLength = 6
              ParentFont = False
              TabOrder = 1
              Text = '1'
              Items.Strings = (
                '0,1'
                '0,3'
                '1')
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1055#1086#1076#1075#1086#1085#1082#1072
          ImageIndex = 1
          object Label15: TLabel
            Left = 696
            Top = 488
            Width = 17
            Height = 19
            Caption = 'S2'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label13: TLabel
            Left = 456
            Top = 400
            Width = 64
            Height = 19
            Caption = #1060#1091#1085#1082#1094#1080#1103
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label14: TLabel
            Left = 696
            Top = 400
            Width = 17
            Height = 19
            Caption = 'S1'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label16: TLabel
            Left = 928
            Top = 400
            Width = 19
            Height = 19
            Caption = 'Tn'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 936
            Top = 488
            Width = 22
            Height = 19
            Caption = 'Mn'
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsBold, fsItalic]
            ParentFont = False
          end
          object Memo1: TMemo
            Left = 384
            Top = 424
            Width = 193
            Height = 57
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object Memo2: TMemo
            Left = 592
            Top = 424
            Width = 225
            Height = 57
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 1
          end
          object Memo3: TMemo
            Left = 592
            Top = 512
            Width = 225
            Height = 57
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object Memo4: TMemo
            Left = 832
            Top = 424
            Width = 225
            Height = 57
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 3
          end
          object Chart1: TChart
            Left = 550
            Top = 0
            Width = 513
            Height = 393
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1060#1086#1090#1086#1087#1088#1086#1074#1086#1076#1080#1084#1086#1089#1090#1100)
            Legend.Alignment = laBottom
            View3D = False
            TabOrder = 4
            object Series1: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = #1058#1077#1086#1088'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series2: TPointSeries
              Marks.ArrowLength = 0
              Marks.Visible = False
              SeriesColor = clGreen
              Title = #1069#1082#1089#1087'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
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
          object Chart2: TChart
            Left = 0
            Top = 0
            Width = 545
            Height = 393
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            Title.Text.Strings = (
              #1060#1086#1090#1086#1084#1072#1075#1085#1080#1090#1085#1099#1081' '#1101#1092#1092#1077#1082#1090)
            Legend.Alignment = laBottom
            View3D = False
            TabOrder = 5
            object Series3: TLineSeries
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              Title = #1058#1077#1086#1088'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series4: TPointSeries
              Marks.ArrowLength = 0
              Marks.Visible = False
              SeriesColor = clGreen
              Title = #1069#1082#1089#1087'.'
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
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
          object GroupBox19: TGroupBox
            Left = 0
            Top = 480
            Width = 225
            Height = 89
            Caption = #1055#1086#1076#1075#1086#1085#1082#1072
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 6
            object Button3: TButton
              Left = 12
              Top = 56
              Width = 193
              Height = 25
              Caption = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1072#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = N100Click
            end
            object Button2: TButton
              Left = 12
              Top = 24
              Width = 193
              Height = 25
              Caption = #1054#1076#1085#1086#1082#1088#1072#1090#1085#1072#1103
              Enabled = False
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button2Click
            end
          end
          object GroupBox20: TGroupBox
            Left = 232
            Top = 480
            Width = 209
            Height = 89
            Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
            Color = cl3DLight
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            object Button5: TButton
              Left = 16
              Top = 24
              Width = 169
              Height = 25
              Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = Button5Click
            end
            object Button29: TButton
              Left = 16
              Top = 56
              Width = 169
              Height = 25
              Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
              Font.Charset = RUSSIAN_CHARSET
              Font.Color = clNavy
              Font.Height = -16
              Font.Name = 'Times New Roman'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = Button29Click
            end
          end
          object Edit9: TEdit
            Left = 832
            Top = 512
            Width = 225
            Height = 57
            AutoSize = False
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ImeName = 'Russian'
            ParentFont = False
            TabOrder = 8
          end
          object Pnl_Pr_FME: TPanel
            Left = 480
            Top = 360
            Width = 129
            Height = 25
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentBackground = False
            ParentFont = False
            TabOrder = 9
          end
        end
        object TabSheet13: TTabSheet
          Caption = #1059#1089#1088#1077#1076#1085#1077#1085#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103
          ImageIndex = 2
          object Label73: TLabel
            Left = 320
            Top = 0
            Width = 409
            Height = 19
            Caption = #1059#1089#1088#1077#1076#1085#1077#1085#1085#1099#1077' '#1080' '#1086#1090#1084#1072#1089#1096#1090#1072#1073#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103' '#1060#1055' '#1080' '#1060#1052#1069
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = [fsItalic]
            ParentFont = False
          end
          object Memo8: TMemo
            Left = 136
            Top = 24
            Width = 801
            Height = 537
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ImeName = 'Russian'
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
    end
    object TabSheet12: TTabSheet
      Caption = #1052#1086#1076#1077#1083#1080#1088#1086#1074#1072#1085#1080#1077
      ImageIndex = 5
      object Label66: TLabel
        Left = 280
        Top = 416
        Width = 17
        Height = 19
        Caption = 'S1'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label67: TLabel
        Left = 152
        Top = 416
        Width = 19
        Height = 19
        Caption = 'Tn'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 280
        Top = 456
        Width = 17
        Height = 19
        Caption = 'S2'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label69: TLabel
        Left = 8
        Top = 456
        Width = 22
        Height = 19
        Caption = 'Mn'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label70: TLabel
        Left = 8
        Top = 416
        Width = 21
        Height = 19
        Caption = 'Mp'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label71: TLabel
        Left = 152
        Top = 456
        Width = 11
        Height = 19
        Caption = 'K'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Label72: TLabel
        Left = 416
        Top = 416
        Width = 11
        Height = 19
        Caption = 'E'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
      end
      object Chart12: TChart
        Left = 0
        Top = 0
        Width = 545
        Height = 393
        BackWall.Brush.Color = clWhite
        BackWall.Brush.Style = bsClear
        Title.Text.Strings = (
          #1060#1086#1090#1086#1084#1072#1075#1085#1080#1090#1085#1099#1081' '#1101#1092#1092#1077#1082#1090)
        Legend.Alignment = laBottom
        View3D = False
        TabOrder = 0
        object LineSeries2: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clRed
          Title = #1060#1055
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
          XValues.DateTime = False
          XValues.Name = 'X'
          XValues.Multiplier = 1.000000000000000000
          XValues.Order = loAscending
          YValues.DateTime = False
          YValues.Name = 'Y'
          YValues.Multiplier = 1.000000000000000000
          YValues.Order = loNone
        end
        object Series6: TLineSeries
          Marks.ArrowLength = 8
          Marks.Visible = False
          SeriesColor = clGreen
          Title = #1060#1052#1069
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          Pointer.Visible = False
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
      object Memo5: TMemo
        Left = 544
        Top = 0
        Width = 529
        Height = 393
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
      object Edit10: TEdit
        Left = 40
        Top = 416
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 2
        Text = '0,05'
      end
      object Edit11: TEdit
        Left = 40
        Top = 456
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 3
        Text = '5'
      end
      object Edit12: TEdit
        Left = 176
        Top = 416
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 4
        Text = '1e-9'
      end
      object Edit13: TEdit
        Left = 304
        Top = 416
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 5
        Text = '30'
      end
      object Edit14: TEdit
        Left = 304
        Top = 456
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 6
        Text = '50'
      end
      object GroupBox24: TGroupBox
        Left = 0
        Top = 496
        Width = 425
        Height = 97
        Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1089#1080#1075#1085#1072#1083
        Color = cl3DLight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        object Button32: TButton
          Left = 12
          Top = 56
          Width = 193
          Height = 25
          Caption = 'U'#1092#1084#1101
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = Button32Click
        end
        object Button33: TButton
          Left = 12
          Top = 24
          Width = 193
          Height = 25
          Caption = 'U'#1092#1087
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button33Click
        end
        object Button34: TButton
          Left = 220
          Top = 24
          Width = 193
          Height = 25
          Caption = 'U'#1092#1087' '#1080' U'#1092#1084#1101
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button34Click
        end
      end
      object Edit15: TEdit
        Left = 176
        Top = 456
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 8
        Text = '20'
      end
      object Edit16: TEdit
        Left = 440
        Top = 416
        Width = 81
        Height = 27
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = []
        ImeName = 'Russian'
        MaxLength = 6
        ParentFont = False
        TabOrder = 9
        Text = '330'
      end
      object GroupBox25: TGroupBox
        Left = 432
        Top = 448
        Width = 425
        Height = 153
        Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1079#1072#1074#1080#1089#1080#1084#1086#1089#1100' '#1060#1055'/'#1060#1052#1069
        Color = cl3DLight
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Times New Roman'
        Font.Style = [fsItalic]
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        object RadioGroup1: TRadioGroup
          Left = 16
          Top = 24
          Width = 177
          Height = 113
          Caption = #1054#1090' '#1095#1077#1075#1086
          Columns = 3
          ItemIndex = 2
          Items.Strings = (
            'Mp'
            'Mn'
            'Tn'
            'K'
            'S1'
            'S2'
            'E'
            'B')
          TabOrder = 0
        end
        object GroupBox26: TGroupBox
          Left = 200
          Top = 24
          Width = 209
          Height = 81
          Caption = #1042' '#1076#1080#1072#1087#1072#1079#1086#1085#1077
          TabOrder = 1
          object Edit17: TEdit
            Left = 16
            Top = 30
            Width = 81
            Height = 27
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ImeName = 'Russian'
            MaxLength = 6
            ParentFont = False
            TabOrder = 0
            Text = '1e-9'
          end
          object Edit18: TEdit
            Left = 112
            Top = 30
            Width = 81
            Height = 27
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Times New Roman'
            Font.Style = []
            ImeName = 'Russian'
            MaxLength = 6
            ParentFont = False
            TabOrder = 1
            Text = '1e-7'
          end
        end
        object Button35: TButton
          Left = 212
          Top = 120
          Width = 193
          Height = 25
          Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button35Click
        end
      end
    end
  end
  object ODFMEData: TOpenDialog
    Filter = '*.TXT, *.FDT|*.txt; *.fdt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*|'#1044#1072#1085#1085#1099#1077' '#1060#1052#1069' (*.FM)|*.fm'
    FilterIndex = 3
    Left = 996
  end
  object MainMenu1: TMainMenu
    Left = 376
    Top = 104
    object N10: TMenuItem
      Caption = #1061#1086#1083#1083'. '#1057#1087#1077#1082#1090#1088' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080
      object N11: TMenuItem
        Caption = #1044#1072#1085#1085#1099#1077
        object N12: TMenuItem
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          OnClick = Button7Click
        end
        object N13: TMenuItem
          Caption = #1048#1079' '#1061#1086#1083#1083'. '#1052#1072#1089#1096#1090#1072#1073
        end
      end
      object N15: TMenuItem
        Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099
        object N16: TMenuItem
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          OnClick = Button15Click
        end
        object N17: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          OnClick = Button16Click
        end
      end
    end
    object N25: TMenuItem
      Caption = #1061#1086#1083#1083'. '#1052#1085#1086#1075#1086#1079#1086#1085#1085#1072#1103' '#1087#1086#1076#1075#1086#1085#1082#1072
      object N26: TMenuItem
        Caption = #1044#1072#1085#1085#1099#1077
        object N27: TMenuItem
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          OnClick = Button10Click
        end
        object N3: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Enabled = False
          OnClick = Button27Click
        end
        object N28: TMenuItem
          Caption = #1048#1079' '#1057#1087#1077#1082#1090#1088#1072' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080
          OnClick = Button12Click
        end
      end
      object N29: TMenuItem
        Caption = #1055#1086#1076#1075#1086#1085#1082#1072
        Enabled = False
        object N30: TMenuItem
          Caption = #1054#1076#1085#1086#1082#1088#1072#1090#1085#1072#1103
          OnClick = Button17Click
        end
        object N31: TMenuItem
          Caption = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1072#1103
          OnClick = Button18Click
        end
      end
      object N32: TMenuItem
        Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
        OnClick = N32Click
      end
    end
    object N5: TMenuItem
      Caption = #1043#1077#1086#1084#1077#1090#1088#1080#1103' '#1060#1072#1088#1072#1076#1077#1103
      object N34: TMenuItem
        Caption = #1044#1072#1085#1085#1099#1077
        object N36: TMenuItem
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          OnClick = Button22Click
        end
        object N37: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Enabled = False
          OnClick = Button21Click
        end
      end
      object N6: TMenuItem
        Caption = #1055#1086#1076#1075#1086#1085#1082#1072
        Enabled = False
        object N9: TMenuItem
          Caption = #1054#1076#1085#1086#1082#1088#1072#1090#1085#1072#1103
          OnClick = Button23Click
        end
        object N33: TMenuItem
          Caption = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1072#1103
          OnClick = Button24Click
        end
      end
      object N35: TMenuItem
        Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
        OnClick = N35Click
      end
    end
    object N1: TMenuItem
      Caption = #1043#1077#1086#1084#1077#1090#1088#1080#1103' '#1060#1086#1081#1075#1090#1072
      object N39: TMenuItem
        Caption = #1044#1072#1085#1085#1099#1077
        object N40: TMenuItem
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
          OnClick = Button4Click
        end
        object N41: TMenuItem
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
          Enabled = False
          OnClick = Button28Click
        end
      end
      object N2: TMenuItem
        Caption = #1055#1086#1076#1075#1086#1085#1082#1072
        Enabled = False
        object N38: TMenuItem
          Caption = #1054#1076#1085#1086#1082#1088#1072#1090#1085#1072#1103
          OnClick = N2Click
        end
        object N7: TMenuItem
          Caption = #1052#1085#1086#1075#1086#1082#1088#1072#1090#1085#1072#1103
          OnClick = N100Click
        end
      end
      object N8: TMenuItem
        Caption = #1043#1080#1089#1090#1086#1075#1088#1072#1084#1084#1099
        OnClick = N8Click
      end
    end
  end
  object OpenDialog2: TOpenDialog
    Filter = 
      #1060#1072#1081#1083#1099' '#1082#1086#1084#1087#1086#1085#1077#1085#1090' '#1090#1077#1085#1079#1086#1088#1072' (*.OUT)|*.txt; *.fdt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*|'#1060#1072#1081#1083#1099 +
      ' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1080#1079' "'#1061#1086#1083#1083'. '#1052#1072#1089#1096#1090#1072#1073'" (*.HM)|*.hm'
    FilterIndex = 3
    Left = 1028
  end
  object OpenDialog3: TOpenDialog
    Filter = 
      '*.TXT, *.HDT|*.txt; *.hdt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*|'#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1061#1086#1083#1083'. '#1057#1087#1077#1082#1090#1088' ' +
      #1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080' (*.HS)|*.hs'
    FilterIndex = 3
    Left = 1052
  end
  object OpenDialogHollLoad: TOpenDialog
    Filter = 
      #1061#1086#1083#1083#1086#1074#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077' (*.DATH)|*.dath|'#1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083' (*.txt)|*.txt|'#1042 +
      #1089#1077' '#1092#1072#1081#1083#1099' (*.*)|*.*'
    Left = 916
    Top = 168
  end
  object SDHallData: TSaveDialog
    DefaultExt = 'dath'
    Filter = #1061#1086#1083#1083#1086#1074#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077' (*.DATH)|*.dath'
    Left = 660
    Top = 80
  end
  object OpenDialogHRes: TOpenDialog
    Filter = #1061#1086#1083#1083'. '#1052#1072#1089#1096#1090#1072#1073' (*.HM)|*.hm'
    Left = 856
    Top = 65528
  end
  object SDHallResults: TSaveDialog
    DefaultExt = 'hm'
    Filter = #1061#1086#1083#1083'. '#1052#1072#1089#1096#1090#1072#1073' (*.HM)|*.hm'
    Left = 736
    Top = 64
  end
  object SDSpektrRes: TSaveDialog
    DefaultExt = 'hs'
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1061#1086#1083#1083'. '#1057#1087#1077#1082#1090#1088' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080' (*.HS)|*.hs|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 608
    Top = 40
  end
  object ODSpektrRes: TOpenDialog
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1061#1086#1083#1083'. '#1057#1087#1077#1082#1090#1088' '#1087#1086#1076#1074#1080#1078#1085#1086#1089#1090#1080' (*.HS)|*.hs|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 888
    Top = 65528
  end
  object SDHall8Res: TSaveDialog
    DefaultExt = 'hmr'
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1084#1085#1086#1075#1086#1079#1086#1085#1085#1086#1081' '#1087#1086#1076#1075#1086#1085#1082#1080' (*.HMR)|*.hmr'
    Left = 832
    Top = 40
  end
  object ODFaradData: TOpenDialog
    Filter = #1044#1072#1085#1085#1099#1077' '#1060#1055#1093' (*.MPC)|*.mpc|'#1058#1077#1082#1089#1090' (*.TXT)|*.txt|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 920
    Top = 65528
  end
  object SDFaradRes: TSaveDialog
    DefaultExt = 'mpcr'
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1076#1075#1086#1085#1082#1080' (*.MPCR)|*.mpcr|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 560
    Top = 40
  end
  object ODFaradRes: TOpenDialog
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1076#1075#1086#1085#1082#1080' (*.MPCR)|*.mpcr|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 944
    Top = 65528
  end
  object ODHall8Res: TOpenDialog
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1084#1085#1086#1075#1086#1079#1086#1085#1085#1086#1081' '#1087#1086#1076#1075#1086#1085#1082#1080' (*.HMR)|*.hmr|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 828
    Top = 144
  end
  object SDFMERes: TSaveDialog
    DefaultExt = 'fmr'
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1076#1075#1086#1085#1082#1080' '#1060#1055' '#1080' '#1060#1052#1069' (*.FMR)|*.fmr'
    Left = 792
    Top = 40
  end
  object ODFMERes: TOpenDialog
    Filter = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1087#1086#1076#1075#1086#1085#1082#1080' '#1060#1055' '#1080' '#1060#1052#1069' (*.FMR)|*.fmr|'#1042#1089#1077' '#1092#1072#1081#1083#1099'|*.*'
    Left = 776
    Top = 120
  end
  object SDFMEData: TSaveDialog
    DefaultExt = 'fm'
    Filter = #1044#1072#1085#1085#1099#1077' '#1060#1052#1069' (*.FM)|*.fm'
    Left = 940
    Top = 40
  end
  object SDFaradData: TSaveDialog
    DefaultExt = 'mpc'
    Filter = #1044#1072#1085#1085#1099#1077' '#1060#1055#1093' (*.MPC)|*.mpc'
    Left = 884
    Top = 40
  end
end

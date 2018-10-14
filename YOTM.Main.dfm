object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 600
  ClientWidth = 1020
  Color = 3684408
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 15921906
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 16
  object PanelRight: TPanel
    Left = 570
    Top = 0
    Width = 450
    Height = 600
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object PanelClient: TPanel
      Left = 0
      Top = 40
      Width = 450
      Height = 560
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        450
        560)
      object PanelTimes: TPanel
        Left = 450
        Top = 0
        Width = 450
        Height = 560
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        object DrawPanel: TDrawPanel
          Left = 0
          Top = 380
          Width = 450
          Height = 180
          Caption = 'DrawPanel'
          DefaultPaint = False
          OnPaint = DrawPanelPaint
          Align = alBottom
          Color = 3684408
          ParentBackground = False
          TabOrder = 0
          OnMouseDown = DrawPanelMouseDown
          OnMouseMove = DrawPanelMouseMove
          OnMouseUp = DrawPanelMouseUp
        end
        object TableExTimes: TTableEx
          Left = 0
          Top = 40
          Width = 450
          Height = 340
          Align = alClient
          BorderStyle = bsNone
          Color = 3684408
          DefaultRowHeight = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15921906
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnDrawCellData = TableExTimesDrawCellData
          ItemIndex = -1
          OnItemColClick = TableExTimesItemColClick
          GetData = TableExTimesGetData
          Columns = <
            item
              Width = 32
              MinWidth = 32
              AsButton = True
            end
            item
              Caption = #1042#1088#1077#1084#1103
              Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
            end
            item
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Width = 317
              MinWidth = 150
            end>
          CanNoSelect = False
          ItemCount = 1
          LineColor = 3684408
          LineColorXor = 4079166
          LineHotColor = 2763306
          LineSelColor = 4934475
          ColumnsColor = 3684408
          FontHotLine.Charset = DEFAULT_CHARSET
          FontHotLine.Color = 15921906
          FontHotLine.Height = -15
          FontHotLine.Name = 'Tahoma'
          FontHotLine.Style = []
          FontLine.Charset = DEFAULT_CHARSET
          FontLine.Color = 15921906
          FontLine.Height = -15
          FontLine.Name = 'Tahoma'
          FontLine.Style = []
          FontSelLine.Charset = DEFAULT_CHARSET
          FontSelLine.Color = 15921906
          FontSelLine.Height = -15
          FontSelLine.Name = 'Tahoma'
          FontSelLine.Style = []
          ColumnsFont.Charset = DEFAULT_CHARSET
          ColumnsFont.Color = clWhite
          ColumnsFont.Height = -15
          ColumnsFont.Name = 'Tahoma'
          ColumnsFont.Style = []
          DrawColumnBorded = False
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 450
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object ButtonFlatTaskEnd: TButtonFlat
            AlignWithMargins = True
            Left = 357
            Top = 3
            Width = 90
            Height = 34
            Margins.Left = 0
            Align = alRight
            Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100
            ColorNormal = clGray
            ColorOver = 6381921
            ColorPressed = 3815994
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -13
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -13
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            OnClick = ButtonFlatTaskEndClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 0
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
          end
          object ButtonFlatTaskStart: TButtonFlat
            AlignWithMargins = True
            Left = 264
            Top = 3
            Width = 90
            Height = 34
            Align = alRight
            Caption = #1053#1072#1095#1072#1090#1100
            ColorNormal = clGray
            ColorOver = 6381921
            ColorPressed = 3815994
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -13
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -13
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            OnClick = ButtonFlatTaskStartClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
          end
          object ButtonFlatAddTime: TButtonFlat
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 33
            Height = 34
            Align = alLeft
            Caption = ''
            ColorNormal = clGray
            ColorOver = 6381921
            ColorPressed = 3815994
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -13
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -13
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            ImageIndentLeft = 4
            ImageIndex = 11
            Images = ImageList24
            OnClick = ButtonFlatAddTimeClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 2
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
          end
        end
      end
      object PanelSettings: TPanel
        Left = 450
        Top = 0
        Width = 450
        Height = 560
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 9
          Width = 91
          Height = 16
          Caption = #1056#1072#1073#1086#1095#1080#1081' '#1076#1077#1085#1100' '#1089
        end
        object Label2: TLabel
          Left = 179
          Top = 9
          Width = 14
          Height = 16
          Caption = #1076#1086
        end
        object DateTimePickerStart: TDateTimePicker
          Left = 113
          Top = 6
          Width = 60
          Height = 24
          Date = 43371.375000000000000000
          Format = 'HH:mm'
          Time = 43371.375000000000000000
          Color = 5592405
          Kind = dtkTime
          TabOrder = 0
          OnChange = DateTimePickerEndChange
        end
        object DateTimePickerEnd: TDateTimePicker
          Left = 199
          Top = 6
          Width = 60
          Height = 24
          Date = 43371.750000000000000000
          Format = 'HH:mm'
          Time = 43371.750000000000000000
          Color = 5592405
          Kind = dtkTime
          TabOrder = 1
          OnChange = DateTimePickerEndChange
        end
      end
      object PanelCalendar: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 560
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 2
        object DrawGrid1: TDrawGrid
          Left = 0
          Top = 0
          Width = 450
          Height = 560
          Align = alClient
          BorderStyle = bsNone
          Color = 3684408
          ColCount = 7
          DefaultColWidth = 63
          DefaultRowHeight = 65
          DefaultDrawing = False
          DrawingStyle = gdsGradient
          FixedCols = 0
          RowCount = 6
          FixedRows = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15921906
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = []
          GridLineWidth = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
          ParentFont = False
          ScrollBars = ssNone
          TabOrder = 0
          OnDrawCell = DrawGrid1DrawCell
          ColWidths = (
            63
            63
            63
            63
            63
            63
            63)
          RowHeights = (
            65
            65
            65
            65
            65
            65)
        end
      end
    end
    object sDragBar1: TsDragBar
      Left = 0
      Top = 0
      Width = 450
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = ' '
      Color = 3026478
      ParentBackground = False
      TabOrder = 1
      SkinData.SkinSection = 'DRAGBAR'
      DraggedControl = Owner
      object Shape2: TShape
        Left = 372
        Top = 0
        Width = 2
        Height = 40
        Align = alRight
        Brush.Color = 3684408
        Pen.Color = 3684408
        ExplicitLeft = 380
        ExplicitTop = -1
        ExplicitHeight = 38
      end
      object Shape3: TShape
        Left = 256
        Top = 0
        Width = 2
        Height = 40
        Align = alRight
        Brush.Color = 3684408
        Pen.Color = 3684408
        ExplicitLeft = 251
        ExplicitTop = -1
        ExplicitHeight = 38
      end
      object ButtonFlatClose: TButtonFlat
        AlignWithMargins = True
        Left = 415
        Top = 3
        Width = 32
        Height = 34
        Align = alRight
        Caption = ''
        ColorNormal = 3026478
        ColorOver = 3026601
        ColorPressed = 2237053
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndex = 0
        Images = ImageList24
        OnClick = ButtonFlatCloseClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        Visible = False
      end
      object ButtonFlatMinimize: TButtonFlat
        AlignWithMargins = True
        Left = 377
        Top = 3
        Width = 32
        Height = 34
        Align = alRight
        Caption = ''
        ColorNormal = 3026478
        ColorOver = clGray
        ColorPressed = 7303023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndex = 7
        Images = ImageList24
        OnClick = ButtonFlatMinimizeClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        Visible = False
      end
      object ButtonFlatSettings: TButtonFlat
        Left = 334
        Top = 0
        Width = 38
        Height = 40
        Align = alRight
        Caption = ''
        ColorNormal = 3026478
        ColorOver = 14196229
        ColorPressed = 12027396
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 7
        ImageIndex = 3
        Images = ImageList24
        OnClick = ButtonFlatSettingsClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 2
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
      object ButtonFlatTimes: TButtonFlat
        Left = 258
        Top = 0
        Width = 38
        Height = 40
        Align = alRight
        Caption = ''
        ColorNormal = 3684408
        ColorOver = 14196229
        ColorPressed = 12027396
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 7
        ImageIndex = 8
        Images = ImageList24
        OnClick = ButtonFlatTimesClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 3
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
      object ButtonFlatCalendar: TButtonFlat
        Left = 296
        Top = 0
        Width = 38
        Height = 40
        Align = alRight
        Caption = ''
        ColorNormal = 3026478
        ColorOver = 14196229
        ColorPressed = 12027396
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 7
        ImageIndex = 9
        Images = ImageList24
        OnClick = ButtonFlatCalendarClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 4
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
    end
  end
  object PanelTasks: TPanel
    Left = 0
    Top = 0
    Width = 570
    Height = 600
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Shape1: TShape
      Left = 568
      Top = 80
      Width = 2
      Height = 520
      Align = alRight
      Brush.Color = 3026478
      Pen.Color = 3026478
      ExplicitLeft = 0
      ExplicitTop = 39
      ExplicitHeight = 561
    end
    object sDragBar3: TsDragBar
      Left = 0
      Top = 0
      Width = 570
      Height = 40
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = ' '
      Color = 3026478
      ParentBackground = False
      TabOrder = 0
      SkinData.SkinSection = 'DRAGBAR'
      DraggedControl = Owner
      object Label7: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Width = 121
        Height = 34
        Margins.Left = 10
        Align = alLeft
        Caption = 'YOT Manager'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8947848
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitHeight = 24
      end
    end
    object TableExTasks: TTableEx
      Left = 0
      Top = 80
      Width = 568
      Height = 520
      Align = alClient
      BorderStyle = bsNone
      Color = 3684408
      DefaultRowHeight = 40
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15921906
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ItemIndex = -1
      GetData = TableExTasksGetData
      OnEdit = TableExTasksEdit
      OnEditOk = TableExTasksEditOk
      Columns = <
        item
          Width = 32
          MinWidth = 32
        end
        item
          Caption = #1047#1072#1076#1072#1095#1072
          Width = 300
          MinWidth = 100
        end
        item
          Caption = #1050#1086#1075#1076#1072
          Width = 235
        end>
      CanNoSelect = False
      VisibleEdit = False
      ItemCount = 1
      LineColor = 3684408
      LineColorXor = 4079166
      LineHotColor = 2763306
      LineSelColor = 4934475
      ColumnsColor = 3684408
      FontHotLine.Charset = DEFAULT_CHARSET
      FontHotLine.Color = 15921906
      FontHotLine.Height = -15
      FontHotLine.Name = 'Tahoma'
      FontHotLine.Style = []
      FontLine.Charset = DEFAULT_CHARSET
      FontLine.Color = 15921906
      FontLine.Height = -15
      FontLine.Name = 'Tahoma'
      FontLine.Style = []
      FontSelLine.Charset = DEFAULT_CHARSET
      FontSelLine.Color = 15921906
      FontSelLine.Height = -15
      FontSelLine.Name = 'Tahoma'
      FontSelLine.Style = []
      ColumnsFont.Charset = DEFAULT_CHARSET
      ColumnsFont.Color = clWhite
      ColumnsFont.Height = -15
      ColumnsFont.Name = 'Tahoma'
      ColumnsFont.Style = []
      DrawColumnBorded = False
    end
    object Panel2: TPanel
      Left = 0
      Top = 40
      Width = 570
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object ButtonFlat6: TButtonFlat
        AlignWithMargins = True
        Left = 534
        Top = 3
        Width = 33
        Height = 34
        Margins.Left = 0
        Align = alRight
        Caption = ''
        ColorNormal = clGray
        ColorOver = 6381921
        ColorPressed = 3815994
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndex = 5
        Images = ImageList24
        OnClick = ButtonFlat6Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
      object Calendar: TCalendarPicker
        AlignWithMargins = True
        Left = 394
        Top = 3
        Height = 34
        Margins.Left = 0
        Margins.Right = 0
        Align = alRight
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWindowText
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 3881787
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        OnChange = CalendarChange
        OnCloseUp = CalendarCloseUp
        ParentFont = False
        TabOrder = 1
        TextHint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1090#1091
      end
      object ButtonFlat7: TButtonFlat
        AlignWithMargins = True
        Left = 361
        Top = 3
        Width = 33
        Height = 34
        Margins.Left = 0
        Margins.Right = 0
        Align = alRight
        Caption = ''
        ColorNormal = clGray
        ColorOver = 6381921
        ColorPressed = 3815994
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndex = 4
        Images = ImageList24
        OnClick = ButtonFlat7Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 2
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
      object ButtonFlat1: TButtonFlat
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 94
        Height = 34
        Align = alLeft
        Caption = #1047#1072#1076#1072#1095#1072
        ColorNormal = clGray
        ColorOver = 6381921
        ColorPressed = 3815994
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -13
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -13
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        ImageIndentLeft = 4
        ImageIndentRight = 2
        ImageIndex = 11
        Images = ImageList24
        OnClick = ButtonFlat1Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 3
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
      end
    end
  end
  object TimerRepaint: TTimer
    Interval = 30
    OnTimer = TimerRepaintTimer
    Left = 80
    Top = 200
  end
  object TimerTime: TTimer
    OnTimer = TimerTimeTimer
    Left = 80
    Top = 272
  end
  object ImageList24: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 76
    Top = 128
    Bitmap = {
      494C01010C005800A40018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404174343435D5C5C
      5C7E5E5E5E835656566D17171734000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001919192D7E7E7EABDCDCDCFEE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFB0B0B0DA3F3F3F5C01010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C30757575948E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18B8B8B9F3E3E
      3E5C000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000035353558C6C6C6EBE3E3E3FFD4D4D4FB9D9D9DE18181
      81C47F7F7FBC898989D6C2C2C2F3E1E1E1FEDDDDDDFB787878A00303030A0000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDADA
      DAFB444444600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002A2A2A47D1D1D1F8E1E1E1FE979797DD242424560202020F0000
      000000000000010101040B0B0B31636363AED2D2D2FAE2E2E2FE7676769F0101
      0105000000000000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEB4C3D3FF505050A74F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F
      4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA49D8D7DDFE3E3
      E3FF7078809E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030A8484
      7DA9A6AAAAC62023233C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E1CB7B7B7E6E1E1E1FD808080C40404041900000000000000000000
      0000000000000000000000000000000000023838387DCFCFCFF8DEDEDEFE4444
      446600000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000303031103030314030303140303031403030310000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005F5F5F8AE2E2E2FEA9A9A9E40C0C0C260000000000000000000000000000
      00000000000000000002181818386A6A6AA50C0C0C1D585858A2E1E1E1FEB5B5
      B5DD07070710000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      0005BFAD9BE7C9C9C9E9C9C9C9E9C9C9C9E9A2A9ADD4050505127A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001020202090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0208AEAEAEDCE2E2E2FE42424282000000000000000000000000000000000000
      0000040404165E5E5E97CBCBCBF6D0D0D0FC262F365908080826BCBCBCF7DCDC
      DCFD32323249000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      0007D8C3AEFEE3E3E3FFE3E3E3FFE3E3E3FFC0C0C0E8060606167A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000013F3F
      3F72828282BA0606061200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      1531D0D0D0F7D0D0D0F80C0C0C32000000000000000000000000000000033A38
      3364B8B8B8EDDDDDDDFD909090CA1616163D00000000000000007F7F7FC6E2E2
      E2FE6262628C000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      0007D8C3AEFEE3E3E3FFE3E3E3FFE3E3E3FFC0C0C0E8060606167A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000246464679D7D7
      D7FDE3E3E3FF8E8E8EC508080815000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002624
      223ED9D8D8FEB0BBC6FD040404100000000000000000000000000303030FABAB
      A8DCC7C7C7F53E3E3E6F0303030B00000000000000000000000071665CADE3E3
      E3FF7475789E000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      0007D8C3AEFEE3E3E3FFE3E3E3FFE3E3E3FFC0C0C0E8060606167A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000146464679D3D3D3F9E0E0
      E0FED7D7D7FEE1E1E1FE8E8E8EC5060606120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0A071A2727274E2727274E2727274E2727274E2B2B2B5CB5B5
      B5ECE0E0E0FE4E4E4E902727274E2727274E2727274E2727274E16191D380000
      0000000000000000000000000000000000000000000000000000000000002825
      223DDBD9D7FEBABEC3FC0404041300000000000000000000000004040410ABAB
      ABDCA7A7A7D50303030C000000000000000000000000000000006E6863AFE3E3
      E3FF72767B9D000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000101
      0106D7C3AEFEE2E2E2FEE2E2E2FEE2E2E2FEB7BFC2E8060606147A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013F3F3F72D7D7D7FDE0E0E0FE7C7C
      7CB436363671CCCCCCF7E3E3E3FF898989C10606061200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000056422C69E3E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF8196ACC60000
      0003000000000000000000000000000000000000000000000000000000001010
      1029CBCBCBF2D6D6D6F91313133F00000000000000000000000004040410ABAB
      ABDCA7A7A7D50303030C000000000000000000000000000000008D8D8DD4E2E2
      E2FE58585881000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000101010600000007000000070000000700000005000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      000000000000000000000000000246464679D7D7D7FDE0E0E0FE767676AC0101
      010B0000000031313160C8C8C8F5E3E3E3FF8E8E8EC508080815000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000043342358B0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DEB2B2B2E2D6D6
      D6FDE2E2E2FEBBBBBBEDB0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DE667686A90000
      0002000000000000000000000000000000000000000000000000000000000101
      01049F9F9FD2E2E2E2FE5858589500000001000000000000000004040410ABAB
      ABDCA7A7A7D50303030C00000000000000000000000012121239CACACAF9D7D7
      D7FA2626263E000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      000000000000000000002B2B2951D0D0CFF8E0E0E0FE747474AC0404040F0000
      0000000000000000000131313160CCCCCCF7E1E1E1FE747878AE000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101040202020F0202020F0202020F0202020F0707071FACAC
      ACE0E0E0E0FE323232600202020F0202020F0202020F0202020F0101010A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000048484874E0E0E0FEBCBCBCEF1515153B000000000000000004040410ABAB
      ABDCA7A7A7D50303030C00000000000000000303030C767676BDE2E2E2FEA2A2
      A2CE03030308000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA5E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000005050510777A7AB7757B7DB40101010B000000000000
      000000000000000000000000000035353566AEA9A1E52020203D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000107070715A1A1A1D2E2E2E2FEA7A7A7E01414143900000000020202085353
      4A97454E5291010101060000000004040412636363A8DCDCDCFDD7D7D7F83030
      304D00000007000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFCBD3DBFF969696C5969696C3969696C3969696C3969696C39696
      96C3969696C3969696C3969696C3969696C3969696C3969696C3BFB6AFEAE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101040000000500000000000000000000
      0000000000000000000000000000000000000202020900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003333
      335E6E767ABF27272757BFBFBFEDE2E2E2FEB8B8B8F04A4A4A870F0F0F2D0303
      0314030303110707071E2626265D919191D3DDDDDDFDDDDDDDFD5C5C5C8C4E4C
      4B9277746FB3010101070000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000002020209B9B2
      AAEEE2E2E2FEA5A5A5E231313171ACACACDBE2E2E2FEE3E3E3FFC3C3C3FAB4B4
      B4E7B2B2B2E2B8B8B8F3DBDBDBFEE3E3E3FFD6D6D6F85757578A626262B5D7D7
      D7FBE0E0E0FE272F365C0000000000000000000000000000000000000000382B
      1D40E2DCD5FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000004040410ABAB
      ABDCE0E0E0FE2F2F2F5300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002222
      2241B8B8B8E2E3E3E3FFBBBBBBF22F2F2F6F52525280B1B1B1DADEDEDEFDE3E3
      E3FFE3E3E3FFE3E3E3FFC6C6C6EE838383AA2A2A2A5B7F7F7FCDE2E2E2FED9D9
      D9FA5F5F5F8B0000000100000000000000000000000000000000000000002020
      2038D5D5D5FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101044444
      3D59525656690D10101D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001717172A9C9C9CCEE2E2E2FECBCBCBF72C3039670303030D1E1E1E302727
      2751282828572323233F0E0E0E190F0907229C9A98DEE1E1E1FECBCBCBF24343
      4364000000030000000000000000000000000000000000000000000000000202
      0207838383AED9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9B9
      B9E01E1E1E2F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006060613848484B5A9B1B1E31010102600000000000000000000
      000000000000000000000000000001010106676763A3C1C1BDE9252525410000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000007282828387C7C7CA8E3E3E3FF9B9B9BCE38383840383838403838
      38403838384038383840383838405C5C5C87DCDCDCFDC2C2C2F2373737400909
      0917000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000050505051A0000000000000000000000000000
      0000000000000000000000000000000000000202020804040417000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A88E3E3E3FF7D8387BD00000000000000000000
      0000000000000000000000000000332F2B5DDCDAD9FDB8B8B8EC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A0F1B1B1B1F0C0F121600000000000000000000
      00000000000000000000000000000705030A1B1B1A1F1515151C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C30757575948E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18B8B8B9F3E3E
      3E5C000000030000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDADA
      DAFB444444600000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEB4C3D3FF505050A74F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F
      4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA49D8D7DDFE3E3
      E3FF7078809E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000024142427450515184000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C3C70706CA90808
      0815000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000146464679D3D3D3F9D9D9D9FC202831530000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002020209AEA69EE4E1E1E1FE8E8E
      8EC5060606120000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101060202020F0505051905050519050505190505
      05190505051905050519000000050000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000013F3F
      3F72D7D7D7FDE0E0E0FE7C7C7CB40101010B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000035353565CCCCCCF7E3E3
      E3FF898989C10606061200000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101065C585194B6B6B6F2B6B6B6F2B6B6B6F2B6B6
      B6F2B6B6B6F2A9AEB4F2121C283B0000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000246464679D7D7
      D7FDE0E0E0FE767676AC0101010B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000031313160C8C8
      C8F5E3E3E3FF8E8E8EC508080815000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101066C6A659AE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFD1D8DFFF1524303F0000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000146464679D3D3D3F9E0E0
      E0FE747474AC0404040F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000013131
      3160CCCCCCF7E1E1E1FE8E8E8EC5060606120000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106100F0B192020203020202030202020302020
      2030202020301D1E1F2F020306090000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000E0A071A2727274E2727274E2727274E2727274E2727274E2727
      274E2727274E2727274E2727274E2727274E2727274E2727274E16191D380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3D68D7D7D7FDE0E0E0FE8080
      80C40101010B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000036363671CDCDCDFCE3E3E3FF898989BD0404040B00000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101062C2A223B5656566756565667565656675656
      56675656566756565667565656675656566741494D5D010101067A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      00000000000056422C69E3E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF8196ACC60000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F2BB0B0B0E5E3E3E3FFBABA
      BAEB171717340000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010B757575B3DFDFDFFED9D9D9FD454545730000000100000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101066969699BE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFC0C0C0E8060606167A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      00000000000043342358B0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DEB0B0
      B0DEB0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DEB0B0B0DE667686A90000
      0002000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161633ADADADE1E3E3
      E3FFB3B3B3E31A1A1A3800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000404040F6F6F
      6FACDFDFDFFED4D4D4FA4C4C4C7A000000010000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF0101010640404084888888DE888888DE888888DE8888
      88DE888888DE888888DE888888DE888888DE737373CA0303030F7A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      000000000000010101040202020F0202020F0202020F0202020F0202020F0202
      020F0202020F0202020F0202020F0202020F0202020F0202020F0101010A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000016161633B0B0
      B0E5E2E2E2FEB3B3B3E317171734000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000101010B6F6F6FABDEDE
      DEFED9D9D9FD4C4C4C7A00000002000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA5E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F2BB0B0B0E5E3E3E3FFBABABAEB0F141A2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000057B7671B4DFDFDFFED9D9
      D9FD454545730000000100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFCBD3DBFF969696C5969696C3969696C3969696C3969696C39696
      96C3969696C3969696C3969696C3969696C3969696C3969696C3BFB6AFEAE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000016161633ACADADE1BCBDBDEC131619310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101047C7A77B7D2D2D1F94C4C
      4C7A000000010000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001213132C181B1B34000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050505102929254F0000
      0002000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E2DCD5FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      2038D5D5D5FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0207838383AED9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9B9
      B9E01E1E1E2F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000007282828387C7C7CA8E3E3E3FF9B9B9BCE38383840383838403838
      38403838384038383840383838405C5C5C87DCDCDCFDC2C2C2F2373737400909
      0917000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A88E3E3E3FF7D8387BD00000000000000000000
      0000000000000000000000000000332F2B5DDCDAD9FDB8B8B8EC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A0F1B1B1B1F0C0F121600000000000000000000
      00000000000000000000000000000705030A1B1B1A1F1515151C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C16585858805F5F
      5F885F5F5F885E5E5E872B2B2B43000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D2D2D4C8181819C8E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18D8D8DA0545454780606060F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003535355EDDDDDDFEE3E3
      E3FFE3E3E3FFE3E3E3FF848C94BF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000026262642CFCFCFF5E3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE1E1E1FE7373739D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000054545486E2E2E2FEE3E3
      E3FFE3E3E3FFE3E3E3FFB1B1B1E9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002F2F295742423F750000000000000000000000000000
      00000000000000000000000000000000000013131332535B5B97000000040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606195960609E060606120000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000057575784E2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB5B5B5E8000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000080808147F7F7FB048484877050505191B1B1B36A69E97D5E3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFC9D1D9FD424242690202020C242424507D7D7DB03535
      354E000000000000000000000000000000000000000000000000000000000000
      0000000000001E150E3ACECECEFAD8D8D8FB4D4D4D8000000000000000000000
      000000000000000000000000000016161635B1B1B1E5E3E3E3FF555D65970000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D209D9D9DD2E2E2E2FE8E8E8EC50808
      0815000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000060606092E2E2E2FEE3E3E3FFD0CECCFED9D4D2FEE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9BEC5FDE3E3E3FFE3E3E3FFB3B3
      B3DF080808140000000000000000000000000000000000000000000000000000
      0000000000000101010A717171ADDEDEDEFDD8D8D8FB4747477A000000030000
      0000000000000000000013131331B1B1B1E5E2E2E2FEB7B7B7E6161616320000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C219A9A9ACEE2E2E2FEE1DFDDFEE1E1E1FE8E8E
      8EC5060606120000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000001919
      1932C8C8C8F1E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE0E0
      E0FE5F5F5F880000000000000000000000000000000000000000000000000000
      000000000000000000000202020D717171ADE0E0E0FED6D6D6FA4747477A0000
      00000000000013131331ADADADE1E2E2E2FEB7B7B7E619191936000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060606199D9D9DD2E2E2E2FEC2C2C2F4544F4C93CCCCCCF7E3E3
      E3FF898989C10606061200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000008282
      82B6E2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDCDCDCFEA3A3
      A3E89A9A9ADAC5C5C5FBE2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFCECECEF61111112200000000000000000000000000000000000000000000
      00000000000000000000000000000101010A6A6A6AA9E0E0E0FED8D8D8FB4D4D
      4D8016161636B1B1B1E5E3E3E3FFB3B3B3E31616163200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C219D9D9DD2E2E2E2FEBBBBBBED2020204C0000000031313160C8C8
      C8F5E3E3E3FF8E8E8EC508080815000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000007474
      74ADDDDDDDFDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFC5C5C5F32E2E2E600000
      0002000000000A0A0A28888888CCE2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE2E2
      E2FEB7B7B7E61616162700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010A717171ADDEDEDEFDD8D8
      D8FBBDB5BDEFE2E2E2FEB7B7B7E6161616320000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6FB0E2E2E2FEBBBBBBED2323234F0000000000000000000000013131
      3160CCCCCCF7E1E1E1FE8E8E8EC5060606120000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      02094E4E4E83D0D0D0FAE3E3E3FFE3E3E3FFE2E2E2FE4A4A4A84000000010000
      000000000000000000000C0C0C29C0C0C0F8E3E3E3FFE3E3E3FFE2E2E2FE8C8C
      8CC30F0F0F250000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000202020D7A7373B8E0E0
      E0FDE3E3E3FFB6B6BEEF19191937000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101027888888D72020204C000000000000000000000000000000000000
      000035353565CCCCCCF7E3E3E3FF898989C10606061200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030CA7A7A7D7E3E3E3FFE3E3E3FFD8D8D8F91212123E000000000000
      00000000000000000000000000008D8D8DD2E3E3E3FFE3E3E3FFDFDFDFFE2B2B
      2B49000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161635B1B1B1E5E3E3
      E3FFE3E3E3FFD8D8D8FB4D4D4D80000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031313160C8C8C8F5E3E3E3FF8E8E8EC508080815000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000808081CAEAEAEE2E3E3E3FFE3E3E3FFDDDDDDFB1C1C1C4E000000000000
      00000000000000000000000000029A9A9AE2E3E3E3FFE3E3E3FFDFDFDFFE3737
      3762000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000013131331B1B1B1E5E2E2E2FEB7B7
      B7E67A747AB8DEDEDEFDD8D8D8FB4747477A0000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000131313160CCCCCCF7E1E1E1FE8E8E8EC5060606120000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000001515
      1530979797CDE0E0E0FEE3E3E3FFE3E3E3FFE3E3E3FF787878B40303030B0000
      000000000000000000012A2A2A60D6D6D6FCE3E3E3FFE3E3E3FFE3E3E3FFC5C5
      C5EF4141416D0000000200000000000000000000000000000000000000000000
      000000000000000000000000000013131331ADADADE1E2E2E2FEB7B7B7E61919
      19360202020D717171ADE0E0E0FED6D6D6FA4747477A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000035353565CCCCCCF7E3E3E3FF898989C10606
      0612000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      000000000000000000000000000000000000000000000000000000000000A4A4
      A4DDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDCDCDCFE767676B51515
      154C0E0E0E3C44444484C1C1C1F3E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFDBDBDBFE2626264100000000000000000000000000000000000000000000
      0000000000000000000016161635B1B1B1E5E3E3E3FFB3B3B3E3161616320000
      0000000000000101010A6A6A6AA9E0E0E0FED8D8D8FB4D4D4D80000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313160C8C8C8F5E3E3E3FF8E8E
      8EC5080808150000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A8AE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB9B9B9ED000000000000
      0000000000000000000000000000000000000000000000000000000000005353
      537FDFDFDFFEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFABABABDB0000000500000000000000000000000000000000000000000000
      000000000000100C0A29B1B1B1E5E2E2E2FEB7B7B7E616161632000000000000
      000000000000000000000101010A717171ADDEDEDEFDD8D8D8FB3F4245750000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000131313160CCCCCCF7DDDD
      DDFC484848740000000000000000000000000000000000000000000000000000
      000000000000000000043333335F7A7A7AAB7A7A7AAB7A7A7AAB7A7A7AAB7A7A
      7AAB7A7A7AAB7A7A7AAB7A7A7AAB7A7A7AAB7A7A7AAB6565659C020202090000
      0000000000000000000000000000000000000000000000000000000000000606
      0612A9A9A9D9E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFD8D8
      D8FA353535540000000000000000000000000000000000000000000000000000
      000000000000100A061B9E9E9ED6B7B7B7E61919193600000000000000000000
      00000000000000000000000000000202020D717171ADD0D0D0FB2D3238580000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003A352F646066
      6392030303080000000000000000000000000000000000000000000000000000
      00000000000042332457B1B1B1DCB1B1B1DCB1B1B1DCB1B1B1DCB1B1B1DCB1B1
      B1DCB1B1B1DCB1B1B1DCB1B1B1DCB1B1B1DCB1B1B1DCB1B1B1DC667685A80000
      0002000000000000000000000000000000000000000000000000000000000000
      00003636365ADBDBDBFECFCFCFFA848381B89E9996D1E2E2E2FEE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE2E2E3FFC9C9C9F16B6F77AAB1B1B1E8E2E2E2FE8B8B
      8BB7010101040000000000000000000000000000000000000000000000000000
      000000000000000000000A0A061B0E0E0B2A0000000000000000000000000000
      0000000000000000000000000000000000000101010A0E15153A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000056432D69E3E2E2FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF8196ACC60000
      0003000000000000000000000000000000000000000000000000000000000000
      000001010104313131510606061C0000000000000003746C64ACE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFB9C2CAF9040404170000000001010106272727511010
      101B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F0D0A202929295B2929295B2B2B2B62A5A3A2D5E3E2E1FFE3E3
      E3FFE3E3E3FFE3E3E3FFD0D2D5F74949497F2929295B2929295B191C1E420000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000048484876E0E0E0FEE3E3
      E3FFE3E3E3FFE3E3E3FFA4A4A4D9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000100C0918383735403838
      384038383840383838401B202530000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002A2A2A4BD9D9D9FDE2E2
      E2FEE2E2E2FEE2E2E2FE747C84AB000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001070707210808
      082808080828080808270101010A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFE003FF00007FFFFFFFFFFFF
      FC001FE00007FFFFFFFFE7FFF8180FE00007FFFFFFFFC3FFF07E0FE1F047FFFF
      FFFFC3FFF0F807E1E007FFE7FFFFC3FFE1F007E1E007FFC3FFFFC3FFE1C0C7E1
      E007FF81FFFFC3FFE1C1C7E1E007FF00FFF8001FE1C3C7E1E007FE007FF8000F
      E1C3C7E1F047FC083FF8000FE0C387E1FFC7FC183FF8001FF0C307E1FFC7FC3E
      3FFFC3FFE04207E00007FE7F7FFFC3FFE00003E00007FFFFFFFFC3FFC00003E0
      0007FFFFFFFFC3FFE00003E00007FFFFFFFFC3FFF00007E00007FFFFFFFFFFFF
      F87E1FF0000FFFFFFFFFFFFFFCFF3FFC7E3FFFFFFFFFFFFFFFFFFFFC7E3FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007FFFFFF
      FFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFE00007FFFFFFFFF0FFFF8FFFE1FF
      C7FFFFFFFFE0FFFF07FFE001C7FFFFFFFFC0FFFF83FFE001C7FFFFFFFF81FFFF
      C1FFE001C7FFFFFFFF03FFFFC0FFE001C7F8001FFF07FFFFF07FE00007F8000F
      FF07FFFFE07FE00007F8000FFF83FFFFC0FFE00007F8001FFFC1FFFF81FFE1FF
      C7FFFFFFFFE0FFFF03FFE00007FFFFFFFFF0FFFF07FFE00007FFFFFFFFF9FFFF
      8FFFE00007FFFFFFFFFFFFFFFFFFE00007FFFFFFFFFFFFFFFFFFE00007FFFFFF
      FFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFC7E3FFFFFFFFFFFFFFFFFFFFC7E
      3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFE003FFF81FF
      FFFFFFFFFFFFFC003FFF81FFFCFF1FFF1FFFFC003FF0000FF87E1FFE0FFFFC00
      3FF00007F81C1FFC07FFFC003FE00007FC183FF803FFFC003FE00003FE007FF0
      41FFFC003FE00803FF00FFF0C0FFFC003FE01C07FF81FFF1F07FFC003FF03E0F
      FF81FFFFF83FFC003FF03C0FFF007FFFF81FFC003FE01803FE007FFFFE0FFC00
      3FE00003FC183FFFFF07FC003FE00003F83C1FFFFF07F8001FE00007F87E1FFF
      FFC7F8000FF00007FCFF3FFFFFFFF8000FF1008FFFFFFFFFFFFFF8001FFF81FF
      FFFFFFFFFFFFFF81FFFF81FFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 82
    Top = 344
  end
  object PopupMenuTaskStart: TPopupMenu
    Left = 88
    Top = 408
    object MenuItemTaskStartFrom: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1079#1072#1076#1072#1095#1091' '#1089'...'
      OnClick = MenuItemTaskStartFromClick
    end
  end
end

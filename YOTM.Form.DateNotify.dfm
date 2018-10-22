inherited FormDateAndNotify: TFormDateAndNotify
  Caption = 'FormDateAndNotify'
  ClientHeight = 513
  ClientWidth = 335
  Visible = True
  StyleElements = []
  ExplicitWidth = 335
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 19
  inherited DragBarTop: TsDragBar
    Width = 331
    DraggedControl = Owner
    ExplicitWidth = 331
    inherited LabelCaption: TLabel
      Width = 151
      Caption = #1044#1072#1090#1072' '#1080' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077
      ExplicitWidth = 151
    end
    inherited ButtonFlatClose: TButtonFlat
      Left = 306
      ExplicitLeft = 306
    end
  end
  inherited PanelBottom: TPanel
    Top = 476
    Width = 331
    ExplicitTop = 476
    ExplicitWidth = 331
    inherited ButtonFlatCancel: TButtonFlat
      Left = 231
      ExplicitLeft = 231
    end
    inherited ButtonFlatOK: TButtonFlat
      Left = 129
      ExplicitLeft = 129
    end
  end
  object CalendarView1: TCalendarView
    AlignWithMargins = True
    Left = 12
    Top = 39
    Width = 311
    Height = 343
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    BorderColor = 3684408
    BorderStyle = bsNone
    Color = 3684408
    Date = 43394.000000000000000000
    DisabledColor = 6974058
    FirstDayOfWeek = dwMonday
    FocusedColor = 2763306
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    HeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
    HeaderInfo.DaysOfWeekFont.Color = clWindowText
    HeaderInfo.DaysOfWeekFont.Height = -13
    HeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
    HeaderInfo.DaysOfWeekFont.Style = []
    HeaderInfo.Font.Charset = DEFAULT_CHARSET
    HeaderInfo.Font.Color = clWhite
    HeaderInfo.Font.Height = -20
    HeaderInfo.Font.Name = 'Segoe UI'
    HeaderInfo.Font.Style = []
    HeaderInfo.FontColor = 15658734
    HighlightColor = 4605510
    ParentFont = False
    ParentShowHint = False
    SelectionColor = 3966635
    ShowFirstOfGroupLabel = True
    ShowHint = False
    TabOrder = 2
    TodayColor = 3966635
  end
  object Panel1: TPanel
    Left = 2
    Top = 392
    Width = 331
    Height = 84
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    StyleElements = []
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 311
      Height = 40
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      BevelOuter = bvNone
      Color = 2565927
      ParentBackground = False
      TabOrder = 0
      StyleElements = []
      object Edit1: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 5
        Width = 267
        Height = 30
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 5
        Align = alClient
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BevelWidth = 4
        BorderStyle = bsNone
        ParentColor = True
        TabOrder = 0
        TextHint = #1042#1088#1077#1084#1103' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1103
        StyleElements = [seFont, seClient]
      end
      object ButtonFlat1: TButtonFlat
        AlignWithMargins = True
        Left = 272
        Top = 4
        Width = 34
        Height = 31
        Margins.Left = 0
        Margins.Top = 4
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alRight
        Caption = ''
        ColorNormal = 3684408
        ColorOver = 3684408
        ColorPressed = 3684408
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
        ImageIndex = 10
        Images = FormMain.ImageList24
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
    end
  end
end

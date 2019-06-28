inherited FormDateEdit: TFormDateEdit
  Caption = 'FormDateEdit'
  ClientHeight = 450
  ClientWidth = 350
  ExplicitWidth = 350
  ExplicitHeight = 450
  PixelsPerInch = 96
  TextHeight = 19
  inherited DragBarTop: TDragPanel
    Width = 346
    inherited LabelCaption: TLabel
      Width = 35
      Caption = #1044#1072#1090#1072
      ExplicitWidth = 35
    end
    inherited ButtonFlatClose: TButtonFlat
      Left = 321
    end
  end
  inherited PanelBottom: TPanel
    Top = 413
    Width = 346
    inherited ButtonFlatCancel: TButtonFlat
      Left = 246
    end
    inherited ButtonFlatOK: TButtonFlat
      Left = 144
    end
  end
  object CalendarView: TCalendarView
    AlignWithMargins = True
    Left = 12
    Top = 39
    Width = 326
    Height = 364
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
    ExplicitWidth = 311
    ExplicitHeight = 351
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form1'
  ClientHeight = 564
  ClientWidth = 693
  Color = clBtnFace
  DoubleBuffered = True
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
  object DateTimePickerStart: TDateTimePicker
    Left = 132
    Top = 8
    Width = 50
    Height = 21
    Date = 43371.375000000000000000
    Format = 'HH:mm'
    Time = 43371.375000000000000000
    Kind = dtkTime
    TabOrder = 0
    OnChange = DateTimePickerEndChange
  end
  object DateTimePickerEnd: TDateTimePicker
    Left = 132
    Top = 62
    Width = 50
    Height = 21
    Date = 43371.750000000000000000
    Format = 'HH:mm'
    Time = 43371.750000000000000000
    Kind = dtkTime
    TabOrder = 1
    OnChange = DateTimePickerEndChange
  end
  object DateTimePickerCur: TDateTimePicker
    Left = 132
    Top = 35
    Width = 50
    Height = 21
    Date = 43371.472916666680000000
    Format = 'HH:mm'
    Time = 43371.472916666680000000
    Kind = dtkTime
    TabOrder = 2
    OnChange = DateTimePickerCurChange
  end
  object Panel1: TPanel
    Left = 188
    Top = 0
    Width = 505
    Height = 564
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 178
    ExplicitHeight = 554
    object DrawPanel: TDrawPanel
      Left = 0
      Top = 384
      Width = 505
      Height = 180
      Caption = 'DrawPanel'
      DefaultPaint = False
      OnPaint = DrawPanelPaint
      Align = alBottom
      ParentBackground = False
      TabOrder = 0
      OnMouseDown = DrawPanelMouseDown
      OnMouseMove = DrawPanelMouseMove
      OnMouseUp = DrawPanelMouseUp
      ExplicitTop = 374
    end
    object TableEx1: TTableEx
      Left = 0
      Top = 0
      Width = 505
      Height = 384
      Align = alClient
      DefaultRowHeight = 25
      TabOrder = 1
      ItemIndex = -1
      GetData = TableEx1GetData
      Columns = <
        item
          Width = 32
          MinWidth = 32
        end
        item
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Width = 150
          MinWidth = 150
        end
        item
          Caption = #1042#1088#1077#1084#1103
          Width = 150
        end
        item
          Width = 168
        end>
      CanNoSelect = False
      ItemCount = 1
      FontHotLine.Charset = DEFAULT_CHARSET
      FontHotLine.Color = 2631720
      FontHotLine.Height = -11
      FontHotLine.Name = 'Tahoma'
      FontHotLine.Style = []
      FontLine.Charset = DEFAULT_CHARSET
      FontLine.Color = 2631720
      FontLine.Height = -11
      FontLine.Name = 'Tahoma'
      FontLine.Style = []
      FontSelLine.Charset = DEFAULT_CHARSET
      FontSelLine.Color = clWhite
      FontSelLine.Height = -11
      FontSelLine.Name = 'Tahoma'
      FontSelLine.Style = []
      ColumnsFont.Charset = DEFAULT_CHARSET
      ColumnsFont.Color = 2631720
      ColumnsFont.Height = -11
      ColumnsFont.Name = 'Tahoma'
      ColumnsFont.Style = []
    end
  end
  object Timer1: TTimer
    Interval = 20
    OnTimer = Timer1Timer
    Left = 312
    Top = 456
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 400
    Top = 456
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 246
  ClientWidth = 527
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
  object DrawPanel: TDrawPanel
    Left = 0
    Top = 35
    Width = 527
    Height = 211
    Caption = 'DrawPanel'
    DefaultPaint = False
    OnPaint = DrawPanelPaint
    Align = alBottom
    ParentBackground = False
    TabOrder = 0
    OnMouseMove = DrawPanelMouseMove
  end
  object DateTimePickerStart: TDateTimePicker
    Left = 8
    Top = 8
    Width = 50
    Height = 21
    Date = 43371.000000000000000000
    Format = 'HH:mm'
    Time = 43371.000000000000000000
    Kind = dtkTime
    TabOrder = 1
    OnChange = DateTimePickerEndChange
  end
  object DateTimePickerEnd: TDateTimePicker
    Left = 120
    Top = 8
    Width = 50
    Height = 21
    Date = 43371.999305555550000000
    Format = 'HH:mm'
    Time = 43371.999305555550000000
    Kind = dtkTime
    TabOrder = 2
    OnChange = DateTimePickerEndChange
  end
  object DateTimePickerCur: TDateTimePicker
    Left = 64
    Top = 8
    Width = 50
    Height = 21
    Date = 43371.472916666670000000
    Format = 'HH:mm'
    Time = 43371.472916666670000000
    Kind = dtkTime
    TabOrder = 3
    OnChange = DateTimePickerCurChange
  end
  object SpinEdit1: TlkSpinEdit
    Left = 192
    Top = 8
    Width = 57
    Height = 21
    MaxValue = 0
    MinValue = 0
    TabOrder = 4
    Value = 2
  end
  object SpinEdit2: TlkSpinEdit
    Left = 255
    Top = 8
    Width = 57
    Height = 21
    MaxValue = 0
    MinValue = 0
    TabOrder = 5
    Value = 2
  end
  object Timer1: TTimer
    Interval = 20
    OnTimer = Timer1Timer
    Left = 384
    Top = 56
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 328
    Top = 56
  end
end

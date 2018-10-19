inherited FormEditTime: TFormEditTime
  Caption = #1047#1072#1087#1080#1089#1100' '#1086' '#1088#1072#1073#1086#1090#1077
  ClientHeight = 191
  ClientWidth = 417
  ExplicitWidth = 417
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel [0]
    Left = 165
    Top = 56
    Width = 16
    Height = 19
    Caption = #8594
  end
  object Label2: TLabel [1]
    Left = 32
    Top = 56
    Width = 44
    Height = 19
    Caption = #1042#1088#1077#1084#1103
  end
  inherited DragBarTop: TsDragBar
    Width = 413
    DraggedControl = Owner
    inherited LabelCaption: TLabel
      Width = 120
      Caption = #1047#1072#1087#1080#1089#1100' '#1086' '#1088#1072#1073#1086#1090#1077
      ExplicitWidth = 120
    end
    inherited ButtonFlatClose: TButtonFlat
      Left = 388
    end
  end
  inherited PanelBottom: TPanel
    Top = 154
    Width = 413
    ExplicitTop = 285
    ExplicitWidth = 612
    inherited ButtonFlatCancel: TButtonFlat
      Left = 313
      ExplicitLeft = 512
    end
    inherited ButtonFlatOK: TButtonFlat
      Left = 211
      ExplicitLeft = 410
    end
  end
  object EditText: TEdit
    Left = 32
    Top = 96
    Width = 353
    Height = 27
    BevelInner = bvNone
    BevelKind = bkFlat
    BevelWidth = 3
    BorderStyle = bsNone
    Color = 3684408
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15724527
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TextHint = #1058#1077#1082#1089#1090' '#1088#1072#1073#1086#1090#1099
  end
  object DateTimePickerFrom: TDateTimePicker
    Left = 88
    Top = 52
    Width = 71
    Height = 27
    Date = 43385.591908275460000000
    Format = 'HH:mm'
    Time = 43385.591908275460000000
    Color = 3684408
    Kind = dtkTime
    ParentColor = True
    TabOrder = 3
  end
  object DateTimePickerTo: TDateTimePicker
    Left = 187
    Top = 52
    Width = 71
    Height = 27
    Date = 43385.591908275460000000
    Format = 'HH:mm'
    Time = 43385.591908275460000000
    Color = 3684408
    Kind = dtkTime
    ParentColor = True
    TabOrder = 4
  end
end

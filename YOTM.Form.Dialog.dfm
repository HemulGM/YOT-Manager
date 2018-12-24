inherited FormAnswer: TFormAnswer
  Caption = 'FormAnswer'
  ClientHeight = 189
  ClientWidth = 437
  ExplicitWidth = 437
  ExplicitHeight = 189
  PixelsPerInch = 96
  TextHeight = 19
  object LabelQuestion: TLabel [0]
    Left = 24
    Top = 56
    Width = 385
    Height = 73
    AutoSize = False
    Caption = #1042#1086#1087#1088#1086#1089'?'
    WordWrap = True
  end
  inherited DragBarTop: TDragPanel
    Width = 433
    ExplicitWidth = 433
    inherited LabelCaption: TLabel
      Width = 71
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077
      ExplicitWidth = 71
    end
    inherited ButtonFlatClose: TButtonFlat
      Left = 408
      ExplicitLeft = 408
    end
  end
  inherited PanelBottom: TPanel
    Top = 152
    Width = 433
    ExplicitTop = 152
    ExplicitWidth = 433
    inherited ButtonFlatCancel: TButtonFlat
      Left = 333
      Caption = #1053#1077#1090
      ExplicitLeft = 333
    end
    inherited ButtonFlatOK: TButtonFlat
      Left = 231
      Caption = #1044#1072
      ExplicitLeft = 231
    end
  end
end

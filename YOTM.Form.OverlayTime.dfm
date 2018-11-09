inherited FormTimeOverlay: TFormTimeOverlay
  Caption = 'FormTimeOverlay'
  ClientHeight = 40
  ClientWidth = 300
  FormStyle = fsStayOnTop
  Position = poDesigned
  OnCreate = FormCreate
  ExplicitWidth = 300
  ExplicitHeight = 40
  PixelsPerInch = 96
  TextHeight = 19
  inherited DragBarTop: TDragPanel
    Width = 296
    Height = 36
    Align = alClient
    ExplicitWidth = 296
    ExplicitHeight = 36
    inherited LabelCaption: TLabel
      Left = 65
      Width = 156
      Height = 28
      Align = alClient
      Caption = #1053#1086#1074#1072#1103' '#1079#1072#1076#1072#1095#1072
      ExplicitLeft = 65
      ExplicitWidth = 156
    end
    object LabelTime: TLabel [1]
      AlignWithMargins = True
      Left = 10
      Top = 3
      Width = 42
      Height = 28
      Margins.Left = 10
      Align = alLeft
      Caption = '09:11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8947848
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitHeight = 19
    end
    inherited ButtonFlatClose: TButtonFlat
      Left = 260
      Width = 36
      Height = 34
      ImageIndentLeft = 5
      ExplicitLeft = 260
      ExplicitWidth = 36
      ExplicitHeight = 34
    end
    object ButtonFlatSwitch: TButtonFlat
      Left = 224
      Top = 0
      Width = 36
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
      ImageIndentLeft = 5
      ImageIndex = 26
      Images = FormMain.ImageList24
      OnClick = ButtonFlatSwitchClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
    end
  end
end

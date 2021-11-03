inherited FormNotifyTask: TFormNotifyTask
  Caption = 'FormNotifyTask'
  ClientHeight = 193
  ClientWidth = 400
  FormStyle = fsStayOnTop
  Position = poDefault
  Visible = True
  ExplicitWidth = 400
  ExplicitHeight = 193
  PixelsPerInch = 96
  TextHeight = 19
  object Shape4: TShape [0]
    Left = 2
    Top = 148
    Width = 396
    Height = 2
    Align = alBottom
    Brush.Color = 3026478
    Pen.Color = 3026478
    ExplicitLeft = -226
    ExplicitTop = 0
    ExplicitWidth = 627
  end
  object LabelTime: TLabel [1]
    Left = 200
    Top = 112
    Width = 185
    Height = 19
    Alignment = taRightJustify
    AutoSize = False
    Caption = #1057#1077#1075#1086#1076#1085#1103', '#1074' 14:00'
  end
  inherited DragBarTop: TDragPanel
    Width = 396
    ExplicitWidth = 396
    inherited LabelCaption: TLabel
      Width = 97
      Caption = 'YOT Manager'
      ExplicitWidth = 97
    end
    inherited ButtonFlatClose: TButtonFlat
      Left = 358
      ExplicitLeft = 358
    end
  end
  object Panel1: TPanel
    Left = 2
    Top = 150
    Width = 396
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    ExplicitTop = 117
    object ButtonFlatHoldOverMore: TButtonFlat
      AlignWithMargins = True
      Left = 177
      Top = 10
      Width = 20
      Height = 21
      Margins.Left = 0
      Margins.Top = 10
      Margins.Bottom = 10
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
      GroupItemKind = giRight
      IgnorBounds = True
      ImageIndentLeft = -3
      ImageIndex = 10
      Images = FormMain.ImageList24
      OnClick = ButtonFlatHoldOverMoreClick
      RoundRectParam = 10
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 0
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatHoldOverDefault: TButtonFlat
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 167
      Height = 21
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 0
      Margins.Bottom = 10
      Align = alLeft
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079' 10 '#1084#1080#1085#1091#1090
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
      GroupItemKind = giLeft
      IgnorBounds = True
      OnClick = MenuItemHO10Click
      RoundRectParam = 10
      Shape = stRoundRect
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      Popup = PopupMenuHoldOver
    end
  end
  object ButtonFlatTaskState: TButtonFlat
    AlignWithMargins = True
    Left = 20
    Top = 64
    Width = 34
    Height = 34
    Caption = ''
    ColorNormal = 3684408
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
    ImageIndex = 19
    Images = FormMain.ImageList24
    OnClick = ButtonFlatTaskStateClick
    RoundRectParam = 0
    ShowFocusRect = False
    TabOrder = 2
    TabStop = True
    TextFormat = [tfSingleLine, tfVerticalCenter]
    SubTextFont.Charset = DEFAULT_CHARSET
    SubTextFont.Color = clWhite
    SubTextFont.Height = -13
    SubTextFont.Name = 'Tahoma'
    SubTextFont.Style = []
  end
  object EditTaskName: TEdit
    AlignWithMargins = True
    Left = 60
    Top = 64
    Width = 325
    Height = 34
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BevelWidth = 6
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 15921906
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    Text = #1050#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
    StyleElements = []
  end
  object PopupMenuHoldOver: TPopupMenu
    Left = 296
    Top = 152
    object MenuItemHO5: TMenuItem
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079' 5 '#1084#1080#1085#1091#1090
      OnClick = MenuItemHO5Click
    end
    object MenuItemHO10: TMenuItem
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079' 10 '#1084#1080#1085#1091#1090
      OnClick = MenuItemHO10Click
    end
    object MenuItemHO15: TMenuItem
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079' 15 '#1084#1080#1085#1091#1090
      OnClick = MenuItemHO15Click
    end
    object MenuItemHO20: TMenuItem
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079' 20 '#1084#1080#1085#1091#1090
      OnClick = MenuItemHO20Click
    end
    object MenuItemHO25: TMenuItem
      Caption = #1053#1072#1087#1086#1084#1085#1080#1090#1100' '#1095#1077#1088#1077#1079' 25 '#1084#1080#1085#1091#1090
      OnClick = MenuItemHO25Click
    end
  end
end

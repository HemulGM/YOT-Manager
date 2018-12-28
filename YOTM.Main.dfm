object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'YOT Manager'
  ClientHeight = 777
  ClientWidth = 1331
  Color = 3684408
  Constraints.MinHeight = 650
  Constraints.MinWidth = 1100
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 15921906
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  StyleElements = []
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 879
    Top = 40
    Width = 2
    Height = 737
    Align = alRight
    Brush.Color = 3026478
    Pen.Color = 3026478
    ExplicitLeft = 672
    ExplicitTop = 24
    ExplicitHeight = 640
  end
  object Shape8: TShape
    Left = 250
    Top = 40
    Width = 2
    Height = 737
    Align = alLeft
    Brush.Color = 3026478
    Pen.Color = 3026478
    ExplicitLeft = 256
    ExplicitTop = 32
  end
  object PanelTasks: TPanel
    Left = 252
    Top = 40
    Width = 627
    Height = 737
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object ShapeBorder: TShape
      Left = 0
      Top = 40
      Width = 627
      Height = 2
      Align = alTop
      Brush.Color = 3026478
      Pen.Color = 3026478
      ExplicitTop = 8
      ExplicitWidth = 780
    end
    object TableExTasks: TTableEx
      Left = 0
      Top = 82
      Width = 627
      Height = 358
      Align = alClient
      BorderStyle = bsNone
      Color = 3684408
      DefaultRowHeight = 50
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15921906
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnMouseUp = TableExTasksMouseUp
      OnKeyDown = TableExTasksKeyDown
      OnDrawCellData = TableExTasksDrawCellData
      ItemIndex = -1
      OnChangeItem = TableExTasksChangeItem
      OnItemColClick = TableExTasksItemColClick
      OnEdit = TableExTasksEdit
      OnEditCancel = TableExTasksEditCancel
      OnEditOk = TableExTasksEditOk
      OnHotOver = TableExTasksHotOver
      ProcEmpty = True
      Columns = <
        item
          Width = 32
          MinWidth = 32
        end
        item
          Caption = #1047#1072#1076#1072#1095#1072
          Width = 563
          MinWidth = 100
        end>
      DefaultDataDrawing = False
      ShowScrollBar = False
      VisibleEdit = False
      ItemCount = 1
      LineColor = 3684408
      LineColorXor = 3947580
      LineHotColor = 5066061
      LineSelColor = 2763306
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
      ShowColumns = False
      ColumnsFont.Charset = DEFAULT_CHARSET
      ColumnsFont.Color = clWhite
      ColumnsFont.Height = -15
      ColumnsFont.Name = 'Tahoma'
      ColumnsFont.Style = []
      DrawColumnBorded = False
      MouseRightClickTooClick = True
    end
    object PanelTaskEdit: TPanel
      Left = 0
      Top = 0
      Width = 627
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = 3684408
      ParentBackground = False
      TabOrder = 1
      StyleElements = []
      DesignSize = (
        627
        40)
      object ButtonFlat9: TButtonFlat
        AlignWithMargins = True
        Left = 103
        Top = 3
        Width = 34
        Height = 34
        Align = alLeft
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
        ImageIndex = 2
        Images = ImageList24
        OnClick = ButtonFlat9Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatViewMode: TButtonFlat
        AlignWithMargins = True
        Left = 229
        Top = 6
        Width = 153
        Height = 28
        Anchors = [akTop, akBottom]
        Caption = #1057#1077#1075#1086#1076#1085#1103
        ColorNormal = 5460819
        ColorOver = 6381921
        ColorPressed = 3815994
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Flat = False
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
        ImageIndentLeft = 0
        Images = ImageList24
        OnClick = ButtonFlatViewModeClick
        RoundRectParam = 0
        Shape = stRoundRect
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
        Popup = PopupMenuViewProp
      end
      object ButtonFlatAddTask: TButtonFlat
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 94
        Height = 34
        Align = alLeft
        Caption = #1047#1072#1076#1072#1095#1072
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
        ImageIndex = 11
        Images = ImageList24
        OnClick = ButtonFlatAddTaskClick
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
    end
    object PanelTaskAdd: TPanel
      Left = 0
      Top = 42
      Width = 627
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = 3684408
      ParentBackground = False
      TabOrder = 2
      Visible = False
      StyleElements = []
      object EditNewTaskName: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 621
        Height = 34
        Align = alClient
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
        TabOrder = 0
        TextHint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1079#1072#1076#1072#1095#1091'...'
        StyleElements = []
        OnKeyPress = EditNewTaskNameKeyPress
      end
    end
    object PanelTask: TPanel
      Left = 0
      Top = 440
      Width = 627
      Height = 297
      Align = alBottom
      BevelOuter = bvNone
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1072#1076#1072#1095#1091' '#1080#1079' '#1089#1087#1080#1089#1082#1072
      TabOrder = 3
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 627
        Height = 2
        Align = alTop
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitLeft = 3
        ExplicitTop = -5
        ExplicitWidth = 666
      end
      object Shape5: TShape
        Left = 286
        Top = 86
        Width = 2
        Height = 211
        Align = alRight
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitLeft = 320
        ExplicitTop = 8
        ExplicitHeight = 198
      end
      object Shape6: TShape
        Left = 0
        Top = 84
        Width = 627
        Height = 2
        Align = alTop
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitTop = 48
        ExplicitWidth = 666
      end
      object Shape9: TShape
        Left = 0
        Top = 42
        Width = 627
        Height = 2
        Align = alTop
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitTop = 8
        ExplicitWidth = 780
      end
      object PanelTaskClient: TPanel
        Left = 0
        Top = 86
        Width = 286
        Height = 211
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object MemoTaskDesc: TMemo
          Left = 0
          Top = 0
          Width = 286
          Height = 211
          Align = alClient
          BorderStyle = bsNone
          Color = 3223857
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15921906
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = MemoTaskDescExit
        end
      end
      object PanelTaskComments: TPanel
        Left = 288
        Top = 86
        Width = 339
        Height = 211
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object Shape18: TShape
          Left = 0
          Top = 169
          Width = 339
          Height = 2
          Align = alBottom
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitTop = 8
        end
        object TableExComments: TTableEx
          Left = 0
          Top = 0
          Width = 339
          Height = 169
          Align = alClient
          BorderStyle = bsNone
          Color = 3684408
          DefaultRowHeight = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15921906
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          StyleElements = [seBorder]
          OnMouseUp = TableExCommentsMouseUp
          ItemIndex = -1
          GetData = TableExCommentsGetData
          OnEdit = TableExCommentsEdit
          OnEditOk = TableExCommentsEditOk
          ProcEmpty = True
          Columns = <
            item
              Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
              Width = 339
              FormatColumns = [tfSingleLine, tfVerticalCenter]
              MinWidth = 100
            end>
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
          ShowColumns = False
          ColumnsFont.Charset = DEFAULT_CHARSET
          ColumnsFont.Color = clWhite
          ColumnsFont.Height = -15
          ColumnsFont.Name = 'Tahoma'
          ColumnsFont.Style = []
          DrawColumnBorded = False
          MouseRightClickTooClick = True
        end
        object Panel2: TPanel
          Left = 0
          Top = 171
          Width = 339
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          Color = 3684408
          ParentBackground = False
          TabOrder = 1
          StyleElements = []
          object EditNewComment: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 296
            Height = 34
            Align = alClient
            BevelInner = bvNone
            BevelKind = bkTile
            BevelOuter = bvSpace
            BevelWidth = 6
            BorderStyle = bsNone
            Color = 3684408
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15921906
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TextHint = #1053#1086#1074#1099#1081' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'...'
            StyleElements = []
          end
          object ButtonFlatNewComment: TButtonFlat
            AlignWithMargins = True
            Left = 302
            Top = 3
            Width = 34
            Height = 34
            Margins.Left = 0
            Align = alRight
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
            ImageIndex = 11
            Images = ImageList24
            OnClick = ButtonFlatNewCommentClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
        end
      end
      object PanelTaskTop: TPanel
        Left = 0
        Top = 2
        Width = 627
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Color = 3684408
        ParentBackground = False
        TabOrder = 2
        StyleElements = []
        object ButtonFlatTaskClose: TButtonFlat
          AlignWithMargins = True
          Left = 590
          Top = 3
          Width = 34
          Height = 34
          Align = alRight
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
          ImageIndentLeft = 5
          ImageIndex = 0
          Images = ImageList24
          OnClick = ButtonFlatTaskCloseClick
          RoundRectParam = 0
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
        object ButtonFlatTaskState: TButtonFlat
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 34
          Height = 34
          Align = alLeft
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
          Images = ImageList24
          OnClick = ButtonFlatTaskStateClick
          RoundRectParam = 0
          ShowFocusRect = False
          TabOrder = 1
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
          Left = 43
          Top = 3
          Width = 541
          Height = 34
          Align = alClient
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
          TabOrder = 2
          TextHint = #1050#1088#1072#1090#1082#1086#1077' '#1086#1087#1080#1089#1072#1085#1080#1077' '#1079#1072#1076#1072#1095#1080
          StyleElements = []
        end
      end
      object PanelTaskLabels: TPanel
        Left = 0
        Top = 44
        Width = 627
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Color = 3684408
        ParentBackground = False
        TabOrder = 3
        StyleElements = []
        object PanelTaskDAN: TPanel
          Left = 0
          Top = 0
          Width = 197
          Height = 40
          Align = alLeft
          BevelOuter = bvNone
          Color = 3684408
          ParentBackground = False
          TabOrder = 0
          StyleElements = []
          object ButtonFlatTaskDAN: TButtonFlat
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 164
            Height = 34
            Align = alClient
            Caption = #1044#1072#1090#1072' '#1080' '#1085#1072#1087#1086#1084#1080#1085#1072#1085#1080#1077'...'
            ColorNormal = 3223857
            ColorOver = 5329233
            ColorPressed = 1710618
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = False
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
            ImageIndex = 8
            Images = ImageList24
            OnClick = ButtonFlatTaskDANClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 0
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatDANClose: TButtonFlat
            AlignWithMargins = True
            Left = 173
            Top = 10
            Width = 21
            Height = 20
            Margins.Top = 10
            Margins.Bottom = 10
            Align = alRight
            Caption = ''
            ColorNormal = 14668740
            ColorOver = 11373924
            ColorPressed = 10451273
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
            ImageIndentLeft = -2
            ImageIndex = 0
            Images = ImageList24
            Transparent = True
            OnClick = ButtonFlatDANCloseClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
        end
        object PanelTaskColor: TPanel
          Left = 197
          Top = 0
          Width = 92
          Height = 40
          Align = alLeft
          BevelOuter = bvNone
          Color = 3684408
          ParentBackground = False
          TabOrder = 1
          StyleElements = []
          object ButtonFlatTaskColor: TButtonFlat
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 59
            Height = 34
            Align = alClient
            Caption = #1062#1074#1077#1090'...'
            ColorNormal = 3223857
            ColorOver = 5329233
            ColorPressed = 1710618
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = False
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
            OnClick = ButtonFlatTaskColorClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 0
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatTaskColorClose: TButtonFlat
            AlignWithMargins = True
            Left = 68
            Top = 10
            Width = 21
            Height = 20
            Margins.Top = 10
            Margins.Bottom = 10
            Align = alRight
            Caption = ''
            ColorNormal = 14668740
            ColorOver = 11373924
            ColorPressed = 10451273
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
            ImageIndentLeft = -2
            ImageIndex = 0
            Images = ImageList24
            Transparent = True
            OnClick = ButtonFlatTaskColorCloseClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
        end
      end
    end
  end
  object PanelRight: TPanel
    Left = 881
    Top = 40
    Width = 450
    Height = 737
    Align = alRight
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object PanelClient: TPanel
      Left = 0
      Top = 0
      Width = 450
      Height = 737
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        450
        737)
      object PanelNotes: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 737
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 3
        object Shape14: TShape
          Left = 0
          Top = 40
          Width = 450
          Height = 2
          Align = alTop
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitLeft = -6
          ExplicitTop = 34
        end
        object Shape15: TShape
          Left = 0
          Top = 97
          Width = 450
          Height = 2
          Align = alTop
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitTop = 48
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 450
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          Color = 3684408
          ParentBackground = False
          TabOrder = 0
          StyleElements = []
          object ButtonFlat8: TButtonFlat
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 34
            Height = 34
            Align = alLeft
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
            ImageIndex = 23
            Images = ImageList24
            OnClick = ButtonFlat8Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 0
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlat10: TButtonFlat
            AlignWithMargins = True
            Left = 43
            Top = 3
            Width = 34
            Height = 34
            Align = alLeft
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
            ImageIndex = 22
            Images = ImageList24
            OnClick = ButtonFlat10Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 42
          Width = 450
          Height = 55
          Align = alTop
          BevelOuter = bvNone
          Color = 3684408
          ParentBackground = False
          TabOrder = 1
          StyleElements = []
          object Label5: TLabel
            Left = 6
            Top = 6
            Width = 76
            Height = 16
            AutoSize = False
            Caption = #1044#1072#1090#1072':'
          end
          object LabelNoteDate: TLabel
            Left = 88
            Top = 6
            Width = 233
            Height = 16
            AutoSize = False
          end
          object LabelNoteModify: TLabel
            Left = 88
            Top = 28
            Width = 233
            Height = 16
            AutoSize = False
          end
          object Label8: TLabel
            Left = 6
            Top = 28
            Width = 76
            Height = 16
            AutoSize = False
            Caption = #1048#1079#1084#1077#1085#1105#1085':'
          end
        end
        object MemoNote: TMemo
          Left = 0
          Top = 99
          Width = 450
          Height = 638
          Align = alClient
          BorderStyle = bsNone
          Color = 3684408
          TabOrder = 2
        end
      end
      object PanelCalendar: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 737
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 2
        object DrawGridCalendar: TDrawGrid
          Left = 0
          Top = 0
          Width = 450
          Height = 737
          Align = alClient
          BorderStyle = bsNone
          Color = 3684408
          ColCount = 7
          DefaultColWidth = 63
          DefaultRowHeight = 65
          DefaultDrawing = False
          DrawingStyle = gdsGradient
          FixedCols = 0
          RowCount = 9
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
          StyleElements = [seBorder]
          OnDrawCell = DrawGridCalendarDrawCell
          OnMouseEnter = DrawGridCalendarMouseEnter
          OnMouseLeave = DrawGridCalendarMouseLeave
          OnMouseMove = DrawGridCalendarMouseMove
          OnMouseWheelDown = DrawGridCalendarMouseWheelDown
          OnMouseWheelUp = DrawGridCalendarMouseWheelUp
          OnSelectCell = DrawGridCalendarSelectCell
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
            65
            65
            65
            65)
        end
      end
      object PanelTimes: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 737
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        object Shape12: TShape
          Left = 0
          Top = 40
          Width = 450
          Height = 2
          Align = alTop
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitTop = 8
        end
        object TableExTimes: TTableEx
          Left = 0
          Top = 42
          Width = 450
          Height = 473
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
          TabOrder = 0
          StyleElements = [seBorder]
          OnMouseUp = TableExTimesMouseUp
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
              Width = 120
              Format = [tfCenter, tfLeft, tfSingleLine, tfVerticalCenter]
              MinWidth = 120
            end
            item
              Caption = #1054#1087#1080#1089#1072#1085#1080#1077
              Width = 298
              MinWidth = 150
            end>
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
          MouseRightClickTooClick = True
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 450
          Height = 40
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object ButtonFlatTaskEnd: TButtonFlat
            AlignWithMargins = True
            Left = 357
            Top = 3
            Width = 90
            Height = 34
            Margins.Left = 0
            Align = alRight
            Caption = #1047#1072#1082#1086#1085#1095#1080#1090#1100
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
            OnClick = ButtonFlatTaskEndClick
            RoundRectParam = 0
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
          object ButtonFlatTaskStart: TButtonFlat
            AlignWithMargins = True
            Left = 264
            Top = 3
            Width = 90
            Height = 34
            Align = alRight
            Caption = #1053#1072#1095#1072#1090#1100
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
            OnClick = ButtonFlatTaskStartClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatAddTime: TButtonFlat
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 33
            Height = 34
            Align = alLeft
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
            ImageIndex = 11
            Images = ImageList24
            OnClick = ButtonFlatAddTimeClick
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 2
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
        end
        object PanelTimeScale: TPanel
          Left = 0
          Top = 515
          Width = 450
          Height = 222
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object Shape7: TShape
            Left = 0
            Top = 0
            Width = 450
            Height = 2
            Align = alTop
            Brush.Color = 3026478
            Pen.Color = 3026478
            ExplicitLeft = -6
            ExplicitTop = -5
          end
          object DrawPanel: TDrawPanel
            Left = 0
            Top = 42
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
          object Panel4: TPanel
            Left = 0
            Top = 2
            Width = 450
            Height = 40
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label3: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 3
              Width = 157
              Height = 34
              Margins.Left = 10
              Align = alLeft
              Caption = #1042#1088#1077#1084#1077#1085#1085#1072#1103' '#1096#1082#1072#1083#1072
              Color = 3684408
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 15921906
              Font.Height = -19
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              Transparent = False
              Layout = tlCenter
              ExplicitHeight = 23
            end
            object ButtonFlatCollapseScale: TButtonFlat
              AlignWithMargins = True
              Left = 413
              Top = 3
              Width = 34
              Height = 34
              Margins.Left = 0
              Align = alRight
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
              ImageIndex = 10
              Images = ImageList24
              OnClick = ButtonFlatCollapseScaleClick
              RoundRectParam = 0
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
          end
        end
      end
      object PanelSettings: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 737
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 0
        object Shape13: TShape
          Left = 0
          Top = 561
          Width = 450
          Height = 2
          Align = alBottom
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitTop = 8
        end
        object Shape16: TShape
          Left = 0
          Top = 155
          Width = 450
          Height = 2
          Align = alTop
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitLeft = -8
          ExplicitTop = 177
        end
        object Shape19: TShape
          Left = 0
          Top = 41
          Width = 450
          Height = 2
          Align = alTop
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitTop = 8
        end
        object Shape17: TShape
          Left = 0
          Top = 257
          Width = 450
          Height = 2
          Align = alTop
          Brush.Color = 3026478
          Pen.Color = 3026478
          ExplicitLeft = -16
          ExplicitTop = 363
        end
        object PanelLog: TPanel
          Left = 0
          Top = 563
          Width = 450
          Height = 174
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object MemoLog: TMemo
            Left = 0
            Top = 25
            Width = 450
            Height = 149
            Align = alClient
            BorderStyle = bsNone
            Color = 3684408
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = 15329769
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ScrollBars = ssVertical
            TabOrder = 0
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 450
            Height = 25
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = 'Log'
            Color = 3026478
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15921906
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object PanelWorkDays: TPanel
          Left = 0
          Top = 43
          Width = 450
          Height = 112
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label6: TLabel
            Left = 100
            Top = 54
            Width = 16
            Height = 30
            Alignment = taCenter
            AutoSize = False
            Caption = #8594
            Layout = tlCenter
          end
          object Label7: TLabel
            Left = 122
            Top = 54
            Width = 86
            Height = 30
            Alignment = taCenter
            AutoSize = False
            Caption = ':'
            Layout = tlCenter
          end
          object Label9: TLabel
            Left = 8
            Top = 54
            Width = 86
            Height = 30
            Alignment = taCenter
            AutoSize = False
            Caption = ':'
            Layout = tlCenter
          end
          object ButtonFlat11: TButtonFlat
            Tag = 11
            Left = 8
            Top = 34
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 14
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 0
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlatTimeFromHH: TButtonFlat
            Left = 8
            Top = 54
            Width = 40
            Height = 30
            Caption = '00'
            ColorNormal = 3026478
            ColorOver = 4737096
            ColorPressed = 1973790
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = False
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -16
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -16
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            ImageIndentLeft = 0
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlat12: TButtonFlat
            Tag = 10
            Left = 8
            Top = 84
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 10
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 2
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlat13: TButtonFlat
            Tag = 21
            Left = 54
            Top = 34
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 14
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 3
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlatTimeFromMM: TButtonFlat
            Left = 54
            Top = 54
            Width = 40
            Height = 30
            Caption = '00'
            ColorNormal = 3026478
            ColorOver = 4737096
            ColorPressed = 1973790
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = False
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -16
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -16
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            ImageIndentLeft = 0
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 4
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlat14: TButtonFlat
            Tag = 20
            Left = 54
            Top = 84
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 10
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 5
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlat15: TButtonFlat
            Tag = 31
            Left = 122
            Top = 34
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 14
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 6
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlatTimeToHH: TButtonFlat
            Left = 122
            Top = 54
            Width = 40
            Height = 30
            Caption = '00'
            ColorNormal = 3026478
            ColorOver = 4737096
            ColorPressed = 1973790
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = False
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -16
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -16
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            ImageIndentLeft = 0
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 7
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlat16: TButtonFlat
            Tag = 30
            Left = 122
            Top = 84
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 10
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 8
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlat17: TButtonFlat
            Tag = 41
            Left = 168
            Top = 34
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 14
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 9
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object ButtonFlatTimeToMM: TButtonFlat
            Left = 168
            Top = 54
            Width = 40
            Height = 30
            Caption = '00'
            ColorNormal = 3026478
            ColorOver = 4737096
            ColorPressed = 1973790
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            Flat = False
            FontOver.Charset = DEFAULT_CHARSET
            FontOver.Color = clWhite
            FontOver.Height = -16
            FontOver.Name = 'Tahoma'
            FontOver.Style = []
            FontDown.Charset = DEFAULT_CHARSET
            FontDown.Color = clWhite
            FontDown.Height = -16
            FontDown.Name = 'Tahoma'
            FontDown.Style = []
            IgnorBounds = True
            ImageIndentLeft = 0
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 10
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlat18: TButtonFlat
            Tag = 40
            Left = 168
            Top = 84
            Width = 40
            Height = 20
            Caption = ''
            ColorNormal = 3684408
            ColorOver = 4737096
            ColorPressed = 1973790
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
            ImageIndentLeft = 8
            ImageIndex = 10
            Images = ImageList24
            OnClick = ButtonFlat11Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 11
            TabStop = True
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
            AutoClick = 100
            DblClickTooClick = True
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 450
            Height = 25
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = #1056#1072#1073#1086#1095#1077#1077' '#1074#1088#1077#1084#1103
            Color = 3026478
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15921906
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 12
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 450
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 97
            Height = 35
            Align = alLeft
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15921906
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 24
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 157
          Width = 450
          Height = 100
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 3
          object Label10: TLabel
            Left = 8
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1055#1085
          end
          object Label11: TLabel
            Left = 48
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1042#1090
          end
          object Label12: TLabel
            Left = 88
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1088
          end
          object Label13: TLabel
            Left = 128
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1063#1090
          end
          object Label14: TLabel
            Left = 168
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1055#1090
          end
          object Label15: TLabel
            Left = 208
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1057#1073
          end
          object Label16: TLabel
            Left = 248
            Top = 35
            Width = 34
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = #1042#1089
          end
          object ButtonFlatWD1: TButtonFlat
            Tag = 1
            AlignWithMargins = True
            Left = 8
            Top = 57
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
            ImageIndex = 18
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 0
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatWD2: TButtonFlat
            Tag = 2
            AlignWithMargins = True
            Left = 48
            Top = 57
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
            ImageIndex = 18
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 1
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatWD3: TButtonFlat
            Tag = 3
            AlignWithMargins = True
            Left = 88
            Top = 57
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
            ImageIndex = 18
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
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
          object ButtonFlatWD4: TButtonFlat
            Tag = 4
            AlignWithMargins = True
            Left = 128
            Top = 57
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
            ImageIndex = 18
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 3
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatWD5: TButtonFlat
            Tag = 5
            AlignWithMargins = True
            Left = 168
            Top = 57
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
            ImageIndex = 18
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 4
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatWD6: TButtonFlat
            Tag = 6
            AlignWithMargins = True
            Left = 208
            Top = 57
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
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 5
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object ButtonFlatWD7: TButtonFlat
            Tag = 7
            AlignWithMargins = True
            Left = 248
            Top = 57
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
            Images = ImageList24
            OnClick = ButtonFlatWD1Click
            RoundRectParam = 0
            ShowFocusRect = False
            TabOrder = 6
            TabStop = True
            TextFormat = [tfSingleLine, tfVerticalCenter]
            SubTextFont.Charset = DEFAULT_CHARSET
            SubTextFont.Color = clWhite
            SubTextFont.Height = -13
            SubTextFont.Name = 'Tahoma'
            SubTextFont.Style = []
          end
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 450
            Height = 25
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = #1041#1091#1076#1085#1080#1077' '#1076#1085#1080
            Color = 3026478
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 15921906
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 7
          end
        end
      end
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 40
    Width = 250
    Height = 737
    Align = alLeft
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 3
    object Shape11: TShape
      Left = 0
      Top = 40
      Width = 250
      Height = 2
      Align = alTop
      Brush.Color = 3026478
      Pen.Color = 3026478
      ExplicitTop = 8
    end
    object Shape10: TShape
      Left = 0
      Top = 162
      Width = 250
      Height = 2
      Align = alTop
      Brush.Color = 3026478
      Pen.Color = 3026478
      ExplicitLeft = -4
      ExplicitTop = 249
    end
    object ButtonFlatDeadlined: TButtonFlat
      AlignWithMargins = True
      Left = 3
      Top = 85
      Width = 244
      Height = 34
      Align = alTop
      Caption = #1055#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1077' '#1079#1072#1076#1072#1095#1080
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
      ImageIndex = 17
      Images = ImageList24
      OnClick = ButtonFlatDeadlinedClick
      RoundRectParam = 5
      ShowFocusRect = False
      TabOrder = 0
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubText = '0'
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      VisibleSubText = True
    end
    object ButtonFlatTaskNow: TButtonFlat
      AlignWithMargins = True
      Left = 3
      Top = 45
      Width = 244
      Height = 34
      Align = alTop
      Caption = #1057#1077#1075#1086#1076#1085#1103': 18 '#1086#1082#1090', '#1063#1090
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
      ImageIndex = 9
      Images = ImageList24
      OnClick = ButtonFlatTaskNowClick
      RoundRectParam = 5
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubText = '0'
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      VisibleSubText = True
    end
    object ButtonFlatTaskInbox: TButtonFlat
      AlignWithMargins = True
      Left = 3
      Top = 125
      Width = 244
      Height = 34
      Align = alTop
      Caption = #1042#1093#1086#1076#1103#1097#1080#1077
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
      ImageIndex = 15
      Images = ImageList24
      OnClick = ButtonFlatTaskInboxClick
      RoundRectParam = 5
      ShowFocusRect = False
      TabOrder = 2
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubText = '0'
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      VisibleSubText = True
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Calendar: TCalendarPicker
        Left = 7
        Top = 6
        Width = 18
        Height = 28
        Margins.Left = 0
        Margins.Right = 0
        BorderColor = 3684408
        CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.DaysOfWeekFont.Color = clWhite
        CalendarHeaderInfo.DaysOfWeekFont.Height = -13
        CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
        CalendarHeaderInfo.DaysOfWeekFont.Style = []
        CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
        CalendarHeaderInfo.Font.Color = clWhite
        CalendarHeaderInfo.Font.Height = -20
        CalendarHeaderInfo.Font.Name = 'Segoe UI'
        CalendarHeaderInfo.Font.Style = []
        CalendarHeaderInfo.FontColor = 15658734
        CalendarHeaderInfo.HighlightFontColor = 3966635
        Color = 3684408
        DisabledColor = 6974058
        FirstDayOfWeek = dwMonday
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 13948116
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        HighlightColor = 4605510
        OnCalendarDrawDayItem = CalendarCalendarDrawDayItem
        OnChange = CalendarChange
        OnCloseUp = CalendarCloseUp
        ParentFont = False
        SelectionColor = 3966635
        ShowFirstOfGroupLabel = True
        TabOrder = 1
        TextHint = #1042#1099#1073#1088#1072#1090#1100' '#1076#1072#1090#1091
        TodayColor = 3966635
      end
      object ButtonFlat7: TButtonFlat
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 34
        Height = 34
        Margins.Right = 0
        Align = alLeft
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
        ImageIndex = 4
        Images = ImageList24
        OnClick = ButtonFlat7Click
        RoundRectParam = 0
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
      object ButtonFlat6: TButtonFlat
        AlignWithMargins = True
        Left = 213
        Top = 3
        Width = 34
        Height = 34
        Margins.Left = 0
        Align = alRight
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
        ImageIndex = 5
        Images = ImageList24
        OnClick = ButtonFlat6Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 2
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
      object ButtonFlatCurrentDate: TButtonFlat
        AlignWithMargins = True
        Left = 37
        Top = 3
        Width = 176
        Height = 34
        Margins.Left = 0
        Margins.Right = 0
        Align = alClient
        Caption = #1044#1077#1082#1072#1073#1088#1100' 2018'
        ColorNormal = 3684408
        ColorOver = 6381921
        ColorPressed = 3815994
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        FontOver.Charset = DEFAULT_CHARSET
        FontOver.Color = clWhite
        FontOver.Height = -16
        FontOver.Name = 'Tahoma'
        FontOver.Style = []
        FontDown.Charset = DEFAULT_CHARSET
        FontDown.Color = clWhite
        FontDown.Height = -16
        FontDown.Name = 'Tahoma'
        FontDown.Style = []
        IgnorBounds = True
        Images = ImageList24
        OnClick = ButtonFlatCurrentDateClick
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 3
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
        SubTextFont.Charset = DEFAULT_CHARSET
        SubTextFont.Color = clWhite
        SubTextFont.Height = -13
        SubTextFont.Name = 'Tahoma'
        SubTextFont.Style = []
      end
    end
    object ScrollBoxLabels: TScrollBox
      Left = 0
      Top = 189
      Width = 250
      Height = 197
      Align = alTop
      BorderStyle = bsNone
      TabOrder = 4
    end
    object Panel7: TPanel
      Left = 0
      Top = 164
      Width = 250
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = #1052#1077#1090#1082#1080
      Color = 3026478
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 15921906
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 5
    end
  end
  object DragBarTop: TDragPanel
    Left = 0
    Top = 0
    Width = 1331
    Height = 40
    Cursor = crHandPoint
    Align = alTop
    BevelOuter = bvNone
    Caption = ' '
    Color = 3026478
    ParentBackground = False
    TabOrder = 2
    StyleElements = [seBorder]
    object Shape2: TShape
      Left = 1329
      Top = 0
      Width = 2
      Height = 40
      Align = alRight
      Brush.Color = 3684408
      Pen.Color = 3684408
      ExplicitLeft = 1091
    end
    object Shape3: TShape
      Left = 1251
      Top = 0
      Width = 2
      Height = 40
      Align = alRight
      Brush.Color = 3684408
      Pen.Color = 3684408
      ExplicitLeft = 1253
    end
    object ButtonFlatMenuFile: TButtonFlat
      AlignWithMargins = True
      Left = 41
      Top = 10
      Width = 38
      Height = 20
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = #1060#1072#1081#1083
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
      ImageIndentLeft = 0
      OnClick = ButtonFlatMenuFileClick
      RoundRectParam = 0
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
    object ButtonFlat4: TButtonFlat
      Left = 0
      Top = 0
      Width = 38
      Height = 40
      Align = alLeft
      Caption = ''
      ColorNormal = 3026478
      ColorOver = 14196229
      ColorPressed = 12027396
      Enabled = False
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
      ImageIndex = 12
      Images = ImageList24
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlat5: TButtonFlat
      AlignWithMargins = True
      Left = 85
      Top = 10
      Width = 108
      Height = 20
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
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
      ImageIndentLeft = 0
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 2
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatMenuView: TButtonFlat
      AlignWithMargins = True
      Left = 199
      Top = 10
      Width = 38
      Height = 20
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = #1042#1080#1076
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
      ImageIndentLeft = 0
      OnClick = ButtonFlatMenuViewClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 3
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatCalendar: TButtonFlat
      Left = 1131
      Top = 0
      Width = 40
      Height = 40
      Align = alRight
      Caption = #1050#1072#1083#1077#1085#1076#1072#1088#1100
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
      ImageIndentRight = 10
      ImageIndex = 6
      Images = ImageList24
      NotifyVisible = True
      OnClick = ButtonFlatCalendarClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 4
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatClose: TButtonFlat
      AlignWithMargins = True
      Left = 1294
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
      TabOrder = 5
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      Visible = False
    end
    object ButtonFlatMinimize: TButtonFlat
      AlignWithMargins = True
      Left = 1256
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
      TabOrder = 6
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
      Visible = False
    end
    object ButtonFlatSettings: TButtonFlat
      Left = 1211
      Top = 0
      Width = 40
      Height = 40
      Align = alRight
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
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
      ImageIndentRight = 10
      ImageIndex = 3
      Images = ImageList24
      OnClick = ButtonFlatSettingsClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 7
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatTimes: TButtonFlat
      Left = 1091
      Top = 0
      Width = 40
      Height = 40
      Align = alRight
      Caption = #1042#1088#1077#1084#1077#1085#1085#1072#1103' '#1096#1082#1072#1083#1072
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
      ImageIndentRight = 10
      ImageIndex = 8
      Images = ImageList24
      OnClick = ButtonFlatTimesClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 8
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ButtonFlatNotes: TButtonFlat
      Left = 1171
      Top = 0
      Width = 40
      Height = 40
      Align = alRight
      Caption = #1047#1072#1087#1080#1089#1080
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
      ImageIndentRight = 10
      ImageIndex = 21
      Images = ImageList24
      OnClick = ButtonFlatNotesClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 9
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
  end
  object TimerRepaint: TTimer
    Interval = 30
    OnTimer = TimerRepaintTimer
    Left = 48
    Top = 640
  end
  object TimerTime: TTimer
    OnTimer = TimerTimeTimer
    Left = 48
    Top = 584
  end
  object ImageList24: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 44
    Top = 520
    Bitmap = {
      494C01011D005800980218001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000C000000001002000000000000020
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B0D424242564646465C4646465C4646465C4646
      465C4646465C4646465C4646465C4646465C3E3E3F5B09090A1D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCCCCCDEA1D1D1D4F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030303036E9E9E9F9F0F0F0FFF0F0F0FFF0F0F0FFF0F0
      F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFCBCBCBE81C1C1C4E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002A2A2A2FCDCDCDE1D4D4D4E8D4D4D4E8D4D4D4E8D4D4
      D4E8D4D4D4E8D4D4D4E8D4D4D4E8D4D4D4E8B7B7B8DB1A1A1D4A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040F0505051205050512050505120505
      0512050505120505051205050512050505120505051201010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000101010156767677BABABABC9C5C5
      C5DFC7C7C7E0B1B1B1D26E6E6E8D1717172A0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000101010156767677BABABABC9C5C5
      C5DFC7C7C7E0B1B1B1D26E6E6E8D1717172A0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005252525FCCCCCCE9E2E2E2FEBBBBBBE8A0A0
      A0F1A0A0A0EDB9B9B9EEE2E2E2FED1D1D1F45B5B5B8200000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005252525FCCCCCCE9E2E2E2FEBBBBBBE8A0A0
      A0F1A0A0A0EDB9B9B9EEE2E2E2FED1D1D1F45B5B5B8200000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636377DEDEDEFBACACACD93939397E0A0A0A300101
      0104000000010505051A30303060A9A9A9DAE0E0E0FD7474749E000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636377DEDEDEFBACACACD93939397E0A0A0A300101
      0104000000010505051A30303060A9A9A9DAE0E0E0FD7474749E000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000454545568F8F8FA58F8F8FA5555555820000
      000000000000454545528F8F8FA58F8F8FA55656568500000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000030303044D4D4D6E030303090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000039393944DCDCDCF99E9E9ECF1414143E00000000000000000000
      00000000000000000000000000000A0A0A19929292BEDEDEDEFD4C4C4C7B0000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000039393944DCDCDCF99E9E9ECF1414143E00000000060606091C1C
      1C201C1C1C230909090F000000000A0A0A19929292BEDEDEDEFD4C4C4C7B0000
      0001000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507D7D7D7FC9C9C9CC42323
      2339000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000707070AAFAFAFCDC2C2C2ED1C1C1C480000000000000000000000000000
      0000000000000000000000000000000000001010101DB9B9B9DFBCBCBCEA0E0E
      0E27000000000000000000000000000000000000000000000000000000000000
      00000707070AAFAFAFCDC2C2C2ED1C1C1C48000000002D2D2D36AFAFAFC9E3E3
      E3FFE3E3E3FFB7B7B7DB3A3A3A50000000001010101DB9B9B9DFBCBCBCEA0E0E
      0E27000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFD2D2
      D2F5636363870303030A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C2C2C3BE0E0E0FE686868A4000000050000000000000000000000000000
      0000000000000000000000000000000000000000000052525271E1E1E1FD4343
      437E000000000000000000000000000000000000000000000000000000000000
      00002C2C2C3BE0E0E0FE686868A4000000051B1B1B21D5D5D5F2E3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFDBDBDBFC2C2C2C4B0000000052525271E1E1E1FD4343
      437E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFE3E3
      E3FFE3E3E3FFB4B4B4DC3030304C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A5A75E1E1E1FD2C2C2C65000000000000000000000000000000000000
      0000000000000000000000000000000000000000000018181828E0E0E0FD7171
      71B2000000000000000000000000000000000000000000000000000000000000
      00005A5A5A75E1E1E1FD2C2C2C65000000008282829DE2E2E2FEE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FF949494C60303030C18181828E0E0E0FD7171
      71B2000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFD8D8D8F87777779F0F0F0F1A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006E6E6E86DDDDDDFA19191951000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040405DADADAFC8888
      88CD000000020000000000000000000000000000000000000000000000000000
      00006E6E6E86DDDDDDFA1919195101010102A5A5A5C1E3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFB6B6B6EC0808081C04040405DADADAFC8888
      88CD000000020000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB5B5B5DD1515153D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000064646480E0E0E0FC2323235A000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D0D0D11DEDEDEFE7D7D
      7DC8000000000000000000000000000000000000000000000000000000000000
      000064646480E0E0E0FC2323235A00000000939393B5E3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFA5A5A5DE060606170D0D0D11DEDEDEFE7D7D
      7DC8000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFAAAAAADA3636367B03030310000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003C3C3C5BE1E1E1FE54545486000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3E50E1E1E1FD5050
      5091000000000000000000000000000000000000000000000000000000000000
      00003C3C3C5BE1E1E1FE54545486000000003C3C3C5ADFDFDFFEE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE0E0E0FB4F4F4F8D000000053E3E3E50E1E1E1FD5050
      5091000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFE3E3
      E3FFE3E3E3FFCFCFCFF1676767AA1111113A0000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001010101DC5C5C5F0AAAAAADB070707130000000000000000000000000000
      00000000000000000000000000000000000003030304989898B1CACACAEA2121
      215A000000000000000000000000000000000000000000000000000000000000
      00001010101DC5C5C5F0AAAAAADB070707130000000068686896DCDCDCFDE3E3
      E3FFE3E3E3FFDCDCDCFA777777B90505051903030304989898B1CACACAEA2121
      215A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDE3E3E3FFE2E2
      E2FE9E9E9ED32E2E2E6E0202020F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F8AE2E2E2FE7575759D0101010700000000000000000000
      00000000000000000000000000000000000064646475E1E1E1FE717171B10202
      020F000000000000000000000000000000000000000000000000000000000000
      0000000000005F5F5F8AE2E2E2FE7575759D01010107000000001E1E1E496565
      65A5666666AA272727630202020D0000000064646475E1E1E1FE717171B10202
      020F000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F8AE3E3E3FFE3E3E3FF898989D30000
      0000000000006C6C6C83E3E3E3FFE3E3E3FF898989D301010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005050507DBDBDBFDC2C2C2E95555
      559A0909092C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030B959595C7DDDDDDFB7D7D7DA20E0E0E14000000000000
      000000000000000000000B0B0B0D6F6F6F7FDBDBDBF79C9C9CCD0F0F0F380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030B959595C7DDDDDDFB7D7D7DA20E0E0E14000000000000
      000000000001000000000B0B0B0D6F6F6F7FDBDBDBF79C9C9CCD0F0F0F380000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636386CCCCCCFBCCCCCCFB7D7D7DCF0000
      0000000000006262627FCCCCCCFBCCCCCCFB7D7D7DD001010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004040406888888CB2121215A0202
      0209000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B1A8D8D8DC5E2E2E2FEC5C5C5E58080809D5656
      5663555555607A7A7A8EC2C2C2DAE2E2E2FE959595C916161642000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B1A8D8D8DC5E2E2E2FEC5C5C5E58080809D5656
      5663555555607A7A7A8EC2C2C2DAE2E2E2FE959595C916161642000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000606061C0E0E0E3F0E0E0E3F0A0A0A310000
      0000000000000505051A0E0E0E3F0E0E0E3F0B0B0B3300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000606061C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010A43434381A9A9A9E2D3D3D3F6E3E3
      E3FFE3E3E3FFD3D3D3F3ADADADE64A4A4A900808082600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000101010A43434381A9A9A9E2D3D3D3F6E3E3
      E3FFE3E3E3FFD3D3D3F3ADADADE64A4A4A900808082600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404191E1E1E4C2F2F
      2F762E2E2E732323235C08080827000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000040404191E1E1E4C2F2F
      2F762E2E2E732323235C08080827000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000202020C000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000868686BE1E1E1E410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000072424243B4646
      46788484849E8989899F51515184323232460303030E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A3A3A3D4636363960000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000022A2A2A47A0A0A0CBD7D7D7F9E3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFDEDEDEFDB4B4B4DB43434364010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000818181A7A4A4A4D80101010A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C221F1F1F2B1F1F1F2B1F1F1F2B1F1F1F2B1F1F
      1F2B1F1F1F2B1F1F1F2B1F1F1F2B1F1F1F2B1F1F1F2B1C1C1C27010101060000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004D4D4D7CD4D4D4F7E2E2E2FED4D4D4FD9C9C
      9CDE5C5C5CAF535353AD8D8D8DCEC0C0C0FCE2E2E2FEE0E0E0FE7575759E0303
      030A000000000000000000000000000000000000000000000000000000000000
      000000000000000000004C4C4C6DCDCDCDF51A1A1A3B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003030303C5555
      5560575757663636364C00000007000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000054545466E0E0E0FDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE0E0E0FE656565930000
      0005000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000044444481D1D1D1F9808080C61212123E0000
      000100000000000000000000000008080826585858A4D0D0D0FAE2E2E2FE7B7B
      7BA4000000050000000000000000000000000000000000000000000000000000
      000000000000000000001A1A1A2ED0D0D0F4AAAAAADE939393B86A6A6A982E2E
      2E53000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E13B2B2B2D4E3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFC4C4C4EB494949660101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020204A6A6A6C5E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFCBCBCBEE7676
      76BC717171B2C9C9C9F3E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB7B7B7EE0909
      0921000000000000000000000000000000000000000000000000000000000000
      0000000000000202020D00000001000000052323235E0303030F000000000000
      000000000000000000000000000000000000010101063838387DD3D3D3F9DCDC
      DCFB4343435F0000000000000000000000000000000000000000000000000000
      000000000000000000004444445FDDDDDDFCE3E3E3FFE3E3E3FFE3E3E3FFD9D9
      D9FA5353537B0000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004444446E6B6B6BB42F2F
      2F782E2E2E70656565A1BEBEBEECDBDBDBFA6060608901010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8E3E3E3FFE3E3E3FFE3E3E3FFD3D3D3F23A3A3A790101
      010B000000032B2B2B4CD2D2D2F7E3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000000000000000
      000007070716828585C53D3D3D70000000010000000000000000000000000000
      00000000000000000000000000002A2A2A5B2525254300000002606060ABDFDF
      DFFDB0B0B0DE0000000000000000000000000000000000000000000000000000
      00000000000000000000A2A2A2D0E2E2E2FEE2E2E2FEE3E3E3FFE2E2E2FEE2E2
      E2FE9A9A9AE72121214500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1C270707070B0000000000000001000000010000
      0000000000000000000014141432ABABABDCD7D7D7F738383861000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8E3E3E3FFE3E3E3FFE3E3E3FFB8B8B8EB0A0A0A240000
      00000000000003030306A8A8A8C8E3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000000000000909
      091A919191CBE3E3E3FFD5D5D5FC444444770000000200000000000000000000
      00000000000012121232777777BADCDCDCFD868E95CA000000030D0D0D31BBBB
      BBEDE1E1E1FE2323233D00000000000000000000000000000000000000000000
      0000000000000909091AD7D7D7FBABABABE0C1C1C1EFE3E3E3FFBDBDBDEC2626
      265F010101040000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002D2D2D36D1D1D1EC969696C00909090F00000000000000000000
      00000000000000000000000000001D1D1D37CFCFCFF2A0A0A0DA000000070000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8E3E3E3FFE3E3E3FFE3E3E3FFCDCDCDF61E1E1E400000
      00000000000011111116C3C3C3E4E3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000070707169191
      91CBE1E1E1FEE3E3E3FFE3E3E3FFD2D2D2F84444447700000001000000000000
      00014E4B4989C0C0C0EFD5D5D5F96F6F6FAC1010102800000000010101048686
      86D0E3E3E3FF3C4B576F00000000000000000000000000000000000000000000
      00000000000018181837D2D2D2F53A3A3A6FBEBEBEEBE3E3E3FFD8D8D8FBC5C5
      C5E4818181B83E3E3E6809090912000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003131313BCACACAE5E3E3E3FFE1E1E1FE969696C00707070B000000000000
      000000000000000000000000000000000000919191B7D0D0D0F00F0F0F3C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8E3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEA7A7A7D52E2E
      2E47282828349A9A9AB0E2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A2700000000000000000000000000000000000000000505050D968E87C7E2E2
      E2FEE2E2E2FEE2E2E2FEE2E2E2FEE2E2E2FED4D4D4FB383C3C66000000000000
      0007D8C3AEFEB9B9B9EE26262651000000020000000000000000000000006D6D
      6DB1E3E3E3FF6363638900000000000000000000000000000000000000000000
      000000000000101010298E8E8EC713131324CCCCCCF7E3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE2E2E2FEB0B0B0DB222222380000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0E
      0E208A8A8AE0A4A4A4FBDFDFDFFDC2C2C2F5A3A3A3FB565656B2010101080000
      0000000000000000000031313141555555609D9D9DB6E0E0E0FB676767995050
      505F141414360000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000010101060000
      00073131315CDFDFDFFDACACACE40707071C0000000700000003000000000000
      0007D8C3AEFE919191CB00000000000000000000000000000000000000007373
      73B9E3E3E3FF5A5F608400000000000000000000000000000000000000000000
      00000000000000000003222222551515151FD3D3D3FCE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFDDDDDDFDB6B6B6F09E9E9EDF1F1F1F3E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020204D1D1D1FA989898D70101010600000000000000000000
      0000000000000000000012121222B6B6B6E4E3E3E3FFE3E3E3FFDBDBDBF86C6C
      6CA80606061B0000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000000000000000
      00001A1A1A31D4D4D4FDC8C8C8F91313132E0000000000000000000000000000
      0007D8C3AEFE919191CB000000000000000000000000000000000202020F9999
      99DDE3E3E3FF333D466000000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A2AD6D6D6FBE3E3E3FFE3E3E3FFE3E3
      E3FFD6D6D6F94A4A4A8508080826060606180808081500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A3A3A3CFC9C9C9F01717173600000000000000000000
      00000000000000000000000000001919192AB3B3B3E0DDDDDDF96C6C6CA90707
      071E000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8DDDDDDFCCCCCCCFBCCCCCCFCCCCCCCFCCCCCCCFCCCCC
      CCFCCCCCCCFCCCCCCCFCDCDCDCFDE3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000000000000000
      00000606060FB0B0B0DDE0E0E0FD4B4B4B860000000000000000000000000000
      0007D8C3AEFE919191CB000000000000000000000000000000001F1F1F53CBCB
      CBF5DBDBDBFE1010101E00000000000000000000000000000000000000000000
      000000000000000000000000000017171725D5D5D5FDE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFC7C7C7F6AFAFAFD57E7E7EA53939395500000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000047474767DEDEDEFD8C8C8CC201010104000000000000
      0000000000000000000000000000000000001919192A5B5B5B9C0606061B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8B7B7B7F1141414520E0E0E3E0E0E0E3E0E0E0E3E0E0E
      0E3E0E0E0E3E0F0F0F3FA8A8A8CFE3E3E3FFE3E3E3FFE3E3E3FFB7B7B7F10A0A
      0A27000000000000000000000000000000000000000000000000000000000000
      00000000000052525281E2E2E2FEB8B8B8EE1515153A00000000000000000000
      0003635B52AB4545458800000000000000000000000005050519939393DBE2E2
      E2FE898989B30000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D17C3C3C3EDE3E3E3FFE1E1E1FDCCCC
      CCF4E2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FE949494C10404040E0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202087E7E7EABE2E2E2FE9C9C9CC92E2E2E3F0101
      0106000000022626262F1C1C1C29000000000000000000000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8B7B7B7F40808081D0000000000000000000000000000
      00000000000001010101A5A5A5C1E3E3E3FFE3E3E3FFE3E3E3FF8B8B8BC50606
      061B000000000000000000000000000000000000000000000000000000000000
      0000000000000404040FAAAAAADCE2E2E2FEA7A7A7E01414143B000000010000
      0000000000000000000000000000000000000C0C0C267A7A7AC2E0E0E0FDC7C7
      C7ED1E1E1E300000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000003838383AFE2E2E2FED5D5D5FA3939
      397CC8C8C8F1E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FE3E3E3E6E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000007070713777777A7D8D8D8FCDADADAF9C7C7
      C7E2C7C7C7E0DADADAF6BFBFBFEB171717310000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010105A7A7A7C8BDBDBDF5242424391C1C1C201C1C1C201C1C1C201C1C
      1C201C1C1C201D1D1D21ACACACC9E3E3E3FFE1E1E1FD969696C61111113B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1F1F38BFBFBFEDE2E2E2FEBDBDBDF0545454950F0F
      0F3E04040413040404100B0B0B313C3C3C83A7A7A7E5E1E1E1FED4D4D4F93D3D
      3D5C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C1BB0B0B0DBD8D8D8FA2B2B
      2B4F56565682DFDFDFFEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF737373AE0000
      0001000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000072B2B2B5D767676B9A0A0
      A0F19F9F9FEC7C7C7CC532323273040404170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001828282ADE2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FE969696C61313133E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001515152EA2A2A2D0E2E2E2FEE3E3E3FFE3E3
      E3FFADADADFBA7A7A7FCD9D9D9FDE3E3E3FFE3E3E3FFC0C0C0E82A2A2A470000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E208F8F8FC25959
      59950404040BA0A0A0C7E3E3E3FFE3E3E3FFE3E3E3FFDDDDDDFB4D4D4D880000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000006060617626262A3696969B5696969B7696969B7696969B76969
      69B7696969B7696969B7696969B75F5F5FA81111113A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505050F4D4D4D74A6A6A6D2CACA
      CAF2DEDEDEFEE1E1E1FECCCCCCF5B6B6B6DB616161890E0E0E1B000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000404040C2B2B
      2B63000000001C1C1C2FB9B9B9DFD0D0D0F8ACACACDF46464682020202080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001010101040000000400000004000000040000
      0004000000040000000400000004010101040000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000040808
      08252E2E2E3E3535353E0D0D0D2D000000070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000E0E0E23181818450606061C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      00001C1C1C30757575948E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18B8B8B9F3E3E
      3E5C000000030000000000000000000000000000000000000000000000000000
      00001C1C1C30757575948E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18B8B8B9F4040
      405F010101040000000000000000000000000000000000000000000000000000
      00001919192D757575948E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18B8B8B9F3E3E
      3E5C000000030000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDADA
      DAFB444444600000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDADA
      DAFB444444600000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDCDC
      DCFB454545620000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E0E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDADA
      DAFB444444600000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEB4C3D3FF505050A74F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F
      4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA49D8D7DDFE3E3
      E3FF7078809E0000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEB4C3D3FF505050A74F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F
      4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA49D8D7DDFE3E3
      E3FF7078809E0000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF7078809E0000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEB4C3D3FF505050A74F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F
      4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA44F4F4FA49D8D7DDFE3E3
      E3FF7078809E000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000020000
      00010000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000002000000000000
      00000000000000000000000000020000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF0101010600000000000000000303030B66686AA6474C
      52800000000200000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF0101010600000000090504127F7C7AC0353839610000
      000100000001373632687A7872B70404040C00000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFC8C8C8F6837F83C9DCDC
      DCFDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF0101010600000000010101046E6E6EAADFDFDFFED9D9
      D9FE4747477900000002000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101060000000018130E3BC4C4C4F5CDCDCDF63535
      355E36363667CACACAF7C1C1C1F00E0E0E2B00000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFD3D3D3FD313131680303030D6565
      65A9E1E1E1FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101060503010A726F6CABE2E2E2FE989898D7B0B0
      B0E4D9D9D9FE4D4D4D80000000030000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF0101010600000000000000002121214DBEBEBEEECBD3
      DBFFDED7CFFFB9B9B9E81C1C1C3D0000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFCECECEF83838386A02020208131613320000
      0005656565A9DCDCDCFDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101060B0703149E988ED68E8E8ECC0B0B0B1E1313
      1333B1B1B1E5D4D4D4FA4D4D4D800000000200000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF010101060000000000000000000000026252499FE0E0
      E0FEDADFE2FE484B4C86000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFCECECEF83B3B3B6E020202086565659BC0C2C0F03131
      315D0303030C666666A6DCDCDCFDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000C0C071D0707071A000000000000
      000016161636B1B1B1E5D9D9D9FE4747477900000002000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000031313165CACACAF7C4C4
      C4F6C5C5C5F7C8C8C8F22D2D2D540000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFCBD3DBFF3A3A3B79020202085F5F5F95DEDEDEFEE3E3E3FFCACA
      CAF6292929560303030C656565A9E1E1E1FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000013131333ADADADE2D8D8D8FD262F365C000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000001E160F3FCFCFCFFDBBBBBBEB1E1E
      1E452121214DBEBEBEEECCCCCCFA1212123000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FF78797DBD6C6A66A3DEDEDEFEE3E3E3FFE3E3E3FFE3E3
      E3FFCACACAF63131315D00000005656565A9DCDCDCFDE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000131313336A6A6AAD08080816000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000101010A5D5D5DA2212121490000
      000000000000242424515A5A5A990101010600000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFDEDFE1FFE0DFDEFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFC8C8C8F23131315D0303030C666666A6DCDCDCFDE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA5E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA5E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFCACACAF6292929560303030C656565A9E1E1E1FEE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFCBD3DBFF969696C5969696C3969696C3969696C3969696C39696
      96C3969696C3969696C3969696C3969696C3969696C3969696C3BFB6AFEAE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFCBD3DBFF969696C5969696C3969696C3969696C3969696C39696
      96C3969696C3969696C3969696C3969696C3969696C3969696C3BFB6AFEAE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFCACACAF63131315D04040412A59E96EEE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFC8C8C8F288807CCCDEDEDEFEE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFA4B9CEFF01010106000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E2DCD5FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E2DCD5FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E2DCD5FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000382B
      1D40E2DCD5FEA4B9CEFF0303030C010101060101010601010106010101060101
      0106010101060101010601010106010101060101010601010106796550A7E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000002020
      2038D5D5D5FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000002020
      2038D5D5D5FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000002020
      2038D5D5D5FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000002020
      2038D5D5D5FBCBD3DBFFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFC3BCB4FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000000202
      0207838383AED9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9B9
      B9E01E1E1E2F0000000000000000000000000000000000000000000000000202
      0207838383AED9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9B9
      B9E01E1E1E2F0000000000000000000000000000000000000000000000000202
      0207838383AED9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEBCBC
      BCE2202020320000000000000000000000000000000000000000000000000202
      02077E7E7EAAD9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9B9
      B9E01E1E1E2F0000000000000000000000000000000000000000000000000000
      000000000007282828387C7C7CA8E3E3E3FF9B9B9BCE38383840383838403838
      38403838384038383840383838405C5C5C87DCDCDCFDC2C2C2F2373737400909
      0917000000000000000000000000000000000000000000000000000000000000
      000000000007282828387C7C7CA8E3E3E3FF9B9B9BCE38383840383838403838
      38403838384038383840383838405C5C5C87DCDCDCFDC2C2C2F2373737400909
      0917000000000000000000000000000000000000000000000000000000000000
      0000000000072828283838383840383838403838384038383840383838403838
      38403838384038383840383838403838384038383840383838403636363F0A0A
      0A18000000000000000000000000000000000000000000000000000000000000
      0000010101062828283838383840383838403838384038383840383838403838
      38403838384038383840383838403838384038383840383838403636363F0909
      0917000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A5A5A88E3E3E3FF7D8387BD00000000000000000000
      0000000000000000000000000000332F2B5DDCDAD9FDB8B8B8EC000000000000
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
      000000000000000000000A0A0A0F1B1B1B1F0C0F121600000000000000000000
      00000000000000000000000000000705030A1B1B1A1F1515151C000000000000
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
      000000000000020202024242424D8484849A8888889F8888889F8888889F8888
      889F8888889F8888889F8888889F8888889F8484849A4242424D020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010421212138454545747A7A
      7A9B707070911111112200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C31767676958E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E
      8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18E8E8EA18B8B8B9F3E3E
      3E5C000000030000000000000000000000000000000000000000000000000000
      00000C0C0C0E8888889FD4D4D4F8BABABADA8383839B6D6D6D816C6C6C7F6C6C
      6C7F6C6C6C7F6C6C6C7F6D6D6D818383839BBABABADAD4D4D4F98888889F0C0C
      0C0E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000125252541999999C3D5D5D5F9E3E3E3FFE3E3
      E3FFE2E2E2FE7A7A7AAD00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B19B6B6B6E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFDADA
      DAFB444444600000000000000000000000000000000000000000000000000202
      02028888889FD7D7D7FC666666780A0A0A0C0000000000000000000000000000
      0000000000000000000000000000000000000A0A0A0C66666678D7D7D7FC8888
      889F020202020000000000000000000000000000000000000000000000000000
      000000000000000000004444446CCECECEF5E3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE2E2E2FE717171A600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF7078809E0000000000000000000000000000000000000000000000004242
      424DD4D4D4F86666667800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066666678D4D4
      D4F94242424D0000000000000000000000000000000000000000000000000000
      0000000000003C3C3C60DCDCDCFEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFCECECEFD1515153000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFC5C5C5F56D6D
      6DAB626262969D9D9DDFE0E0E0FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA10000000000000000000000000000000000000000000000009494
      94AEBABABADA0A0A0A0C00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A0CBABA
      BADA8484849A0000000000000000000000000000000000000000000000000000
      000015151526C2C2C2EDE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFDBDBDBFE4343436E0505051A050505190404041300000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFCBCBCBF7262626550000
      0002000000000909091E8B8B8BCEE2E2E2FEE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000C4C4
      C4E78383839B000000000000000000000000000000001818181C8787879EA3A3
      A3BFA3A3A3BF8A8A8AA31C1C1C20000000000000000000000000000000008383
      839B8888889F0000000000000000000000000000000000000000000000000000
      000068686897E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFDBDBDBFDB7B7B7F3B6B6B6F1B2B2B2E68F8F8FBA2323233D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000111315310F14182E00000000000000000000
      00000000000000000000000000000101010B2D28205300000001000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFE2E2E2FEE2E2E2FEE2E2E2FEE2E2E2FE868686C1000000030000
      000000000000000000002B2B2B65E1E1E1FEE2E2E2FEE2E2E2FEE2E2E2FEE3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000D8D8
      D8FD6D6D6D810000000000000000000000001B1B1B20B5B5B5D4555555643333
      333D3939394345454551B5B5B5D4212121270000000000000000000000006D6D
      6D818888889F0000000000000000000000000000000000000000000000000404
      040DB4B4B4E2E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFD5D5D5F94040
      4065000000000000000000000000000000000000000000000000000000000000
      000000000000000000001C1C1936B9B9B8EABABABAEB17171734000000000000
      000000000000000000000101010B757575B3D8D8D8FC54575787000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFABAFB7FB1010104910101049101010490A0A0A2E000000000101
      01060707071E00000000030303101111114C1010104910101049806B57C0E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000D9D9
      D9FE6D6D6D7F0000000000000000010101018383839B52525261000000000B0B
      0B0D0C0C0C0E00000000494949558E8E8EA60202020200000000000000006C6C
      6C7F8888889F0000000000000000000000000000000000000000000000001A1A
      1A33D3D3D3F8E3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFC6C6
      C6ED141414260000000000000000000000000000000000000000000000000000
      000000000000000000001414132DADADACE1E3E3E3FFB3B3B3E31A1A1A380000
      0000000000000404040F6F6F6FACDFDFDFFED4D4D4FA484A4A77000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA000000000000000000000000000000000303030A6363
      639DA5A5A5DC1414142B000000000000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000D9D9
      D9FE6D6D6D7F000000000000000008080809ABABABC83636363F111111141212
      12151616161A0E0E0E103333333DACACACCA0B0B0B0D00000000000000006C6C
      6C7F8888889F0000000000000000000000000000000000000000000000002C26
      213EDCDAD7FEE3E3E3FFE2E2E2FEE2E2E2FEE2E2E2FEE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEE2E2E2FEE2E2E2FEE1E1
      E1FE5555557B0000000000000000000000000000000000000000000000000000
      000000000000000000000000000016161633B0B0B0E5E2E2E2FEB3B3B3E31717
      17340101010B6F6F6FABDEDEDEFED9D9D9FD4C4C4C7A00000002000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA000000000000000000000000000000055A5A5A9ADDDD
      DDFEE3E3E3FFA4A4A4DA0E0E0E250000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000D9D9
      D9FE6D6D6D7F000000000000000008080809ABABABC83636363F2F2F2F37ABAB
      ABC84A4A4A580E0E0E103333333DACACACCA0B0B0B0D00000000000000006C6C
      6C7F8888889F0000000000000000000000000000000000000000000000002323
      233CD8D8D8FDD2D2D2FC202020540B0B0B25A3A3A3DBE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFD8D8D8FD3333335F0707071D8F8F8FD5E3E3
      E3FF7878789D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F2BB0B0B0E5E3E3E3FFBABA
      BAEB7F7F7FC4DFDFDFFED9D9D9FD454545730000000100000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA0000000000000000010101045E5E5E9FDDDDDDFEE3E3
      E3FFE3E3E3FFE3E3E3FFA8A8A8E00D0D0D2400000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000D9D9
      D9FE6D6D6D7F0000000000000000010101018383839B66666677A4A4A4C05050
      505F0000000000000000484848568E8E8EA60202020200000000000000006C6C
      6C7F8888889F0000000000000000000000000000000000000000000000001111
      1128CCCCCCF2BBC2CAFC0909092101010106868686C2E3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFCDCDCDFB1616162F000000037A726AB9E3E3
      E3FF707070990000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161633ADADADE1E3E3
      E3FFE3E3E3FFD4D4D4FA4C4C4C7A000000010000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA0000000000000000271F1865828282DED1C7BDFAE3E3
      E3FFE3E3E3FFDADDE1FF8D949BE6444B53B002020209000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000D8D8
      D8FD6D6D6D810000000000000000000000001B1B1B1FBDBDBDDD5050505F4242
      424F4C4C4C594A4A4A57B5B5B5D4212121270000000000000000000000006D6D
      6D818888889F0000000000000000000000000000000000000000000000000000
      00039C9C9CD0E2E2E2FE969696D87A7A7AC0D5D5D5FBE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEA2A2A2DC717171BBD4D4D4FCE1E1
      E1FE494949680000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000016161633B0B0
      B0E5D9D9D9FD4C4C4C7A00000002000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA00000000000000000000000000000000BBA792DEE3E3
      E3FFE3E3E3FFD1D8DFFF1524303F0000000000000000000000007A654FA4E3E3
      E3FF63798EA1000000000000000000000000000000000000000000000000C4C4
      C4E78383839B0000000000000000000000000000000000000000000000005858
      5867A5A5A5C18A8A8AA31B1B1B20000000000000000000000000000000008383
      839B8888889F0000000000000000000000000000000000000000000000000000
      00004444446AE0E0E0FEE3E3E3FFE3E3E3FFDEDEDEFE8A8A8AC7999999D5E0E0
      E0FEE3E3E3FFC4C4C4EF737373B7C9C9C9F3E3E3E3FFE3E3E3FFE3E3E3FFC7C7
      C7ED121212200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F2B383838660000000100000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA00000000000000000000000000000000BBA792DEE3E3
      E3FFE3E3E3FFD1D8DFFF1524303F0000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000009494
      94AEBABABADA0A0A0A0C00000000000000000000000000000000000000000A0A
      0A0C0101010100000000000000000000000000000000000000000A0A0A0CBABA
      BADA8484849A0000000000000000000000000000000000000000000000000000
      00000505050E999999C9E2E2E2FEE3E3E3FF989898D6000000070B0B0B20B6B6
      B6E9E1E1E1FD3F3F3F70000000004242427CDDDDDDFCE3E3E3FFE0E0E0FE5858
      587E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E3DCD5FFB1B1B1FA0000000000000000000000000000000061584E847878
      789D7878789D6F72769B0B1319240000000000000000000000007A654FA4E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000004242
      424DD4D4D4F86767677800000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000066666678D4D4
      D4F84242424D0000000000000000000000000000000000000000000000000000
      00000000000012121224B9B9B9E8E2E2E2FEADADADE8090909291A1A1A49C4C4
      C4F3E1E1E1FE5959599A030303115A5A5AA5DFDFDFFDE2E2E2FE7E7E7EAB0505
      0509000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000382B
      1D40E2DCD5FEABAFB7FB01010106010101060101010601010106010101060101
      0106010101060101010601010106010101060101010601010106796550A7E3E3
      E3FF63798EA10000000000000000000000000000000000000000000000000202
      02028888889FD8D8D8FC676767780A0A0A0C0000000000000000000000000000
      0000000000000000000000000000000000000A0A0A0C66666678D7D7D7FC8888
      889F020202020000000000000000000000000000000000000000000000000000
      0000000000000000000010101024999999C9E1E1E1FEC4C4C4FDCCCCCCFCE3E3
      E3FFE3E3E3FFDFDFDFFEB3B3B3FBE2E2E2FED4D4D4F86363638D010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      2038D5D5D5FBCACED6FEA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFA4A4A4FFC3BCB4FFE3E3
      E3FF717171960000000000000000000000000000000000000000000000000000
      00000C0C0C0E8888889FD4D4D4F8BABABADA8383839B6D6D6D816D6D6D7F6D6D
      6D7F6D6D6D7F6D6D6D7F6D6D6D818383839BBABABADAD4D4D4F88888889F0C0C
      0C0E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000404040D46464668A0A0A0CFCACACAF0DCDC
      DCFDE2E2E2FED0D0D0F7C6C6C6E6797979A52121213700000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0207838383AED9D9D9FBE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE2E2E2FEB9B9
      B9E01E1E1E2F0000000000000000000000000000000000000000000000000000
      000000000000020202024242424D949494AEC4C4C4E7D8D8D8FDD9D9D9FED9D9
      D9FED9D9D9FED9D9D9FED8D8D8FDC4C4C4E7949494AE4242424D020202020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002070707232C2C
      2C3C3838383F131313300303030E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000072828283838383840383838403838384038383840383838403838
      38403838384038383840383838403838384038383840383838403636363F0909
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000C00000000100010000000000000900000000000000000000
      000000000000000000000000FFFFFF00FFFFFF000000000000000000FFFFFF00
      0000000000000000FFFFFF000000000000000000FFFFFF000000000000000000
      FFFFFF000000000000000000FFFFFF000000000000000000FC003F0000000000
      00000000FC003F000000000000000000FC003F000000000000000000FC003F00
      0000000000000000FC003F000000000000000000FC003F000000000000000000
      FC003F000000000000000000FC003F000000000000000000FC003F0000000000
      00000000FC003F000000000000000000FC003F000000000000000000FE003F00
      0000000000000000FFFFFF000000000000000000FFFFFF000000000000000000
      FFFFFF000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFF7FFFFFFFFFFFFFF
      FF007FFF007FFFFFFFFFFFFFFE003FFE003FFFFFFFFFFFFFFC001FFC001FFE18
      3FFF1FFFF87E0FF8420FFE183FFF0FFFF0FF0FF0810FFE183FFF03FFF0FF8FF0
      008FFE183FFF01FFF1FF8FF1000FFE183FFF007FF1FF87F00007FE183FFF003F
      F1FF8FF1000FFE183FFF003FF1FF8FF1000FFE183FFF007FF0FF0FF0800FFE18
      3FFF01FFF87F0FF8410FFE183FFF07FFF83C1FF8341FFE183FFF0FFFFC003FFC
      003FFE187FFFBFFFFE007FFE007FFFFFFFFFFFFFFF80FFFF80FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
      FFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFFFFFFFFF807FFCFFFFFFFFFFFFFFFF
      FE001FFC7FFFFFFFFFFC001FFE000FFC7FFFFFC1FFF8000FFE0E07FC0FFFFF00
      7FF0000FF83F07FC03FFFF803FF0000FF0FE07FC03FFFC9C3FF0180FE07803F8
      03FFF87E1FF0180FC02043F801FFF03F1FF0000F8020E3F800FFE01C07F0000F
      C023E3F8007FF87C07F0000FF0E3C3FE007FFC7E0FF0000FF0E3C3FE003FFC3F
      1FF0000FF86387FE001FFC01BFF0F80FF81F07FE001FFE00FFF0001FFC000FFF
      000FFF00FFF0003FFE001FFF801FFFE7FFF8007FFF003FFFC81FFFFFFFFC00FF
      FFC0FFFFFC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00007F00007F00007F00007
      E00007E00007E00007E00007E00007E00007E00007E00007E1CFC7E1BDC7E000
      07E1FFC7E187C7E100C7E00007E1FFC7E103C7E100C7E00007E1FFC7E001C7E1
      81C7E00007E1FFC7E000C7E183C7E00007E1FFC7E13047E181C7E00007E1FFC7
      E1F847E100C7E00007E1FFC7E1FC47E118C7E00007E1FFC7E1FFC7E1FFC7E000
      07E1FFC7E00007E00007E00007E1FFC7E00007E00007E00007E1FFC7E00007E0
      0007E00007E00007E00007E00007E00007E00007E00007E00007E00007E00007
      F0000FF0000FF0000FF0000FFC7E3FFC7E3FFFFFFFFFFFFFFC7E3FFC7E3FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8001FFF03FFFFFFFFF00007
      F0000FFC03FFFFFFFFE00007E0FF07FC03FFFFFFFFE00007E3FFC7F803FFFFFF
      FFE00007E3FFC7F0003FFFFFFFE00807E781E7F0001FFE7E3FE01C07E700E7E0
      000FFC3C3FE02407E62467E00007FC183FE3C3C7E60067E00007FE003FE381C7
      E60067E00007FF007FE300C7E60C67E00007FF80FFE30047E700E7E00007FFC1
      FFE3C1C7E7E1E7F00007FFE3FFE3C1C7E3E7C7F0020FFFFFFFE3C1C7E3FFC7F8
      000FFFFFFFE00007E0FF07FC001FFFFFFFE00007F0000FFE003FFFFFFFE00007
      F8001FFF81FFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
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
  object PopupMenuTaskStart: TPopupMenu
    Left = 976
    Top = 712
    object MenuItemTaskStartFrom: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1079#1072#1076#1072#1095#1091' '#1089'...'
      OnClick = MenuItemTaskStartFromClick
    end
  end
  object PopupMenuView: TPopupMenu
    Left = 128
    Top = 248
    object MenuItemOpenLabels: TMenuItem
      Caption = #1052#1077#1090#1082#1080
      OnClick = MenuItemOpenLabelsClick
    end
  end
  object PopupMenuTask: TPopupMenu
    OnPopup = PopupMenuTaskPopup
    Left = 416
    Top = 280
    object N2: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1076#1079#1072#1076#1072#1095#1091
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object MenuItemTaskLabels: TMenuItem
      Caption = #1052#1077#1090#1082#1080
    end
    object MenuItemTaskRename: TMenuItem
      Caption = #1055#1077#1088#1077#1080#1084#1077#1085#1085#1086#1074#1072#1090#1100
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object MenuItemTaskDel: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MenuItemTaskDelClick
    end
  end
  object TimerAutoSaveTask: TTimer
    Enabled = False
    Interval = 2000
    Left = 136
    Top = 640
  end
  object ColorDialog: TsColorDialog
    Ctl3D = False
    Color = 9013641
    CustomColors.Strings = (
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85'
      '94DD85')
    Left = 132
    Top = 584
  end
  object PopupMenuViewProp: TPopupMenu
    Left = 596
    Top = 64
    object MenuItemShowEnded: TMenuItem
      Caption = #1055#1086#1082#1072#1079#1099#1074#1072#1090#1100' '#1079#1072#1074#1077#1088#1096#1105#1085#1085#1099#1077' '#1079#1072#1076#1072#1095#1080
      OnClick = MenuItemShowEndedClick
    end
  end
  object PopupMenuComment: TPopupMenu
    Left = 756
    Top = 687
    object MenuItemCommentDel: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MenuItemCommentDelClick
    end
  end
  object PopupMenuTimes: TPopupMenu
    Left = 777
    Top = 235
    object MenuItemTimeEdit: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Default = True
    end
    object MenuItemTimeStartFrom: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1079#1072#1076#1072#1095#1091' '#1089#1088#1072#1079#1091' '#1087#1086#1089#1083#1077' '#1101#1090#1086#1081
      OnClick = MenuItemTimeStartFromClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuItemLinkWithTask: TMenuItem
      Caption = #1055#1088#1080#1074#1103#1079#1072#1090#1100' '#1082' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1079#1072#1076#1072#1095#1077
      OnClick = MenuItemLinkWithTaskClick
    end
    object MenuItemDropTaskLink: TMenuItem
      Caption = #1054#1090#1074#1103#1079#1072#1090#1100' '#1086#1090' '#1079#1072#1076#1072#1095#1080
      OnClick = MenuItemDropTaskLinkClick
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object MenuItemTimeDelete: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MenuItemTimeDeleteClick
    end
  end
  object TrayIcon: TTrayIcon
    Visible = True
    OnClick = TrayIconClick
    Left = 652
    Top = 336
  end
  object ImageListCalendar: TImageList
    ColorDepth = cd32Bit
    Left = 128
    Top = 520
    Bitmap = {
      494C010103000800F40010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002090C3010262994183538C51B383CCD152E32AF07171B640001
      0106000000000000000000000000000000000000000000000000000000000000
      000000000000272A2B3042697794337E9AC52F81A0CD3C768CAF3E4E53640505
      0506000000000000000000000000000000000000000000000000000000000000
      00000000000002081630092262940E328EC5103594CD0C2B7BAF05133A640000
      0106000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00030E242990264C4CFD2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2A4E4CFF1C3B
      3FDA02080C2C0000000000000000000000000000000000000000000000000202
      0203426572900B97CCFD089FDAFF089FDAFF089FDAFF089FDAFF089ED8FF2883
      A6DA2427282C0000000000000000000000000000000000000000000000000000
      000309205A90164BCEFD1950DDFF1950DDFF1950DDFF1950DDFF184FDBFF1139
      9EDA0107142C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F27
      2B9A2A4E4CFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF214346EC0107092200000000000000000000000000000000000000004069
      789A089DD8FF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF1B8CB7EC1D1F1F2200000000000000000000000000000000000000000A21
      629A184FDAFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1440B3EC01050F2200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000030F1247284C
      4CFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF163135BC00000000000000000000000000000000343B3E47089A
      D2FF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF387992BC00000000000000000000000000000000030D2547174C
      D4FF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF0D2F81BC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000153134B82B4F
      4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF274C4CFF01080C2E000000000000000000000000387991B8089F
      DAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF0898D0FF2628292E0000000000000000000000000D2E82B81950
      DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF174BD2FF0107132E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000214447F32B4F
      4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF2B4F4DFF09191C69000000000000000000000000158BB9F3089F
      DAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF089FDAFF405157690000000000000000000000001341B6F31950
      DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF1950DDFF06153E69000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001010622484AFF2B4F
      4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF2B4F4DFF0B1E217A0000000000000000050505060A8FC2FF089F
      DAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF089FDAFF435B657A0000000000000000000001061545C2FF1950
      DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF1950DDFF081A4D7A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F4345F02B4F
      4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF2B4F4DFF07181C65000000000000000000000000188AB6F0089F
      DAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF089FDAFF3F4E5465000000000000000000000000133FB3F01950
      DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF1950DDFF05133B65000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000142E32B02B4F
      4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF264B4BFE010609260000000000000000000000003B768CB0089F
      DAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF0996CDFE202222260000000000000000000000000D2C7BB01950
      DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF164ACFFE01050F26000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020C0F3A274B
      4BFE2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF2B4F4DFF132D31AE000000000000000000000000000000002D32333A0997
      CEFE089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF089FDAFF3C7487AE0000000000000000000000000000000002091D3A174B
      D0FE1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF1950DDFF0C2A76AE00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B20
      2485294D4CFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF2B4F
      4DFF1D3E41E1010406180000000000000000000000000000000000000000435F
      6B85089BD5FF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089FDAFF089F
      DAFF2387ADE1151616180000000000000000000000000000000000000000071D
      5185184DD7FF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950DDFF1950
      DDFF113BA6E10003091800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000091D2174234849F62B4F4DFF2B4F4DFF2B4F4DFF2B4F4DFF294D4CFF1634
      37C40006071C0000000000000000000000000000000000000000000000000000
      000042575F741291C2F6089FDAFF089FDAFF089FDAFF089FDAFF089BD4FF347C
      96C419191A1C0000000000000000000000000000000000000000000000000000
      0000061846741646C1F61950DDFF1950DDFF1950DDFF1950DDFF184DD7FF0D31
      88C400030B1C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000004061B0B1D2076142D2FA7152E32AF0F252992030F12470000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818191B425861763D7285A73C768CAF42687692343B3D470000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000040A1B061949760B2973A70C2B7BAF09216092030B25470000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000F80FF80FF80F0000
      E007E007E0070000E003E003E0030000C003C003C0030000C001C001C0010000
      C001C001C00100008001800180010000C001C001C0010000C001C001C0010000
      C003C003C0030000E003E003E0030000F007F007F0070000F81FF81FF81F0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenuFile: TPopupMenu
    Left = 40
    Top = 240
    object MenuItemQuit: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = MenuItemQuitClick
    end
  end
end

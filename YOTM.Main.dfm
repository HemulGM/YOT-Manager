object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'YOT Manager'
  ClientHeight = 777
  ClientWidth = 1484
  Color = 3684408
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 15921906
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = []
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 16
  object Shape1: TShape
    Left = 1032
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
    Width = 780
    Height = 737
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object TableExTasks: TTableEx
      Left = 0
      Top = 80
      Width = 780
      Height = 457
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
      StyleElements = [seBorder]
      OnDblClick = TableExTasksDblClick
      OnMouseUp = TableExTasksMouseUp
      OnKeyDown = TableExTasksKeyDown
      OnDrawCellData = TableExTasksDrawCellData
      ItemIndex = -1
      OnChangeItem = TableExTasksChangeItem
      OnEdit = TableExTasksEdit
      OnEditCancel = TableExTasksEditCancel
      OnEditOk = TableExTasksEditOk
      ProcEmpty = True
      Columns = <
        item
          Width = 32
          MinWidth = 32
        end
        item
          Caption = #1047#1072#1076#1072#1095#1072
          Width = 748
          MinWidth = 100
        end>
      DefaultDataDrawing = False
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
      ShowFocus = True
      DrawColumnBorded = False
      MouseRightClickTooClick = True
      EditOnDblClick = False
    end
    object PanelTaskEdit: TPanel
      Left = 0
      Top = 0
      Width = 780
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = 3684408
      ParentBackground = False
      TabOrder = 1
      StyleElements = []
      object ButtonFlat1: TButtonFlat
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
        OnClick = ButtonFlat1Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
      end
      object ButtonFlat9: TButtonFlat
        AlignWithMargins = True
        Left = 103
        Top = 3
        Width = 94
        Height = 34
        Align = alLeft
        Caption = #1059#1076#1072#1083#1080#1090#1100
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
        TabOrder = 1
        TabStop = True
        TextFormat = [tfSingleLine, tfVerticalCenter]
      end
    end
    object PanelTaskAdd: TPanel
      Left = 0
      Top = 40
      Width = 780
      Height = 40
      Align = alTop
      BevelOuter = bvNone
      Color = 3684408
      ParentBackground = False
      TabOrder = 2
      StyleElements = []
      object EditNewTaskName: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 737
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
      end
      object ButtonFlat2: TButtonFlat
        AlignWithMargins = True
        Left = 743
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
        OnClick = ButtonFlat2Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 1
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
    end
    object PanelTask: TPanel
      Left = 0
      Top = 537
      Width = 780
      Height = 200
      Align = alBottom
      BevelOuter = bvNone
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1079#1072#1076#1072#1095#1091' '#1080#1079' '#1089#1087#1080#1089#1082#1072
      TabOrder = 3
      object Shape4: TShape
        Left = 0
        Top = 0
        Width = 780
        Height = 2
        Align = alTop
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitLeft = 3
        ExplicitTop = -5
        ExplicitWidth = 666
      end
      object Shape5: TShape
        Left = 439
        Top = 44
        Width = 2
        Height = 156
        Align = alRight
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitLeft = 320
        ExplicitTop = 8
        ExplicitHeight = 198
      end
      object Shape6: TShape
        Left = 0
        Top = 42
        Width = 780
        Height = 2
        Align = alTop
        Brush.Color = 3026478
        Pen.Color = 3026478
        ExplicitTop = 48
        ExplicitWidth = 666
      end
      object PanelTaskClient: TPanel
        Left = 0
        Top = 44
        Width = 439
        Height = 156
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
      object PanelTaskComments: TPanel
        Left = 441
        Top = 44
        Width = 339
        Height = 156
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object TableExComments: TTableEx
          Left = 0
          Top = 0
          Width = 339
          Height = 116
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
          ItemIndex = -1
          GetData = TableExCommentsGetData
          OnEdit = TableExCommentsEdit
          OnEditOk = TableExCommentsEditOk
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
        end
        object Panel2: TPanel
          Left = 0
          Top = 116
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
            TextHint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'...'
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
          end
        end
      end
      object PanelTaskTop: TPanel
        Left = 0
        Top = 2
        Width = 780
        Height = 40
        Align = alTop
        BevelOuter = bvNone
        Color = 3684408
        ParentBackground = False
        TabOrder = 2
        StyleElements = []
        object LabelTaskName: TLabel
          AlignWithMargins = True
          Left = 50
          Top = 3
          Width = 680
          Height = 34
          Margins.Left = 10
          Margins.Right = 10
          Align = alClient
          Caption = #1042#1088#1077#1084#1077#1085#1085#1072#1103' '#1096#1082#1072#1083#1072
          Color = 3684408
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 15921906
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitWidth = 128
          ExplicitHeight = 19
        end
        object ButtonFlat11: TButtonFlat
          AlignWithMargins = True
          Left = 743
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
          OnClick = ButtonFlat11Click
          RoundRectParam = 0
          ShowFocusRect = False
          TabOrder = 0
          TabStop = True
          TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
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
        end
      end
    end
  end
  object PanelRight: TPanel
    Left = 1034
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
      object PanelTimes: TPanel
        Left = 0
        Top = 0
        Width = 450
        Height = 737
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 1
        object TableExTimes: TTableEx
          Left = 0
          Top = 40
          Width = 450
          Height = 475
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
              Width = 318
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
            end
          end
        end
      end
      object PanelSettings: TPanel
        Left = 450
        Top = 0
        Width = 450
        Height = 737
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
        Left = 450
        Top = 0
        Width = 450
        Height = 737
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvNone
        TabOrder = 2
        object DrawGrid1: TDrawGrid
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
          RowCount = 8
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
            65
            65
            65)
        end
      end
    end
  end
  object DragBarTop: TsDragBar
    Left = 0
    Top = 0
    Width = 1484
    Height = 40
    Cursor = crHandPoint
    SkinData.SkinSection = 'DRAGBAR'
    BevelOuter = bvNone
    Caption = ' '
    Color = 3026478
    StyleElements = [seBorder]
    ParentBackground = False
    TabOrder = 2
    DraggedControl = Owner
    object Shape2: TShape
      Left = 1284
      Top = 0
      Width = 2
      Height = 40
      Align = alRight
      Brush.Color = 3684408
      Pen.Color = 3684408
      ExplicitLeft = 916
      ExplicitTop = 3
    end
    object Shape3: TShape
      Left = 1406
      Top = 0
      Width = 2
      Height = 40
      Align = alRight
      Brush.Color = 3684408
      Pen.Color = 3684408
      ExplicitLeft = 1094
      ExplicitTop = -6
    end
    object ButtonFlat3: TButtonFlat
      AlignWithMargins = True
      Left = 41
      Top = 10
      Width = 38
      Height = 20
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'File'
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
      TabOrder = 0
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
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
    end
    object ButtonFlat5: TButtonFlat
      AlignWithMargins = True
      Left = 85
      Top = 10
      Width = 38
      Height = 20
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Edit'
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
    end
    object ButtonFlatMenuView: TButtonFlat
      AlignWithMargins = True
      Left = 129
      Top = 10
      Width = 38
      Height = 20
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'View'
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
    end
    object ButtonFlatCalendar: TButtonFlat
      Left = 1326
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
      OnClick = ButtonFlatCalendarClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 4
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
    end
    object ButtonFlatClose: TButtonFlat
      AlignWithMargins = True
      Left = 1449
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
      Visible = False
    end
    object ButtonFlatMinimize: TButtonFlat
      AlignWithMargins = True
      Left = 1411
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
      Visible = False
    end
    object ButtonFlatSettings: TButtonFlat
      Left = 1366
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
    end
    object ButtonFlatTimes: TButtonFlat
      Left = 1286
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
    end
  end
  object PanelLeft: TPanel
    Left = 0
    Top = 40
    Width = 250
    Height = 737
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    object ButtonFlatDeadlined: TButtonFlat
      AlignWithMargins = True
      Left = 3
      Top = 83
      Width = 244
      Height = 34
      Align = alTop
      Caption = #1055#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1077' '#1079#1072#1076#1072#1095#1080
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
      ImageIndex = 17
      Images = ImageList24
      OnClick = ButtonFlatDeadlinedClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 0
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubText = '0'
      VisibleSubText = True
    end
    object ButtonFlatTaskNow: TButtonFlat
      AlignWithMargins = True
      Left = 3
      Top = 43
      Width = 244
      Height = 34
      Align = alTop
      Caption = #1057#1077#1075#1086#1076#1085#1103': 18 '#1086#1082#1090', '#1063#1090
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
      ImageIndex = 9
      Images = ImageList24
      OnClick = ButtonFlatTaskNowClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubText = '0'
      VisibleSubText = True
    end
    object ButtonFlatTaskInbox: TButtonFlat
      AlignWithMargins = True
      Left = 3
      Top = 123
      Width = 244
      Height = 34
      Align = alTop
      Caption = #1042#1093#1086#1076#1103#1097#1080#1077
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
      ImageIndex = 15
      Images = ImageList24
      OnClick = ButtonFlatTaskInboxClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 2
      TabStop = True
      TextFormat = [tfSingleLine, tfVerticalCenter]
      SubText = '0'
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
      object ButtonFlat7: TButtonFlat
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 34
        Height = 34
        Margins.Right = 0
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
        ImageIndex = 4
        Images = ImageList24
        OnClick = ButtonFlat7Click
        RoundRectParam = 0
        ShowFocusRect = False
        TabOrder = 0
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      end
      object Calendar: TCalendarPicker
        AlignWithMargins = True
        Left = 37
        Top = 3
        Width = 176
        Height = 34
        Margins.Left = 0
        Margins.Right = 0
        Align = alClient
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
        FirstDayOfWeek = dwMonday
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
      object ButtonFlat6: TButtonFlat
        AlignWithMargins = True
        Left = 213
        Top = 3
        Width = 34
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
        TabOrder = 2
        TabStop = True
        TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
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
    Left = 156
    Top = 200
    Bitmap = {
      494C010114005800200118001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      2800000060000000900000000100010000000000C00600000000000000000000
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
    Left = 64
    Top = 504
    object MenuItemTaskStartFrom: TMenuItem
      Caption = #1053#1072#1095#1072#1090#1100' '#1079#1072#1076#1072#1095#1091' '#1089'...'
      OnClick = MenuItemTaskStartFromClick
    end
  end
  object PopupMenuView: TPopupMenu
    Left = 160
    Top = 272
    object MenuItemOpenLabels: TMenuItem
      Caption = #1052#1077#1090#1082#1080
      OnClick = MenuItemOpenLabelsClick
    end
  end
  object PopupMenuTask: TPopupMenu
    Left = 72
    Top = 368
    object MenuItemTaskLabels: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1077#1090#1082#1091'...'
      OnClick = MenuItemTaskLabelsClick
    end
    object MenuItemTaskDel: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = MenuItemTaskDelClick
    end
  end
end

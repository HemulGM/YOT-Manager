unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  System.UITypes, HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable,
  YOTM.DB, System.ImageList, Vcl.ImgList, HGM.Button, Vcl.WinXCalendars,
  YOTM.Form.Notify.Task, Vcl.AppEvnts, Vcl.Menus, YOTM.DB.Comments,
  YOTM.DB.Labels, YOTM.DB.Tasks, YOTM.DB.TaskRepeats, YOTM.DB.Times,
  HGM.Common.Utils, YOTM.DB.LabelTypes, YOTM.DB.Notes, YOTM.Manager, HGM.Popup,
  HGM.Controls.ColorGrid;

type
  TFontItem = record
    FontName: string;
    class function Create(const FontName: string): TFontItem; static;
  end;

  TFontItems = TTableData<TFontItem>;

  TTimeSection = record
    TimeS, TimeE: TTime;
  end;

  TTimeSections = TList<TTimeSection>;

  TCalendarCell = record
    Text: string;
    IsDate: Boolean;
    IsDayOsWeek: Boolean;
    DayOfWeek: Integer;
    Date: TDate;
   /// <summary>
   /// Не выбранный (не текущий) месяц
   /// </summary>
    IsAnotherMonth: Boolean;
  end;

  TCalendarArray = array[0..6, 0..8] of record
    Actual: Integer;
    NotActual: Integer;
    Deadlined: Integer;
    Repeated: Integer;
  end;

  TNotifyItem = record
    TaskID: Integer;
    Form: TFormNotifyTask;
  end;

  TNotifyItems = class(TTableData<TNotifyItem>)
    function FindByTask(TaskID: Integer): Integer;
    function FindByForm(Form: TFormNotifyTask): Integer;
    function Add(TaskID: Integer; Form: TFormNotifyTask): Integer; overload;
    procedure Delete(Index: Integer);
    procedure Clear;
  end;

  TWorkDays = array[1..7] of Boolean;

  TViewMode = (vmToday, vmSelectedDate, vmDeadlined, vmInbox, vmLabel);

  TSlide = (slTimes, slSettings, slCalendar, slNotes);

  TFormMain = class(TForm)
    TimerRepaint: TTimer;
    TimerTime: TTimer;
    PanelTimes: TPanel;
    DrawPanel: TDrawPanel;
    TableExTimes: TTableEx;
    ImageList24: TImageList;
    PanelSettings: TPanel;
    Panel1: TPanel;
    ButtonFlatTaskEnd: TButtonFlat;
    ButtonFlatTaskStart: TButtonFlat;
    PanelRight: TPanel;
    PanelTasks: TPanel;
    Shape1: TShape;
    TableExTasks: TTableEx;
    PanelTaskEdit: TPanel;
    PanelClient: TPanel;
    PanelCalendar: TPanel;
    PopupMenuTaskStart: TPopupMenu;
    MenuItemTaskStartFrom: TMenuItem;
    ButtonFlatAddTime: TButtonFlat;
    DrawGridCalendar: TDrawGrid;
    ButtonFlat9: TButtonFlat;
    PanelTask: TPanel;
    Shape4: TShape;
    TableExComments: TTableEx;
    Panel2: TPanel;
    ButtonFlatNewComment: TButtonFlat;
    PanelTaskTop: TPanel;
    ButtonFlatTaskClose: TButtonFlat;
    ButtonFlatTaskState: TButtonFlat;
    PanelTaskClient: TPanel;
    PanelTaskComments: TPanel;
    Shape5: TShape;
    Shape6: TShape;
    PopupMenuView: TPopupMenu;
    MenuItemOpenLabels: TMenuItem;
    PopupMenuTask: TPopupMenu;
    MenuItemTaskDel: TMenuItem;
    PanelTimeScale: TPanel;
    Panel4: TPanel;
    ButtonFlatCollapseScale: TButtonFlat;
    Shape7: TShape;
    PanelLeft: TPanel;
    ButtonFlatDeadlined: TButtonFlat;
    ButtonFlatTaskNow: TButtonFlat;
    ButtonFlatTaskInbox: TButtonFlat;
    Panel3: TPanel;
    ButtonFlat7: TButtonFlat;
    Calendar1: TCalendarPicker;
    ButtonFlat6: TButtonFlat;
    Label3: TLabel;
    Shape8: TShape;
    TimerAutoSaveTask: TTimer;
    PanelTaskLabels: TPanel;
    Shape9: TShape;
    MenuItemTaskLabels: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    MenuItemTaskRename: TMenuItem;
    N4: TMenuItem;
    PanelTaskDAN: TPanel;
    ButtonFlatTaskDAN: TButtonFlat;
    ButtonFlatDANClose: TButtonFlat;
    ButtonFlatViewMode: TButtonFlat;
    ShapeBorder: TShape;
    Shape11: TShape;
    Shape12: TShape;
    PanelTaskColor: TPanel;
    ButtonFlatTaskColor: TButtonFlat;
    ButtonFlatTaskColorClose: TButtonFlat;
    PopupMenuViewProp: TPopupMenu;
    MenuItemShowEnded: TMenuItem;
    PanelNotes: TPanel;
    PanelLog: TPanel;
    MemoLog: TMemo;
    Shape13: TShape;
    PanelNoteTools: TPanel;
    ButtonFlatSaveNote: TButtonFlat;
    ButtonFlatLoadback: TButtonFlat;
    PanelNoteInfo: TPanel;
    Shape14: TShape;
    Shape15: TShape;
    LabelNoteModify: TLabel;
    Label8: TLabel;
    Shape16: TShape;
    PopupMenuComment: TPopupMenu;
    MenuItemCommentDel: TMenuItem;
    PopupMenuTimes: TPopupMenu;
    MenuItemDropTaskLink: TMenuItem;
    MenuItemLinkWithTask: TMenuItem;
    N1: TMenuItem;
    N5: TMenuItem;
    MenuItemTimeDelete: TMenuItem;
    MenuItemTimeEdit: TMenuItem;
    MenuItemTimeStartFrom: TMenuItem;
    TrayIcon: TTrayIcon;
    ImageListCalendar: TImageList;
    ButtonFlatCurrentDate: TButtonFlat;
    ButtonFlatAddTask: TButtonFlat;
    DragBarTop: TDragPanel;
    ButtonFlatMenuFile: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlat5: TButtonFlat;
    ButtonFlatMenuView: TButtonFlat;
    PopupMenuFile: TPopupMenu;
    MenuItemQuit: TMenuItem;
    Shape10: TShape;
    ScrollBoxLabels: TScrollBox;
    Shape18: TShape;
    Panel7: TPanel;
    PanelWorkDays: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    ButtonFlat11: TButtonFlat;
    ButtonFlatTimeFromHH: TButtonFlat;
    ButtonFlat12: TButtonFlat;
    ButtonFlat13: TButtonFlat;
    ButtonFlatTimeFromMM: TButtonFlat;
    ButtonFlat14: TButtonFlat;
    ButtonFlat15: TButtonFlat;
    ButtonFlatTimeToHH: TButtonFlat;
    ButtonFlat16: TButtonFlat;
    ButtonFlat17: TButtonFlat;
    ButtonFlatTimeToMM: TButtonFlat;
    ButtonFlat18: TButtonFlat;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape19: TShape;
    Label1: TLabel;
    Panel10: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    ButtonFlatWD1: TButtonFlat;
    ButtonFlatWD2: TButtonFlat;
    ButtonFlatWD3: TButtonFlat;
    ButtonFlatWD4: TButtonFlat;
    ButtonFlatWD5: TButtonFlat;
    ButtonFlatWD6: TButtonFlat;
    ButtonFlatWD7: TButtonFlat;
    Shape17: TShape;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    CheckBoxFlatMoreTasks: TCheckBoxFlat;
    PopupMenuTray: TPopupMenu;
    MenuItemTrayQuit: TMenuItem;
    MenuItemTrayOpen: TMenuItem;
    MenuItemTrayStartTask: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    ColorDialog: TColorDialog;
    CheckBoxFlatShowCompleted: TCheckBoxFlat;
    CheckBoxFlatHideOftenTasks: TCheckBoxFlat;
    ButtonFlatTaskLabels: TButtonFlat;
    EditNewComment: TRichEdit;
    MemoNote: TRichEdit;
    EditTaskName: TRichEdit;
    MemoTaskDesc: TRichEdit;
    PanelTextFormat: TPanel;
    Panel18: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Shape22: TShape;
    ImageListNotes: TImageList;
    ButtonFlatDropDownFonts: TButtonFlat;
    ButtonFlatFonts: TButtonFlat;
    TableExFonts: TTableEx;
    ButtonFlatFontSize: TButtonFlat;
    ButtonFlatNoteSO: TButtonFlat;
    ButtonFlatNoteUL: TButtonFlat;
    ButtonFlatNoteItalic: TButtonFlat;
    ButtonFlatNoteBold: TButtonFlat;
    Panel22: TPanel;
    ButtonFlatNoteSizeDown: TButtonFlat;
    ButtonFlatNoteSizeUp: TButtonFlat;
    ButtonFlatNoteSubText: TButtonFlat;
    ButtonFlatNoteSuperText: TButtonFlat;
    ButtonFlatNoteFG: TButtonFlat;
    ButtonFlatNoteFGDrop: TButtonFlat;
    ButtonFlatNoteBG: TButtonFlat;
    ButtonFlatNoteBGDrop: TButtonFlat;
    PanelNoteFGColor: TPanel;
    ColorGridNoteFG: ThColorGrid;
    Shape20: TShape;
    ButtonFlatNoteFGColorAuto: TButtonFlat;
    ButtonFlatFGColorDialog: TButtonFlat;
    PanelNoteBGColor: TPanel;
    Shape23: TShape;
    ColorGridNoteBG: ThColorGrid;
    ButtonFlatNoteBGNoColor: TButtonFlat;
    ButtonFlatNoteAlLeft: TButtonFlat;
    ButtonFlatNoteAlCenter: TButtonFlat;
    ButtonFlatNoteAlRight: TButtonFlat;
    ButtonFlatNoteAlWidth: TButtonFlat;
    ButtonFlatNoteParLeft: TButtonFlat;
    ButtonFlatNoteParRight: TButtonFlat;
    FlowPanel1: TFlowPanel;
    ButtonFlatTimes: TButtonFlat;
    ButtonFlatCalendar: TButtonFlat;
    ButtonFlatNotes: TButtonFlat;
    ButtonFlatSettings: TButtonFlat;
    Shape3: TShape;
    ButtonFlatMinimize: TButtonFlat;
    ButtonFlatClose: TButtonFlat;
    PanelSelectCurDate: TPanel;
    Calendar: TCalendarView;
    MenuItemMoveTask: TMenuItem;
    Shape2: TShape;
    PanelNoteList: TPanel;
    PanelNoteListCaption: TPanel;
    Label2: TLabel;
    ButtonFlatCollapseNoteList: TButtonFlat;
    TableExNotes: TTableEx;
    procedure TimerRepaintTimer(Sender: TObject);
    procedure DrawPanelPaint(Sender: TObject);
    procedure DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimeTimer(Sender: TObject);
    procedure DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableExTimesGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatCloseClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure ButtonFlatTaskStartClick(Sender: TObject);
    procedure ButtonFlatTaskEndClick(Sender: TObject);
    procedure TableExTimesItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExTimesDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatSettingsClick(Sender: TObject);
    procedure ButtonFlat7Click(Sender: TObject);
    procedure ButtonFlat6Click(Sender: TObject);
    procedure ButtonFlatMinimizeClick(Sender: TObject);
    procedure ButtonFlatTimesClick(Sender: TObject);
    procedure ButtonFlatCalendarClick(Sender: TObject);
    procedure MenuItemTaskStartFromClick(Sender: TObject);
    procedure ButtonFlatAddTimeClick(Sender: TObject);
    procedure TableExTasksEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExTasksEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
    procedure ButtonFlatAddTaskClick(Sender: TObject);
    procedure DrawGridCalendarDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableExTasksEditCancel(Sender: TObject; ACol, ARow: Integer);
    procedure ButtonFlat9Click(Sender: TObject);
    procedure TableExCommentsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExCommentsEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExCommentsEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
    procedure ButtonFlatTaskCloseClick(Sender: TObject);
    procedure ButtonFlatNewCommentClick(Sender: TObject);
    procedure TableExTasksDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure MenuItemOpenLabelsClick(Sender: TObject);
    procedure ButtonFlatMenuViewClick(Sender: TObject);
    procedure ButtonFlatCollapseScaleClick(Sender: TObject);
    procedure TableExTasksKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonFlatTaskStateClick(Sender: TObject);
    procedure ButtonFlatTaskNowClick(Sender: TObject);
    procedure ButtonFlatTaskInboxClick(Sender: TObject);
    procedure ButtonFlatDeadlinedClick(Sender: TObject);
    procedure MenuItemTaskDelClick(Sender: TObject);
    procedure TableExTasksMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Calendar1CalendarDrawDayItem(Sender: TObject; DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
    procedure TableExTasksItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure MenuItemTaskLabelAddClick(Sender: TObject);
    procedure PopupMenuTaskPopup(Sender: TObject);
    procedure ButtonFlatDANCloseClick(Sender: TObject);
    procedure ButtonFlatTaskDANClick(Sender: TObject);
    procedure TableExTasksChangeItem(Sender: TObject; const Old: Integer; var New: Integer);
    procedure ButtonFlatTaskColorCloseClick(Sender: TObject);
    procedure ButtonFlatTaskColorClick(Sender: TObject);
    procedure MenuItemShowEndedClick(Sender: TObject);
    procedure ButtonFlatViewModeClick(Sender: TObject);
    procedure ButtonFlatNotesClick(Sender: TObject);
    procedure ButtonFlatSaveNoteClick(Sender: TObject);
    procedure ButtonFlatLoadbackClick(Sender: TObject);
    procedure ButtonFlat11Click(Sender: TObject);
    procedure MemoTaskDescExit(Sender: TObject);
    procedure ButtonFlatWD1Click(Sender: TObject);
    procedure MenuItemCommentDelClick(Sender: TObject);
    procedure TableExCommentsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableExTimesMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MenuItemTimeDeleteClick(Sender: TObject);
    procedure TrayIconClick(Sender: TObject);
    procedure DrawGridCalendarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DrawGridCalendarMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DrawGridCalendarMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DrawGridCalendarMouseEnter(Sender: TObject);
    procedure DrawGridCalendarMouseLeave(Sender: TObject);
    procedure EditNewTaskNameKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonFlatCurrentDateClick(Sender: TObject);
    procedure TableExTasksHotOver(Sender: TObject);
    procedure MenuItemLinkWithTaskClick(Sender: TObject);
    procedure MenuItemDropTaskLinkClick(Sender: TObject);
    procedure MenuItemTimeStartFromClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ButtonFlatMenuFileClick(Sender: TObject);
    procedure MenuItemQuitClick(Sender: TObject);
    procedure CheckBoxFlatMoreTasksClick(Sender: TObject);
    procedure MenuItemTrayQuitClick(Sender: TObject);
    procedure MenuItemTrayOpenClick(Sender: TObject);
    procedure MenuItemTrayStartTaskClick(Sender: TObject);
    procedure CheckBoxFlatHideOftenTasksClick(Sender: TObject);
    procedure CheckBoxFlatShowCompletedClick(Sender: TObject);
    procedure ButtonFlatTaskLabelsClick(Sender: TObject);
    procedure EditNewCommentContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure EditTaskNameContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure EditNewTaskNameContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure MemoNoteContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure ButtonFlatDropDownFontsClick(Sender: TObject);
    procedure TableExFontsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExFontsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure MemoNoteSelectionChange(Sender: TObject);
    procedure ButtonFlatFontSizeMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure ButtonFlatFontSizeMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure ButtonFlatFontSizeMouseEnter(Sender: TObject);
    procedure EditNewCommentKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonFlatNoteTextAttrClick(Sender: TObject);
    procedure ButtonFlatNoteSizeDownClick(Sender: TObject);
    procedure ButtonFlatNoteSubTextClick(Sender: TObject);
    procedure ButtonFlatFontsClick(Sender: TObject);
    procedure ButtonFlatNoteFGDropClick(Sender: TObject);
    procedure ColorGridNoteFGSelect(Sender: TObject);
    procedure ButtonFlatNoteBGDropClick(Sender: TObject);
    procedure SetNoteAligment(Sender: TObject);
    procedure ButtonFlatNoteParLeftClick(Sender: TObject);
    procedure ButtonFlatNoteParRightClick(Sender: TObject);
    procedure ColorGridNoteBGSelect(Sender: TObject);
    procedure ButtonFlatNoteFGClick(Sender: TObject);
    procedure ButtonFlatNoteBGClick(Sender: TObject);
    procedure MenuItemTimeEditClick(Sender: TObject);
    procedure ButtonFlatNoteBGNoColorClick(Sender: TObject);
    procedure ButtonFlatNoteFGColorAutoClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DrawGridCalendarClick(Sender: TObject);
    procedure ButtonFlatFGColorDialogClick(Sender: TObject);
    procedure CalendarDrawDayItem(Sender: TObject; DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
    procedure CalendarChange(Sender: TObject);
    procedure MenuItemMoveTaskClick(Sender: TObject);
    procedure TableExNotesGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatCollapseNoteListClick(Sender: TObject);
    procedure TableExNotesDblClick(Sender: TObject);
  protected
    procedure WMSysCommand(var Message: TWMSysCommand); message WM_SYSCOMMAND;
    procedure WMQueryEndSession(var Msg: TWMQueryEndSession); message WM_QUERYENDSESSION;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
  private
    FFromHH, FFromMM, FToHH, FToMM: Word;
    FLastDate: TDate;             //Реальная дата (без времени)
    FPanelMouse: TPoint;          //Позиция мыши на панели
    FWorkTimeMin: Integer;        //Кол-во минут между началом и концом раб. дня
    FNowTimeMin: Integer;         //Кол-во минут текущего времени например, если сейчас 02:05, то здесь будет 125 минут
    FScaleRect: TRect;             //Реальные размеры шкалы
    FPanelMouseDown: Boolean;     //Мышь нажата на шкале
    FPanelMouseDownPos: TPoint;   //Позиция нажатия мыши на шкалу
    FRangeFrom: TTime;            //Начало ВЫБОРА времени на шкале
    FRangeTo: TTime;              //Конец ВЫБОРА времени на шкале
    FTimeItems: TTimeItems;       //Работы над задачами
    FTaskItems: TTaskItems;       //Задачи
    FEmptyTask: TTaskItem;
    FTasksOfCalendar: TTaskItems; //Список задач в календаре
    FLabelTypes: TLabelTypes;
    FLabelItems: TLabelItems;
    FComments: TCommentItems;     //Комментарии к задаче
    FRepeatStates: TRepeatStates;
    FNote: TNoteItem;             //Запись на день
    FTaskID: Integer;             //Открытая задача
    FCurrentDate: TDate;         //Выбранная пользователем дата
    FDoTimeSection: Boolean;      //Идёт работа над задачей
    FNewTStartDate: TDateTime;
    FNewTStart: TTime;            //Время начала работы над задачей
    FNewTEnd: TTime;              //Время окончания работы над задачей
    FNewTEndDate: TDateTime;
    FNewTTask: Integer;
    FNewTColor: TColor;
    FNewTName: string;
    FTimeItemUnderCursor: Integer; //Элемент отрезка времени под курсором
    FCurrentTime: TTime;          //Текущее время (без даты)
    FSelTime: TTime;               //Выбранное время на шкале
    FCalendarMouseInside: Boolean;
    FCalendarMouseCoord: TPoint;
    FCalendarArray: TCalendarArray;
    FVisNow: TControl;
    FVisNeed: TControl;
    FMonthOffset: Integer;
    FViewMode: TViewMode;
    FTimeManager: TManager;
    FWorkDays: TWorkDays;
    FNotifyItems: TNotifyItems;
    FWindowsShutdown: Boolean;
    FLastLabel: Integer;
    FLastLabelCaption: string;
    FPopupFonts: TFormPopup;
    FPopupColor: TFormPopup;
    FPopupCal: TFormPopup;
    FFontItems: TFontItems;
    FActualNotes: TActualNotes;
    FDateChanging: Boolean;
    function AddTask(Name: string = ''; Date: TDateTime = 0): TTaskItem;
    function AddTaskTime(ADate, ADateEnd: TDate; TStart, TEnd: TTime; ATaskID: Integer; AColor: TColor): Boolean;
    function DaysThisMonth: Integer;
    function DeleteComment(ID: Integer): Boolean;
    function DeleteTask(ID: Integer): Boolean;
    function DeleteTime(ID: Integer): Boolean;
    function GetCellInfo(ACol, ARow: Integer; var Info: TCalendarCell): string;
    function GetCurrentTask: TTaskItem;
    function GetDayCompletePercent: Integer;
    function GetTaskSelected: Boolean;
    function GetWorkDayEnd: TTime;
    function GetWorkDayStart: TTime;
    function StartTask(TimeStart: TTime): Boolean;
    function StopTimeSection: Boolean;
    procedure DoLog(Text: string);
    procedure FAddTaskTime(const ADate, ADateEnd: TDate; TStart, TEnd: TTime; ATaskID: Integer; AColor: TColor; ADesc: string);
    procedure HideTask;
    procedure LoadNote(Date: TDate);
    procedure MenuItemTaskLabelClick(Sender: TObject);
    procedure MenuItemTaskLabelReset(Sender: TObject);
    procedure NoteInfo;
    procedure OnChangeItems;
    procedure OpenTimeOverlay;
    procedure ReloadCalendarData;
    procedure ReloadLabelsTypes;
    procedure SaveNote;
    procedure SetButtonWCaption(Target, CloseButton: TButtonFlat; Panel: TPanel; ACaption: string; ACloseBotton: Boolean);
    procedure SetCurrentDate(const Value: TDate);
    procedure SetTimeManager(const Value: TManager);
    procedure SetViewMode(const Value: TViewMode);
    procedure SetWorkDayEnd(const Value: TTime);
    procedure SetWorkDays(Days: TWorkDays);
    procedure SetWorkDayStart(const Value: TTime);
    procedure ShowTask(TaskID: Integer);
    procedure SlideTo(Slide: TSlide);
    procedure TaskNotify(Task: TTaskItem);
    procedure TimeOverlayCallBack(Sender: TObject; State: Boolean);
    procedure UpdateCalendar;
    procedure UpdateCounts;
    procedure UpdateDay;
    procedure UpdateTaskNowButton;
    procedure UpdateTaskPanel(TaskID: Integer = -1);
    procedure UpdateTime;
    procedure UpdateTimeOverlayData;
    procedure UpdateViewModeParam;
    procedure WorkDayStarted(Sender: TObject);
    procedure UpdateViewMode;
    procedure ProcLabelButton(Sender: TObject);
    procedure BeforeChangeDay;
    /// <summary>
    /// Процедура для полного сохранения всех изменения
    /// </summary>
    procedure SaveAll;
    procedure SaveTaskDescription;
    procedure SetButtonCheckColor(Button: TButtonFlat; Value: Boolean);
    procedure SetCalendarDate(Value: TDateTime);
    procedure ShowForm;
  public
    AccentColor: TColor;
    BackgroundColor: TColor;
    SelectionColor: TColor;
    HotOverColor: TColor;
    ForegroundColor: TColor;
    ButtonIconColor: TColor;
    procedure Error(E: Exception; const Message: string = '');
    procedure Initializate;
    procedure OnCloseNotifyAction(TaskID: Integer);
    procedure Quit;
    procedure SetTaskComplete(TaskID: Integer; Deadline: TDate; State: Boolean);
    property CurrentDate: TDate read FCurrentDate write SetCurrentDate;
    property CurrentTask: TTaskItem read GetCurrentTask;
    property TaskItems: TTaskItems read FTaskItems;
    property TaskSelected: Boolean read GetTaskSelected;
    property TimeManager: TManager read FTimeManager write SetTimeManager;
    property ViewMode: TViewMode read FViewMode write SetViewMode;
    property WorkDayEnd: TTime read GetWorkDayEnd write SetWorkDayEnd;
    property WorkDays: TWorkDays read FWorkDays write SetWorkDays;
    property WorkDayStart: TTime read GetWorkDayStart write SetWorkDayStart;
  end;

const
  StartOfWeek = 1; //пн
  GlobalAnimateEnable = False;

var
  FormMain: TFormMain;
  FWndFrameSize: Integer;
  FAnimate: Integer = 0;
  FAnimateDo: Boolean = False;
  FItemLast: Integer = -1;
  FItemCur: Integer = -1;

function GetMins(Time: TTime): Integer;

function GetTime(Mins: Integer): TTime;

procedure ShowPopupMenu(Menu: TPopupMenu);

procedure SetButtonCheck(Button: TButtonFlat; Value: Boolean);

implementation

uses
  Math, YOTM.Form.EditTime, DateUtils, YOTM.Form.Dialog, YOTM.Form.SelectLabels,
  Winapi.CommCtrl, YOTM.Form.DateNotify, YOTM.Form.OverlayTime,
  HGM.Common.DateUtils, YOTM.Form.DateEdit;

{$R *.dfm}

procedure TFormMain.Error(E: Exception; const Message: string = '');
begin
  DoLog(Message);
end;

procedure SetButtonCheck(Button: TButtonFlat; Value: Boolean);
begin
  if Value then
    Button.ImageIndex := 18
  else
    Button.ImageIndex := 19;
end;

procedure TFormMain.SetButtonCheckColor(Button: TButtonFlat; Value: Boolean);
begin
  if Value then
    Button.ColorNormal := HotOverColor
  else
    Button.ColorNormal := ForegroundColor;
end;

procedure TFormMain.WMSysCommand(var Message: TWMSysCommand);
begin
  case Message.CmdType of
    SC_CLOSE:
      Close;
    SC_MINIMIZE:
      ShowWindow(Handle, SW_HIDE);
    SC_MAXIMIZE:
      ShowWindow(Handle, SW_MAXIMIZE);
    SC_RESTORE:
      ShowWindow(Handle, SW_RESTORE);
  else
    inherited;
  end;
end;

procedure ShowPopupMenu(Menu: TPopupMenu);
var
  Pt: TPoint;
begin
  Pt := Mouse.CursorPos;
  Menu.Popup(Pt.X, Pt.Y);
end;

procedure AnimateControlLeft(TargetObject: TControl; HaveTime: Cardinal; ToValue: Integer);
var
  i, delta: Integer;
begin
  if GlobalAnimateEnable then
  begin
    delta := (ToValue - TargetObject.Left) div HaveTime;
    for i := 1 to HaveTime do
    begin
      TargetObject.Left := TargetObject.Left + delta;
      Application.ProcessMessages;
    end;
  end;
  TargetObject.Left := ToValue;
end;

procedure AnimateControlHeight(TargetObject: TControl; HaveTime: Cardinal; ToValue: Integer);
var
  i, delta: Integer;
begin
  if GlobalAnimateEnable then
  begin
    delta := (ToValue - TargetObject.Height) div HaveTime;
    for i := 1 to HaveTime do
    begin
      TargetObject.Height := TargetObject.Height + delta;
      Application.ProcessMessages;
    end;
  end;
  TargetObject.Height := ToValue;
end;

procedure AnimateControlTop(TargetObject: TControl; HaveTime: Cardinal; ToValue: Integer);
var
  i, delta: Integer;
begin
  if GlobalAnimateEnable then
  begin
    delta := (ToValue - TargetObject.Top) div HaveTime;
    for i := 1 to HaveTime do
    begin
      TargetObject.Top := TargetObject.Top + delta;
      Application.ProcessMessages;
    end;
  end;
  TargetObject.Top := ToValue;
end;

procedure AnimateControlTopLeft(TargetObject: TControl; HaveTime: Cardinal; ToValueL, ToValueT: Integer);
var
  i, deltaT, deltaL: Integer;
begin
  if GlobalAnimateEnable then
  begin
    deltaT := (ToValueT - TargetObject.Top) div HaveTime;
    deltaL := (ToValueL - TargetObject.Left) div HaveTime;
    for i := 1 to HaveTime do
    begin
      TargetObject.Top := TargetObject.Top + deltaT;
      TargetObject.Left := TargetObject.Left + deltaL;
      TargetObject.Repaint;
      Application.ProcessMessages;
    end;
  end;
  TargetObject.Top := ToValueT;
  TargetObject.Left := ToValueL;
end;

function GetMins(Time: TTime): Integer;
var
  H, M, S, MSec: Word;
begin
  DecodeTime(Time, H, M, S, MSec);
  Result := H * 60 + M;
end;

function GetTime(Mins: Integer): TTime;
var
  H, M: Word;
begin
  H := Mins div 60;
  M := Mins mod 60;
  Result := EncodeTime(H, M, 0, 0);
end;

function DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and IsLeapYear(AYear) then
    Inc(Result); { leap-year Feb is special }
end;

function GetDateElement(Dt: TDate; Index: Integer): Integer;
var
  AYear, AMonth, ADay: Word;
begin
  DecodeDate(Dt, AYear, AMonth, ADay);
  case Index of
    1:
      Result := AYear;
    2:
      Result := AMonth;
    3:
      Result := ADay;
  else
    Result := -1;
  end;
end;

procedure TFormMain.ReloadCalendarData;
var
  Cell: TCalendarCell;
  i, j: Integer;
  FirstDate: TDateTime;
  NotCompleted: Integer;
begin
  GetCellInfo(0, 1, Cell);
  FirstDate := Cell.Date;
  GetCellInfo(DrawGridCalendar.ColCount - 1, DrawGridCalendar.RowCount - 1, Cell);
  FTasksOfCalendar.TaskFilter := tkfDated;
  FTasksOfCalendar.CalcOftenRepeat := FTaskItems.CalcOftenRepeat;
  FTasksOfCalendar.ShowEndedTask := FTaskItems.ShowEndedTask;
  FTasksOfCalendar.UseDatePeriod := True;
  FTasksOfCalendar.DatePeriod := TDatePeriod.Create(FirstDate, Cell.Date);
  FTasksOfCalendar.Reload;
  NotCompleted := 0;
  for i := 0 to FTasksOfCalendar.Count - 1 do
    if (not FTasksOfCalendar[i].State) and (FTasksOfCalendar[i].Deadline) and (DateOf(FTasksOfCalendar[i].DateDeadline) <= DateOf(Now)) then
      if (not FTasksOfCalendar[i].IsOftenRepeat) or FTasksOfCalendar.CalcOftenRepeat then
        Inc(NotCompleted);

  for i := 1 to DrawGridCalendar.RowCount - 1 do
    for j := 0 to DrawGridCalendar.ColCount - 1 do
    begin
      GetCellInfo(j, i, Cell);
      FTasksOfCalendar.ListCount(Cell.Date, FCalendarArray[j, i].Actual, FCalendarArray[j, i].NotActual, FCalendarArray[j, i].Deadlined, FCalendarArray[j, i].Repeated);
    end;
  ButtonFlatCalendar.NotifyVisible := NotCompleted > 0;
  FTasksOfCalendar.Clear;
  DrawGridCalendar.Repaint;
end;

procedure TFormMain.UpdateCalendar;
var
  AYear, AMonth, ADay: Word;
  FirstDate: TDateTime;
begin
  DecodeDate(CurrentDate, AYear, AMonth, ADay);
  FirstDate := EncodeDate(AYear, AMonth, 1);
  FMonthOffset := 2 - ((DayOfWeek(FirstDate) - StartOfWeek + 7) mod 7);
  DrawGridCalendar.RowHeights[0] := PanelTaskEdit.Height + ShapeBorder.Height;
  DrawGridCalendar.DefaultColWidth := DrawGridCalendar.ClientWidth div DrawGridCalendar.ColCount;
  DrawGridCalendar.ColWidths[DrawGridCalendar.ColCount - 1] := DrawGridCalendar.DefaultColWidth + DrawGridCalendar.ClientWidth mod DrawGridCalendar.ColCount;
  ReloadCalendarData;
end;

function TFormMain.DaysThisMonth: Integer;
begin
  Result := DaysPerMonth(GetDateElement(CurrentDate, 1), GetDateElement(CurrentDate, 2));
end;

function SetDay(Date: TDateTime; Day: Byte): TDateTime;
var
  Y, M, D, HH, MM, SS, MS: Word;
begin
  DecodeDateTime(Date, Y, M, D, HH, MM, SS, MS);
  Result := EncodeDateTime(Y, M, Day, HH, MM, SS, MS);
end;

function TFormMain.GetCellInfo(ACol, ARow: Integer; var Info: TCalendarCell): string;
var
  DayNum: Integer;
  Dt: TDate;
begin
  if ARow = 0 then
  begin
    Info.Date := 0;
    Info.IsDate := False;
    Info.IsDayOsWeek := True;
    Info.DayOfWeek := (StartOfWeek + ACol) mod 7 + 1;
    Info.IsAnotherMonth := False;
    Info.Text := FormatSettings.ShortDayNames[(StartOfWeek + ACol) mod 7 + 1];
  end
  else
  begin
    Info.IsDayOsWeek := False;
    Info.Date := 0;
    Info.IsDate := True;
    Info.DayOfWeek := (StartOfWeek + ACol) mod 7 + 1;
    DayNum := FMonthOffset + ACol + (ARow - 2) * 7;
    Info.IsAnotherMonth := False;
    if (DayNum < 1) or (DayNum > DaysThisMonth) then
    begin
      Info.IsAnotherMonth := True;
      Info.Text := '';
      Dt := CurrentDate;
      if (DayNum < 1) then
      begin
        Dt := SetDay(CurrentDate, 1) + (DayNum - 1);
        Info.Text := IntToStr(MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)] + DayNum);
      end
      else
      begin
        Dt := SetDay(Dt, MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)]) + (DayNum - MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)]);
        Info.Text := IntToStr(DayNum - DaysThisMonth);
      end;
      Info.Date := Dt;
    end
    else
    begin
      Dt := SetDay(CurrentDate, DayNum);
      Info.Date := Dt;
      Info.Text := IntToStr(DayNum);
    end;
  end;
  Result := Info.Text;
end;

function TFormMain.GetCurrentTask: TTaskItem;
begin
  if IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then
    Result := FTaskItems[TableExTasks.ItemIndex]
  else
  begin
    Result := FEmptyTask;
  end;
end;

function TFormMain.GetDayCompletePercent: Integer;
begin
  Result := Max(0, Round((FNowTimeMin - GetMins(WorkDayStart)) / (FWorkTimeMin / 100)));
end;

procedure TFormMain.DrawGridCalendarClick(Sender: TObject);
var
  Cell: TCalendarCell;
begin
  GetCellInfo(DrawGridCalendar.Col, DrawGridCalendar.Row, Cell);
  if Cell.IsDate then
  begin
    SetCalendarDate(Cell.Date);
    ViewMode := vmSelectedDate;
  end;
end;

procedure TFormMain.DrawGridCalendarDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Cell: TCalendarCell;
  txt: string;
  tmp: TRect;
begin
  GetCellInfo(ACol, ARow, Cell);
  with Rect, DrawGridCalendar.Canvas do
  begin
    if Cell.IsDate then
    begin
      if Cell.IsAnotherMonth then
        Brush.Color := ForegroundColor//Color;
      else
        Brush.Color := BackgroundColor;
    end
    else
    begin
      Brush.Color := ForegroundColor;
    end;
    if Cell.IsDate and FCalendarMouseInside and (Point(ACol, ARow) = FCalendarMouseCoord) then
      Brush.Color := ColorDarker(Brush.Color, 40);

    if SameDate(Cell.Date, CurrentDate) then
      Brush.Color := ColorDarker(AccentColor);
    Brush.Style := bsSolid;
    FillRect(Rect);
    if Cell.IsDayOsWeek then
    begin
      Brush.Color := BackgroundColor;
      tmp := System.Classes.Rect(Rect.Left, Rect.Bottom - ShapeBorder.Height, Rect.Right, Rect.Bottom);
      FillRect(tmp);
    end;

    if IsToday(Cell.Date) then
    begin
      Brush.Style := bsClear;
      Pen.Color := AccentColor;
      Rectangle(Rect);
      Brush.Style := bsSolid;
      Brush.Color := AccentColor;
      tmp := Rect;
      tmp.Inflate(-1, -1);
      tmp.Width := Round(tmp.Width / 100 * GetDayCompletePercent);
      FillRect(tmp);
    end;

    Brush.Style := bsClear;
    Font.Color := $00F2F2F2;
    Font.Size := 15;
    TextRect(Rect, Left + (Right - Left - TextWidth(Cell.Text)) div 2, Top + (Bottom - Top - TextHeight(Cell.Text)) div 2, Cell.Text);
    if Cell.Text = '1' then
    begin
      Font.Size := 8;
      txt := FormatDateTime('mmm', Cell.Date);
      TextRect(Rect, Left + (Right - Left - TextWidth(txt)) div 2, Top + 2, txt);
    end;
    if FCalendarArray[ACol, ARow].Deadlined > 0 then
    begin
      ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 2, True);
    end
    else if (FCalendarArray[ACol, ARow].Actual > 0) or (FCalendarArray[ACol, ARow].Repeated > 0) then
    begin
      ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 1, True);
    end
    else if FCalendarArray[ACol, ARow].NotActual > 0 then
    begin
      ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 0, True);
    end;  {
   if FCalendarArray[ACol, ARow].Repeated > 0 then
    begin
     Rect.Offset(0, Rect.Height-10);
     rect.Height:=10;
     Rectangle(Rect);
    // ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 0, True);
    end;    }
  end;
end;

procedure TFormMain.DrawGridCalendarMouseEnter(Sender: TObject);
begin
  FCalendarMouseInside := True;
end;

procedure TFormMain.DrawGridCalendarMouseLeave(Sender: TObject);
begin
  FCalendarMouseInside := False;
end;

procedure TFormMain.DrawGridCalendarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  Cell: TCalendarCell;
  C, R: Integer;
begin
  DrawGridCalendar.MouseToCell(X, Y, C, R);
  if FCalendarMouseInside then
  begin
    FCalendarMouseCoord := Point(C, R);
    DrawGridCalendar.Repaint;
  end;
  GetCellInfo(C, R, Cell);
  if DrawGridCalendar.Hint <> DateToStr(Cell.Date) then
  begin
    Application.CancelHint;
    DrawGridCalendar.Hint := DateToStr(Cell.Date);
  end
  else
  begin
    DrawGridCalendar.Hint := DateToStr(Cell.Date);
  end;
end;

procedure TFormMain.DrawGridCalendarMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TFormMain.DrawGridCalendarMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TFormMain.DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FPanelMouseDownPos := Point(X, Y);
  case Button of
    TMouseButton.mbLeft:
      begin
        FPanelMouseDown := FScaleRect.Contains(FPanelMouse);
      end;
  end;
end;

procedure TFormMain.DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  FPanelMouse := Point(X, Y);
  if FScaleRect.Contains(FPanelMouse) then
    DrawPanel.Cursor := crHandPoint
  else
    DrawPanel.Cursor := crDefault;
  TimerRepaintTimer(nil);
end;

procedure TFormMain.DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  case Button of
    TMouseButton.mbLeft:
      begin
        if FPanelMouseDown then
        begin
          if FRangeFrom = FRangeTo then
          begin
            if IndexInList(FTimeItemUnderCursor, FTimeItems.Count) then
              TableExTimes.ItemIndex := FTimeItemUnderCursor;
          end
          else
          begin
            AddTaskTime(CurrentDate, CurrentDate, FRangeFrom, FRangeTo, CurrentTask.ID, CurrentTask.Color);
          end;
          FPanelMouseDown := False;
          FPanelMouseDownPos := Point(-1, -1);
        end;
      end;
    TMouseButton.mbRight:
      begin
        ShowPopupMenu(PopupMenuTaskStart);
      end;
  end;
end;

procedure TFormMain.DrawPanelPaint(Sender: TObject);
var
  CRect, tmpRect, txtRect: TRect;
  MPos, H, M, i, LastLeft, LastTextWidth, MinSelTextLeft: Integer;
  MProc: Double;
  KeepTime: TTime;
  SelAmount: TTime;
  Str: string;
begin
  CRect := DrawPanel.ClientRect;
  with TDirect2DCanvas.Create(DrawPanel.Canvas, DrawPanel.ClientRect) do
  begin
    BeginDraw;
    try
      Brush.Color := DrawPanel.Color; //$0043B6E3;
      FillRect(CRect);
      Font.Color := $00F2F2F2;
    //--------------------------------------
      FScaleRect.Left := 20;
      FScaleRect.Right := CRect.Right - 20;
      FScaleRect.Bottom := CRect.Bottom - 50;
      FScaleRect.Top := FScaleRect.Bottom - 20;
    //if ScaleRect.Contains(FPanelMouse) then Brush.Color:=$0019A0E3 else
      Brush.Color := $0016597D;
      Pen.Color := Brush.Color;
      RoundRect(FScaleRect, FScaleRect.Height, FScaleRect.Height);

      Brush.Style := bsClear;
      TextOut(FScaleRect.Left - 15, FScaleRect.Top - 20, FormatDateTime('HH:mm', WorkDayStart));
      TextOut(FScaleRect.Right - 15, FScaleRect.Top - 20, FormatDateTime('HH:mm', WorkDayEnd));

      tmpRect := FScaleRect;
      tmpRect.Right := tmpRect.Left + Round(FScaleRect.Width / 100 * GetDayCompletePercent);
      tmpRect.Right := Min(tmpRect.Right, FScaleRect.Right);
      Brush.Style := bsSolid;
      Brush.Color := $003C86AB;
      tmpRect.Width := Max(tmpRect.Width, tmpRect.Height);
      RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
      Brush.Style := bsClear;
      TextOut(tmpRect.Right - 15, tmpRect.Bottom + 5, FormatDateTime('HH:mm', FCurrentTime));
    //Временные отрезки
      LastLeft := -1;
      FTimeItemUnderCursor := -1;
      Font.Color := $003A3A3A;
      for i := 0 to FTimeItems.Count - 1 do
      begin
        if i <> TableExTimes.ItemIndex then
          Brush.Color := $0019A0E3
        else
          Brush.Color := $0046E3CC;
        tmpRect := FScaleRect;
        tmpRect.Left := FScaleRect.Left + Round(FScaleRect.Width / 100 * ((GetMins(FTimeItems[i].TimeFrom) - GetMins(WorkDayStart)) / (FWorkTimeMin / 100)));
        tmpRect.Right := FScaleRect.Left + Round(FScaleRect.Width / 100 * ((GetMins(FTimeItems[i].TimeTo) - GetMins(WorkDayStart)) / (FWorkTimeMin / 100)));
        tmpRect.Inflate(0, -3);
        if tmpRect.Left <= FScaleRect.Left + 3 then
          tmpRect.Left := FScaleRect.Left + 3;
        if tmpRect.Right >= FScaleRect.Right - 3 then
          tmpRect.Right := FScaleRect.Right - 3;
        if tmpRect.Left >= FScaleRect.Right - 3 then
          Continue;

        tmpRect.Left := Max(Min(tmpRect.Left, FScaleRect.Right), FScaleRect.Left);
        tmpRect.Right := Max(Min(tmpRect.Right, FScaleRect.Right), FScaleRect.Left);

        Brush.Style := bsSolid;
        RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
        if tmpRect.Contains(FPanelMouse) then
        begin
          FTimeItemUnderCursor := i;
          Str := FTimeItems[i].Description;
          if Str = '' then
            Str := 'Нет описания';

          LastTextWidth := TextWidth(Str) + 10;
          if LastLeft = -1 then
            LastLeft := 5
          else
            LastLeft := LastLeft + LastTextWidth;
          txtRect := Rect(LastLeft, FScaleRect.Bottom + 20, LastLeft + LastTextWidth, FScaleRect.Bottom + 20 + 20);
          RoundRect(txtRect, txtRect.Height, txtRect.Height);
          Brush.Style := bsClear;
          TextOut(LastLeft + 5, tmpRect.Bottom + 5 + 21, Str);
        end;
      end;
    //Текущая задача
      if FDoTimeSection then
      begin
        Brush.Color := $0055E5FE;
        tmpRect := FScaleRect;
        tmpRect.Left := FScaleRect.Left + Round(FScaleRect.Width / 100 * ((GetMins(FNewTStart) - GetMins(WorkDayStart)) / (FWorkTimeMin / 100)));
        tmpRect.Right := FScaleRect.Left + Round(FScaleRect.Width / 100 * ((GetMins(FNewTEnd) - GetMins(WorkDayStart)) / (FWorkTimeMin / 100)));
        tmpRect.Inflate(0, -3);
        if tmpRect.Left <= FScaleRect.Left + 3 then
          tmpRect.Left := FScaleRect.Left + 3;
        if tmpRect.Right >= FScaleRect.Right - 3 then
          tmpRect.Right := FScaleRect.Right - 3;

        Brush.Style := bsSolid;
        RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
      end;
    //Текущий выбор
      tmpRect := FScaleRect;
      tmpRect.Inflate(5, 5);
      if tmpRect.Contains(FPanelMouse) or FPanelMouseDown then
      begin
        MPos := Min(Max(FPanelMouse.X, FScaleRect.Left), FScaleRect.Right);
        MoveTo(MPos, FScaleRect.Top);
        LineTo(MPos, FScaleRect.Top - 20);

        Brush.Color := $0019A0E3;
        tmpRect := FScaleRect;
        if not FPanelMouseDown then
        begin
          tmpRect.Left := Min(Max(tmpRect.Left, MPos - tmpRect.Height div 2), tmpRect.Right - tmpRect.Height);
          tmpRect.Right := Max(Min(tmpRect.Right, tmpRect.Left + tmpRect.Height), tmpRect.Left);
          Brush.Style := bsSolid;
        //RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
        end
        else
        begin
          tmpRect.Left := FPanelMouseDownPos.X;
          tmpRect.Left := Min(Max(FScaleRect.Left, tmpRect.Left), FScaleRect.Right - tmpRect.Height);
          tmpRect.Right := {Max(}Min(tmpRect.Right, MPos); //, tmpRect.Left);
          tmpRect.NormalizeRect;
          tmpRect.Height := Max(1, Min(tmpRect.Width, FScaleRect.Height));
          tmpRect.Offset(0, FScaleRect.Height div 2 - tmpRect.Height div 2);
          Brush.Style := bsSolid;
          RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
        end;

        MProc := MPos - FScaleRect.Left;
        MProc := MProc / (FScaleRect.Width / 100);
        MProc := MProc * (FWorkTimeMin / 100); //Минуты

        H := Ceil(MProc) div 60;
        M := Trunc(Ceil(MProc) mod 60 / 5) * 5;
        Brush.Style := bsClear;
        FSelTime := GetTime(GetMins(WorkDayStart) + (H * 60 + M));
        Font.Color := $00F2F2F2;
        MinSelTextLeft := Min(Max(MPos - 160 div 2, FScaleRect.Left - 15), CRect.Right - 160);
        TextOut(MinSelTextLeft, FScaleRect.Top - 40, FormatDateTime('HH:mm - от начала дня', GetTime(H * 60 + M)));
        TextOut(MinSelTextLeft, FScaleRect.Top - 60, FormatDateTime('HH:mm - указано', FSelTime));
        TextOut(MinSelTextLeft, FScaleRect.Top - 80, FormatDateTime('HH:mm - разница с текущим', GetTime(Abs(GetMins(FCurrentTime) - (H * 60 + M) - GetMins(WorkDayStart)))));
      //Диапазон выбора
        if FPanelMouseDown then
        begin
          MProc := FPanelMouseDownPos.X - FScaleRect.Left;
          MProc := MProc / (FScaleRect.Width / 100);
          MProc := MProc * (FWorkTimeMin / 100); //Минуты

          H := Ceil(MProc) div 60;
          M := Trunc(Ceil(MProc) mod 60 / 5) * 5;
          KeepTime := GetTime(GetMins(WorkDayStart) + (H * 60 + M));
          FRangeFrom := KeepTime;
          FRangeTo := FSelTime;
          if GetMins(KeepTime) > GetMins(FSelTime) then
          begin
            KeepTime := FSelTime;
            FSelTime := FRangeFrom;

            FRangeFrom := KeepTime;
            FRangeTo := FSelTime;
          end;
          SelAmount := GetTime(Abs(GetMins(FRangeTo) - GetMins(FRangeFrom)));
          TextOut(MinSelTextLeft, FScaleRect.Top - 100, FormatDateTime('HH:mm - ', FRangeFrom) + FormatDateTime('HH:mm - выбрано ', FRangeTo) + FormatDateTime('(HH:mm)', SelAmount));
        end;
      end;
    //TextOut(10, 0, Format('%d:%d', [FPanelMouse.X, FPanelMouse.Y]));
    //--------------------------------------
    finally
      EndDraw;
    end;
    Free;
  end;
end;

procedure TFormMain.EditNewCommentContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  RichEditPopupMenu(Sender as TRichEdit);
  Handled := True;
end;

procedure TFormMain.EditNewCommentKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatNewCommentClick(nil);
  end;
end;

procedure TFormMain.EditNewTaskNameContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  RichEditPopupMenu(Sender as TRichEdit);
  Handled := True;
end;

procedure TFormMain.EditNewTaskNameKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatAddTaskClick(nil);
  end;
end;

procedure TFormMain.EditTaskNameContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  RichEditPopupMenu(Sender as TRichEdit);
  Handled := True;
end;

procedure TFormMain.ButtonFlatCalendarClick(Sender: TObject);
begin
  SlideTo(slCalendar);
end;

procedure TFormMain.ButtonFlatCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.FAddTaskTime(const ADate, ADateEnd: TDate; TStart, TEnd: TTime; ATaskID: Integer; AColor: TColor; ADesc: string);
var
  Item: TTimeItem;
begin
  Item := TTimeItem.Create(FTimeItems);
  with Item do
  begin
    Task := ATaskID;
    Color := AColor;
    Date := DateOf(ADate);
    DateEnd := DateOf(ADateEnd);
    Description := ADesc;
    TimeFrom := TimeOf(TStart);
    TimeTo := TimeOf(TEnd);
    FTimeItems.Insert(0, Item);
    FTimeItems.Update(Item);
  end;
end;

function TFormMain.AddTaskTime(ADate, ADateEnd: TDate; TStart, TEnd: TTime; ATaskID: Integer; AColor: TColor): Boolean;
var
  EditTime: TFormEditTime;
begin
  Result := False;
  EditTime := TFormEditTime.Create(nil);
  try
    EditTime.EditText.Text := '';
    EditTime.TimeFrom := TStart;
    EditTime.TimeTo := TEnd;
    EditTime.Position := poMainFormCenter;
    EditTime.TaskID := ATaskID;
    EditTime.TaskColor := AColor;
    if EditTime.ShowModal = mrOK then
    begin
      ATaskID := EditTime.TaskID;
      AColor := EditTime.TaskColor;
      FAddTaskTime(DateOf(ADate), DateOf(ADateEnd), EditTime.TimeFrom, EditTime.TimeTo, ATaskID, AColor, EditTime.EditText.Text);
      Result := True;
    end;
  finally
    EditTime.Free;
  end;
end;

procedure TFormMain.ButtonFlatTaskColorClick(Sender: TObject);
var
  Task: TTaskItem;
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  Task := FTaskItems[FTaskID];
  ColorDialog.Color := Task.Color;
  if ColorDialog.Execute then
  begin
    Task.Color := ColorDialog.Color;
    FTaskItems.Update(FTaskItems[FTaskID]);
    UpdateTaskPanel(FTaskID);
  end;
end;

procedure TFormMain.ButtonFlatTaskColorCloseClick(Sender: TObject);
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  FTaskItems[FTaskID].Color := clNone;
  FTaskItems.Update(FTaskItems[FTaskID]);
  UpdateTaskPanel(FTaskID);
end;

procedure TFormMain.ButtonFlatTaskDANClick(Sender: TObject);
var
  Data: TDateNotifyData;
  Task: TTaskItem;
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  Task := FTaskItems[FTaskID];
  Data.SelectDate := Task.DateDeadline;
  Data.SelectedDate := Task.Deadline;
  Data.SelectTime := Task.TimeNotify;
  Data.SelectedTime := Task.Notify;
  Data.SelectRepeat := Task.TaskRepeatData;
  Data.SelectRepeatType := Task.TaskType;
  if TFormDateAndNotify.Select(Data) then
  begin
    Task.DateDeadline := Data.SelectDate;
    Task.Deadline := Data.SelectedDate;
    Task.TimeNotify := Data.SelectTime;
    Task.Notify := Data.SelectedTime;
    Task.TaskRepeatData := Data.SelectRepeat;
    Task.TaskType := Data.SelectRepeatType;
    FTaskItems.Update(FTaskItems[FTaskID]);
    UpdateTaskPanel(FTaskID);
    UpdateViewMode;
  end;
end;

function TFormMain.StopTimeSection: Boolean;
begin
  Result := False;
  if FDoTimeSection then
  begin
    ButtonFlatTaskStart.Caption := 'Начать';
    FNewTEnd := TimeOf(Now);
    FNewTEndDate := DateOf(Now);
    FPanelMouseDown := False;
    FPanelMouseDownPos := Point(-1, -1);
    FDoTimeSection := False;
    if FNewTStartDate = FNewTEndDate then
      if Abs(GetMins(FNewTStart) - GetMins(FNewTEnd)) < 1 then
        Exit;
    Result := True;
  end;
end;

procedure TFormMain.ButtonFlatTaskEndClick(Sender: TObject);
begin
  if StopTimeSection then
  begin
    AddTaskTime(FNewTStartDate, FNewTEndDate, FNewTStart, FNewTEnd, FNewTTask, FNewTColor);
  end;
end;

procedure TFormMain.OpenTimeOverlay;
begin
  if not FormTimeOverlay.Visible then
  begin
    UpdateTimeOverlayData;
    FormTimeOverlay.Show;
  end;
end;

function TFormMain.StartTask(TimeStart: TTime): Boolean;
begin
  Result := False;
  if FDoTimeSection then
  begin
    OpenTimeOverlay;
    Exit;
  end;
  FNewTStartDate := DateOf(TimeStart);
  FNewTStart := TimeOf(TimeStart);
  FNewTEnd := FNewTStart;
  FNewTEndDate := FNewTStartDate;
  FNewTTask := CurrentTask.ID;
  FNewTColor := CurrentTask.Color;
  FNewTName := CurrentTask.Name;
  FDoTimeSection := True;
  OpenTimeOverlay;
  Result := True;
end;

procedure TFormMain.ButtonFlatTaskStartClick(Sender: TObject);
begin
  StartTask(Now);
end;

procedure TFormMain.ButtonFlatSettingsClick(Sender: TObject);
begin
  SlideTo(slSettings);
end;

procedure TFormMain.ButtonFlatTimesClick(Sender: TObject);
begin
  SlideTo(slTimes);
end;

procedure TFormMain.ButtonFlatViewModeClick(Sender: TObject);
begin
  ButtonFlatViewMode.ShowPopup;
end;

procedure TFormMain.ButtonFlatWD1Click(Sender: TObject);
begin
  FWorkDays[(Sender as TButtonFlat).Tag] := not FWorkDays[(Sender as TButtonFlat).Tag];
  WorkDays := FWorkDays;
end;

procedure TFormMain.ButtonFlatTaskNowClick(Sender: TObject);
begin
  ViewMode := vmToday;
end;

procedure TFormMain.ButtonFlatTaskCloseClick(Sender: TObject);
begin
  TableExTasks.ItemIndex := -1;
  HideTask;
end;

procedure TFormMain.ButtonFlatTaskInboxClick(Sender: TObject);
begin
  ViewMode := vmInbox;
end;

procedure TFormMain.ButtonFlatTaskLabelsClick(Sender: TObject);
var
  Task: TTaskItem;
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  Task := FTaskItems[FTaskID];
  if TFormSelectLabels.Select(Task.LabelItems, Task.ID) then
    TableExTasks.Repaint;
end;

procedure TFormMain.ButtonFlatTaskStateClick(Sender: TObject);
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  SetTaskComplete(FTaskItems[FTaskID].ID, FTaskItems[FTaskID].DateDeadline, not FTaskItems[FTaskID].State);
  OnChangeItems;
  UpdateTaskPanel(FTaskID);
end;

procedure TFormMain.ButtonFlatLoadbackClick(Sender: TObject);
begin
  if GetAnswer('Вы действительно хотите отменить изменения?') then
    LoadNote(CurrentDate);
end;

procedure TFormMain.ButtonFlat11Click(Sender: TObject);
begin
  case (Sender as TButtonFlat).Tag of
    10:
      FFromHH := Min(Max(0, FFromHH - 1), 23);
    11:
      FFromHH := Min(Max(0, FFromHH + 1), 23);
    20:
      FFromMM := Min(Max(0, FFromMM - 1), 59);
    21:
      FFromMM := Min(Max(0, FFromMM + 1), 59);
    30:
      FToHH := Min(Max(0, FToHH - 1), 23);
    31:
      FToHH := Min(Max(0, FToHH + 1), 23);
    40:
      FToMM := Min(Max(0, FToMM - 1), 59);
    41:
      FToMM := Min(Max(0, FToMM + 1), 59);
  end;
  UpdateTime;
end;

procedure TFormMain.ButtonFlatCollapseNoteListClick(Sender: TObject);
begin
  if PanelNoteList.Height >= 220 then
  begin
    PanelNoteList.Height := 40;
    ButtonFlatCollapseNoteList.ImageIndex := 14;
  end
  else
  begin
    PanelNoteList.Height := 220; // 10 - | 14 +
    ButtonFlatCollapseNoteList.ImageIndex := 10;
  end;
end;

procedure TFormMain.ButtonFlatFGColorDialogClick(Sender: TObject);
begin
  if Assigned(FPopupColor) then
    FPopupColor.Close;
  if ColorDialog.Execute(Handle) then
  begin
    ButtonFlatNoteFG.Tag := ColorDialog.Color;
    DrawIconColorLine(ButtonFlatNoteFG.Images, ButtonFlatNoteFG.ImageIndex, ColorDialog.Color);
    ButtonFlatNoteFG.Repaint;
    ButtonFlatNoteFGClick(nil);
  end;
end;

procedure TFormMain.ButtonFlatNoteFGColorAutoClick(Sender: TObject);
begin
  if Assigned(FPopupColor) then
    FPopupColor.Close;
  MemoNote.SelAttributes.Color := MemoNote.DefAttributes.Color;

  ButtonFlatNoteFG.Tag := MemoNote.SelAttributes.Color;
  DrawIconColorLine(ButtonFlatNoteFG.Images, ButtonFlatNoteFG.ImageIndex, MemoNote.SelAttributes.Color);
  ButtonFlatNoteFG.Repaint;
  ButtonFlatNoteFGClick(nil);

  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.SetNoteAligment(Sender: TObject);
begin
  case (Sender as TButtonFlat).Tag of
    1:
      MemoNote.Paragraph.Alignment := taLeftJustify;
    2:
      MemoNote.Paragraph.Alignment := taCenter;
    3:
      MemoNote.Paragraph.Alignment := taRightJustify;
    4:
      MemoNote.Paragraph.Alignment := TAlignment(3);
  end;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatNoteSizeDownClick(Sender: TObject);
begin
  MemoNote.SelAttributes.Size := MemoNote.SelAttributes.Size + (Sender as TButtonFlat).Tag;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatNoteSubTextClick(Sender: TObject);
begin
  case (Sender as TButtonFlat).Tag of
    1:
      if RichEditGetBottomLineText(MemoNote) then
        RichEditSetResetText(MemoNote)
      else
        RichEditSetBottomLineText(MemoNote);
    2:
      if RichEditGetTopLineText(MemoNote) then
        RichEditSetResetText(MemoNote)
      else
        RichEditSetTopLineText(MemoNote);
  end;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatMenuFileClick(Sender: TObject);
var
  Pt: TPoint;
begin
  Pt := ButtonFlatMenuFile.ClientToScreen(Point(0, 0));
  PopupMenuFile.Popup(Pt.X, Pt.Y + ButtonFlatMenuFile.Height);
end;

function TFormMain.GetTaskSelected: Boolean;
begin
  Result := Assigned(CurrentTask) and (CurrentTask.ID >= 0);
end;

function TFormMain.GetWorkDayStart: TTime;
begin
  Result := EncodeTime(FFromHH, FFromMM, 0, 0);
end;

function TFormMain.GetWorkDayEnd: TTime;
begin
  Result := EncodeTime(FToHH, FToMM, 0, 0);
end;

procedure TFormMain.SetTaskComplete(TaskID: Integer; Deadline: TDate; State: Boolean);
var
  Task: TTaskItem;
begin
  Task := FTaskItems.GetItem(TaskID);
  if Assigned(Task) then
  begin
    case Task.TaskType of
      ttSimple:
        begin
          Task.State := State;
          FTaskItems.Update(Task);
        end
    else
      begin
        Task.State := State;
        FRepeatStates.CompleteTask(TaskID, Deadline, State);
        FTaskItems.Update(Task);
      end;
    end;
    OnChangeItems;
  end;
end;

procedure TFormMain.SetWorkDayStart(const Value: TTime);
var
  S, M: Word;
begin
  DecodeTime(Value, FFromHH, FFromMM, S, M);
  UpdateTime;
end;

procedure TFormMain.SetTimeManager(const Value: TManager);
begin
  FTimeManager := Value;
end;

procedure TFormMain.SetWorkDayEnd(const Value: TTime);
var
  S, M: Word;
begin
  DecodeTime(Value, FToHH, FToMM, S, M);
  UpdateTime;
end;

procedure TFormMain.UpdateTime;
var
  tmp: TTime;
begin
  if (WorkDayEnd < WorkDayStart) or (WorkDayStart > WorkDayEnd) then
  begin
    tmp := WorkDayEnd;
    WorkDayEnd := WorkDayStart;
    WorkDayStart := tmp;
  end;
  if WorkDayEnd = WorkDayStart then
    WorkDayEnd := WorkDayStart + 1 / 24 / 60;

  FWorkTimeMin := Max(1, GetMins(WorkDayEnd) - GetMins(WorkDayStart));

  ButtonFlatTimeFromHH.Caption := FormatDateTime('HH', WorkDayStart);
  ButtonFlatTimeFromMM.Caption := FormatDateTime('nn', WorkDayStart);

  ButtonFlatTimeToHH.Caption := FormatDateTime('HH', WorkDayEnd);
  ButtonFlatTimeToMM.Caption := FormatDateTime('nn', WorkDayEnd);
end;

procedure TFormMain.UpdateTimeOverlayData;
begin
  with FormTimeOverlay do
  begin
    SetActivateLow(FDoTimeSection);
    if FDoTimeSection then
    begin
      Time := FormatDateTime('HH:mm:ss', FNewTEnd - FNewTStart);
      Caption := FNewTName;
    end
    else
      Close;
  end;
end;

procedure TFormMain.ButtonFlatAddTaskClick(Sender: TObject);
begin
  AddTask;
  TableExTasks.Edit(0, 1);
end;

function TFormMain.AddTask(Name: string = ''; Date: TDateTime = 0): TTaskItem;
begin
  Result := TTaskItem.Create(FTaskItems);
  Result.Name := Name;
  if Date = 0 then
    case ViewMode of
      vmToday, vmSelectedDate:
        begin
          Result.Deadline := True;
          Result.DateDeadline := CurrentDate;
        end;
    end
  else
  begin
    Result.Deadline := True;
    Result.DateDeadline := Date;
  end;
 //Сразу запишем в БД, если есть название
  if Name <> '' then
  begin
    FTaskItems.Update(Result);
    OnChangeItems;
  end;
  FTaskItems.Insert(0, Result);
end;

procedure TFormMain.ButtonFlat6Click(Sender: TObject);
begin
  SetCalendarDate(Calendar.Date + 1);
  ViewMode := vmSelectedDate;
end;

procedure TFormMain.ButtonFlat7Click(Sender: TObject);
begin
  SetCalendarDate(Calendar.Date - 1);
  ViewMode := vmSelectedDate;
end;

procedure TFormMain.ButtonFlatSaveNoteClick(Sender: TObject);
begin
  SaveNote;
end;

procedure TFormMain.ButtonFlatCollapseScaleClick(Sender: TObject);
begin
  if PanelTimeScale.Height >= 220 then
  begin
    PanelTimeScale.Height := 42;
    DrawPanel.Visible := False;
    ButtonFlatCollapseScale.ImageIndex := 14;
  end
  else
  begin
    DrawPanel.Visible := True;
    PanelTimeScale.Height := 220; // 10 - | 14 +
    ButtonFlatCollapseScale.ImageIndex := 10;
  end;
end;

procedure TFormMain.ButtonFlatCurrentDateClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := PanelLeft.ClientToScreen(Point(0, 0));
  if Assigned(FPopupCal) then
  begin
    FPopupCal.Close;
    FPopupCal := nil;
  end;
  FPopupCal := TFormPopup.CreatePopup(Self, PanelSelectCurDate, nil, pt.X, pt.Y, []);
end;

procedure TFormMain.SetButtonWCaption(Target, CloseButton: TButtonFlat; Panel: TPanel; ACaption: string; ACloseBotton: Boolean);

  function WidthPlus: Integer;
  begin
    Result := 0;
  end;

begin
  Target.Caption := ACaption;
  if ACloseBotton then
    Panel.Width := Target.GetTextWidth + WidthPlus + 10 + CloseButton.Width + 10
  else
    Panel.Width := Target.GetTextWidth + WidthPlus + 15;
  CloseButton.Visible := ACloseBotton;
end;

procedure TFormMain.ButtonFlatDANCloseClick(Sender: TObject);
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  FTaskItems[FTaskID].Deadline := False;
  FTaskItems.Update(FTaskItems[FTaskID]);
  UpdateTaskPanel(FTaskID);
  OnChangeItems;
end;

procedure TFormMain.ButtonFlatDeadlinedClick(Sender: TObject);
begin
  ViewMode := vmDeadlined;
end;

procedure TFormMain.ButtonFlatDropDownFontsClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := ButtonFlatFonts.ClientToScreen(Point(0, 0));
  TableExFonts.Height := Min(400, TableExFonts.ItemCount * TableExFonts.DefaultRowHeight + 2);
  FPopupFonts := TFormPopup.CreatePopup(Self, TableExFonts, nil, pt.X, pt.Y + ButtonFlatFonts.Height, []);
end;

procedure SetButtonFontSize(Button: TButtonFlat; Size: Integer);
begin
  Button.Tag := Max(8, Min(72, Size));
  Button.Caption := Button.Tag.ToString;
end;

procedure TFormMain.ButtonFlatFontsClick(Sender: TObject);
begin
  MemoNote.SelAttributes.Name := ButtonFlatFonts.Caption;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatFontSizeMouseEnter(Sender: TObject);
begin
  ButtonFlatFontSize.SetFocus;
end;

procedure TFormMain.ButtonFlatFontSizeMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
  SetButtonFontSize(ButtonFlatFontSize, ButtonFlatFontSize.Tag - 1);
  MemoNote.SelAttributes.Size := ButtonFlatFontSize.Tag;
  ButtonFlatFontSize.SetFocus;
end;

procedure TFormMain.ButtonFlatFontSizeMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
  SetButtonFontSize(ButtonFlatFontSize, ButtonFlatFontSize.Tag + 1);
  MemoNote.SelAttributes.Size := ButtonFlatFontSize.Tag;
  ButtonFlatFontSize.SetFocus;
end;

procedure TFormMain.ButtonFlatMenuViewClick(Sender: TObject);
var
  Pt: TPoint;
begin
  Pt := ButtonFlatMenuView.ClientToScreen(Point(0, 0));
  PopupMenuView.Popup(Pt.X, Pt.Y + ButtonFlatMenuView.Height);
end;

procedure TFormMain.BeforeChangeDay;
begin
  SaveNote;
end;

procedure TFormMain.OnChangeItems;
begin
  UpdateCounts;
  ReloadCalendarData;
end;

function TFormMain.DeleteTask(ID: Integer): Boolean;
begin
  Result := False;
  if not IndexInList(ID, FTaskItems.Count) then
    Exit;
  if not GetAnswer('Удалить задачу "' + CutString(FTaskItems[ID].Name, 100) + '"?', True) then
    Exit;
  FTaskItems.Delete(ID);
  OnChangeItems;
  UpdateTaskPanel(ID);
  Result := True;
end;

procedure TFormMain.ButtonFlat9Click(Sender: TObject);
begin
  DeleteTask(TableExTasks.ItemIndex);
end;

procedure TFormMain.ButtonFlatAddTimeClick(Sender: TObject);
begin
  AddTaskTime(CurrentDate, CurrentDate, Now, Now, CurrentTask.ID, CurrentTask.Color);
end;

procedure TFormMain.SlideTo(Slide: TSlide);
begin
  Enabled := False;
  ButtonFlatTimes.ColorNormal := BackgroundColor;
  ButtonFlatSettings.ColorNormal := BackgroundColor;
  ButtonFlatCalendar.ColorNormal := BackgroundColor;
  ButtonFlatNotes.ColorNormal := BackgroundColor;

  case Slide of
    slTimes:
      begin
        FVisNeed := PanelTimes;
        ButtonFlatTimes.ColorNormal := ForegroundColor;
      end;
    slSettings:
      begin
        FVisNeed := PanelSettings;
        ButtonFlatSettings.ColorNormal := ForegroundColor;
      end;
    slCalendar:
      begin
        FVisNeed := PanelCalendar;
        ButtonFlatCalendar.ColorNormal := ForegroundColor;
      end;
    slNotes:
      begin
        FVisNeed := PanelNotes;
        ButtonFlatNotes.ColorNormal := ForegroundColor;
      end;
  end;
  {if FVisNeed <> FVisNow then
  begin
    FVisNeed.Left := FVisNow.Width;
    FVisNeed.Top := 0;
    AnimateControlLeft(FVisNow, 25, -450);
    AnimateControlLeft(FVisNeed, 25, 0);
  end;  }
  FVisNow := FVisNeed;
  FVisNow.BringToFront;

  ButtonFlatTimes.ShowCaption := FVisNeed = PanelTimes;
  ButtonFlatSettings.ShowCaption := FVisNeed = PanelSettings;
  ButtonFlatCalendar.ShowCaption := FVisNeed = PanelCalendar;
  ButtonFlatNotes.ShowCaption := FVisNeed = PanelNotes;
  if ButtonFlatTimes.ShowCaption then
    ButtonFlatTimes.Width := 130
  else
    ButtonFlatTimes.Width := 40;
  if ButtonFlatSettings.ShowCaption then
    ButtonFlatSettings.Width := 130
  else
    ButtonFlatSettings.Width := 40;
  if ButtonFlatCalendar.ShowCaption then
    ButtonFlatCalendar.Width := 130
  else
    ButtonFlatCalendar.Width := 40;
  if ButtonFlatNotes.ShowCaption then
    ButtonFlatNotes.Width := 130
  else
    ButtonFlatNotes.Width := 40;

  Enabled := True;
end;

procedure TFormMain.ButtonFlatMinimizeClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TFormMain.ButtonFlatNewCommentClick(Sender: TObject);
var
  Item: TCommentItem;
  ID: Integer;
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  Item := TCommentItem.Create(FComments);
  Item.Text := EditNewComment.Text;
  Item.Date := Now;
  Item.Task := FTaskItems[FTaskID].ID;
  ID := FComments.Add(Item);
  TableExComments.ItemIndex := ID;
  FComments.Update(ID);
  EditNewComment.Text := '';
end;

procedure TFormMain.ButtonFlatNoteBGClick(Sender: TObject);
begin
  RichEditSetBGCOlor(MemoNote, ButtonFlatNoteBG.Tag);
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatNoteBGDropClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := ButtonFlatNoteBG.ClientToScreen(Point(0, 0));
  ColorGridNoteBG.SelectedColor := RichEditGetBGCOlor(MemoNote, clNone);
  FPopupColor := TFormPopup.CreatePopup(Self, PanelNoteBGColor, nil, pt.X, pt.Y + ButtonFlatNoteBG.Height, []);
end;

procedure TFormMain.ButtonFlatNoteBGNoColorClick(Sender: TObject);
begin
  if Assigned(FPopupColor) then
    FPopupColor.Close;
  RichEditSetBGCOlor(MemoNote, clNone);
  ButtonFlatNoteBG.Tag := clNone;
  DrawIconColorLine(ButtonFlatNoteBG.Images, ButtonFlatNoteBG.ImageIndex, ButtonIconColor);
  ButtonFlatNoteBG.Repaint;
  ButtonFlatNoteBGClick(nil);
end;

procedure TFormMain.ButtonFlatNoteFGClick(Sender: TObject);
begin
  MemoNote.SelAttributes.Color := ButtonFlatNoteFG.Tag;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatNoteFGDropClick(Sender: TObject);
var
  pt: TPoint;
begin
  pt := ButtonFlatNoteFG.ClientToScreen(Point(0, 0));
  ColorGridNoteFG.SelectedColor := MemoNote.SelAttributes.Color;
  FPopupColor := TFormPopup.CreatePopup(Self, PanelNoteFGColor, nil, pt.X, pt.Y + ButtonFlatNoteFG.Height, []);
end;

procedure TFormMain.ButtonFlatNoteParLeftClick(Sender: TObject);
begin
  MemoNote.Paragraph.LeftIndent := MemoNote.Paragraph.LeftIndent - 15;
  MemoNote.Paragraph.FirstIndent := MemoNote.Paragraph.FirstIndent - 15;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatNoteParRightClick(Sender: TObject);
begin
  MemoNote.Paragraph.LeftIndent := MemoNote.Paragraph.LeftIndent + 15;
  MemoNote.Paragraph.FirstIndent := MemoNote.Paragraph.FirstIndent + 15;
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.ButtonFlatNotesClick(Sender: TObject);
begin
  SlideTo(slNotes);
end;

procedure TFormMain.ButtonFlatNoteTextAttrClick(Sender: TObject);
var
  Style: TFontStyle;
begin
  Style := TFontStyle((Sender as TButtonFlat).Tag);
  if Style in MemoNote.SelAttributes.Style then
    MemoNote.SelAttributes.Style := MemoNote.SelAttributes.Style - [Style]
  else
    MemoNote.SelAttributes.Style := MemoNote.SelAttributes.Style + [Style];
  MemoNoteSelectionChange(nil);
end;

procedure TFormMain.Calendar1CalendarDrawDayItem(Sender: TObject; DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
begin
  DrawParams.ForegroundColor := clWhite;
end;

procedure TFormMain.CalendarChange(Sender: TObject);
begin
  if FDateChanging then
    Exit;
  if Assigned(FPopupCal) then
  begin
    FPopupCal.Close;
    FPopupCal := nil;
  end;
  ViewMode := vmSelectedDate;
end;

procedure TFormMain.CalendarDrawDayItem(Sender: TObject; DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
begin
  DrawParams.ForegroundColor := clWhite;
end;

procedure TFormMain.SetCalendarDate(Value: TDateTime);
begin
  FDateChanging := True;
  Calendar.Date := Value;
  FDateChanging := False;
end;

procedure TFormMain.UpdateViewMode;
begin
  FTaskItems.UseDatePeriod := False;
  case FViewMode of
    vmToday:
      begin
        SetCalendarDate(Now);
        CurrentDate := Now;
        FTaskItems.ShowDate := CurrentDate;
        if CheckBoxFlatMoreTasks.Checked then
        begin
          FTaskItems.UseDatePeriod := True;
          FTaskItems.DatePeriod.SetValue(FTaskItems.ShowDate, FTaskItems.ShowDate + 3);
        end;
        FTaskItems.TaskFilter := tkfDated;
        FTaskItems.Reload;
        ButtonFlatViewMode.Caption := HumanDateTime(FTaskItems.ShowDate, False, True);
      end;
    vmSelectedDate:
      begin
        //Calendar.Date:=Calendar.Date;
        CurrentDate := Calendar.Date;
        FTaskItems.ShowDate := Calendar.Date;
        FTaskItems.TaskFilter := tkfDated;
        FTaskItems.Reload;
        ButtonFlatViewMode.Caption := HumanDateTime(FTaskItems.ShowDate, False, True);
      end;
    vmDeadlined:
      begin
        SetCalendarDate(Now);
        CurrentDate := Now;
        FTaskItems.ShowDate := Now;
        FTaskItems.TaskFilter := tkfDeadlined;
        FTaskItems.Reload;
        ButtonFlatViewMode.Caption := 'Просроченные задачи';
      end;
    vmInbox:
      begin
        //Calendar.Date := Now;
        //CurrentDate := Now;
        //FTaskItems.ShowDate := Now;
        FTaskItems.TaskFilter := tkfNoDate;
        FTaskItems.Reload;
        ButtonFlatViewMode.Caption := 'Входящие';
      end;
    vmLabel:
      begin
        //Calendar.Date := Now;
        //CurrentDate := Now;
        FTaskItems.ShowDate := CurrentDate;
        FTaskItems.FilterLabelTypeID := FLastLabel;
        FTaskItems.TaskFilter := tkLabel;
        FTaskItems.Reload;
        ButtonFlatViewMode.Caption := FLastLabelCaption;
      end;
  end;
  ButtonFlatCurrentDate.Caption := FormatDateTime('DD MMM YYYY', Calendar.Date);
  ButtonFlatViewMode.Width := Max(90, ButtonFlatViewMode.GetTextWidth + 20);
  ButtonFlatViewMode.Left := PanelTaskEdit.Width div 2 - ButtonFlatViewMode.Width div 2;
  FActualNotes.Reload(Now);
  UpdateTaskPanel;
  UpdateViewModeParam;
  OnChangeItems;
end;

procedure TFormMain.CheckBoxFlatHideOftenTasksClick(Sender: TObject);
begin
  FTaskItems.CalcOftenRepeat := not CheckBoxFlatHideOftenTasks.Checked;
  UpdateViewMode;
end;

procedure TFormMain.CheckBoxFlatMoreTasksClick(Sender: TObject);
begin
  UpdateViewMode;
end;

procedure TFormMain.CheckBoxFlatShowCompletedClick(Sender: TObject);
begin
  FTaskItems.ShowEndedTask := CheckBoxFlatShowCompleted.Checked;
  UpdateViewMode;
end;

procedure TFormMain.ColorGridNoteBGSelect(Sender: TObject);
begin
  if Assigned(FPopupColor) then
    FPopupColor.Close;
  if ColorGridNoteBG.IsSelected then
  begin
    ButtonFlatNoteBG.Tag := ColorGridNoteBG.SelectedColor;
    if ButtonFlatNoteBG.Tag = clNone then
      DrawIconColorLine(ButtonFlatNoteBG.Images, ButtonFlatNoteBG.ImageIndex, ButtonIconColor)
    else
      DrawIconColorLine(ButtonFlatNoteBG.Images, ButtonFlatNoteBG.ImageIndex, ColorGridNoteBG.SelectedColor);
    ButtonFlatNoteBG.Repaint;
    ButtonFlatNoteBGClick(nil);
  end;
end;

procedure TFormMain.ColorGridNoteFGSelect(Sender: TObject);
begin
  if Assigned(FPopupColor) then
    FPopupColor.Close;
  if ColorGridNoteFG.IsSelected then
  begin
    ButtonFlatNoteFG.Tag := ColorGridNoteFG.SelectedColor;
    DrawIconColorLine(ButtonFlatNoteFG.Images, ButtonFlatNoteFG.ImageIndex, ColorGridNoteFG.SelectedColor);
    ButtonFlatNoteFG.Repaint;
    ButtonFlatNoteFGClick(nil);
  end;
end;

procedure TFormMain.ShowTask(TaskID: Integer);
var
  Task: TTaskItem;
  txt: string;
begin
 //Сохранить старую запись
  if FTaskID <> TaskID then
    MemoTaskDescExit(nil);
 //Работаем с новой
  FTaskID := TaskID;
  Task := FTaskItems[TaskID];
  FComments.Reload(Task.ID);
  EditTaskName.Text := Task.Name;
  MemoTaskDesc.Text := Task.Description;
  MemoTaskDesc.Modified := False;
  case Task.State of
    True:
      ButtonFlatTaskState.ImageIndex := 18;
    False:
      ButtonFlatTaskState.ImageIndex := 19;
  end;
  if Task.Deadline then
  begin
    txt := HumanDateTime(Task.DateDeadline, False);
    if Task.Notify then
      txt := txt + ', в ' + FormatDateTime('HH:mm', Task.TimeNotify);
    SetButtonWCaption(ButtonFlatTaskDAN, ButtonFlatDANClose, PanelTaskDAN, txt, True);
  end
  else
  begin
    SetButtonWCaption(ButtonFlatTaskDAN, ButtonFlatDANClose, PanelTaskDAN, 'Дата и напоминание...', False);
  end;
  if Task.Color <> clNone then
  begin
    SetButtonWCaption(ButtonFlatTaskColor, ButtonFlatTaskColorClose, PanelTaskColor, 'Цвет задачи', True);
    ButtonFlatTaskColor.ColorNormal := Task.Color;
  end
  else
  begin
    SetButtonWCaption(ButtonFlatTaskColor, ButtonFlatTaskColorClose, PanelTaskColor, 'Выбрать цвет...', False);
    ButtonFlatTaskColor.ColorNormal := $00313131;
  end;
 //UpdateCounts;
 //PanelTask.Height:=300;
 //PanelTask.Enabled:=True;
  PanelTask.Visible := True;
end;

procedure TFormMain.HideTask;
begin
 //PanelTask.Height:=1;
 //PanelTask.Enabled:=False;
  PanelTask.Visible := False;
  MemoTaskDescExit(nil);
end;

procedure TFormMain.OnCloseNotifyAction(TaskID: Integer);
var
  ID: Integer;
begin
  ID := FNotifyItems.FindByTask(TaskID);
  if not IndexInList(ID, FNotifyItems.Count) then
    Exit;
  try
    FNotifyItems.Delete(ID);
  except
    on E: Exception do
      Error(E, 'except OnCloseNotifyAction');
  end;
end;

procedure TFormMain.Initializate;
var
  WD: TWorkDays;
  Column: TColorColumn;
  i: Integer;
begin
  AccentColor := $00B86B00;
  BackgroundColor := $002E2E2E;
  ForegroundColor := $00383838;
  SelectionColor := $002A2A2A;
  HotOverColor := $004D4D4D;
  ButtonIconColor := $00F0F0F0;

  ColorGridNoteBG.ColorColumns.Clear;
  Column := TColorColumn.Create;
  Column.Add(TColorItem.Create(clYellow));
  Column.Add(TColorItem.Create(clRed));
  Column.Add(TColorItem.Create(clMaroon));
  ColorGridNoteBG.ColorColumns.Add(Column);

  Column := TColorColumn.Create;
  Column.Add(TColorItem.Create(clLime));
  Column.Add(TColorItem.Create(clNavy));
  Column.Add(TColorItem.Create(clOlive));
  ColorGridNoteBG.ColorColumns.Add(Column);

  Column := TColorColumn.Create;
  Column.Add(TColorItem.Create(clAqua));
  Column.Add(TColorItem.Create(clTeal));
  Column.Add(TColorItem.Create(clGray));
  ColorGridNoteBG.ColorColumns.Add(Column);

  Column := TColorColumn.Create;
  Column.Add(TColorItem.Create(clFuchsia));
  Column.Add(TColorItem.Create(clGreen));
  Column.Add(TColorItem.Create(clSilver));
  ColorGridNoteBG.ColorColumns.Add(Column);

  Column := TColorColumn.Create;
  Column.Add(TColorItem.Create(clBlue));
  Column.Add(TColorItem.Create(clPurple));
  Column.Add(TColorItem.Create(clBlack));
  ColorGridNoteBG.ColorColumns.Add(Column);
  ColorGridNoteBG.Update;

  FFontItems.Add(TFontItem.Create('Arial'));
  FFontItems.Add(TFontItem.Create('Segoe UI'));
  FFontItems.Add(TFontItem.Create('Segoe UI Light'));
  FFontItems.Add(TFontItem.Create('Segoe Script'));
  FFontItems.Add(TFontItem.Create('Comic Sans MS'));
  FFontItems.Add(TFontItem.Create('Courier New'));
  FFontItems.Add(TFontItem.Create('Gerogia'));
  FFontItems.Add(TFontItem.Create('Impact'));
  FFontItems.Add(TFontItem.Create('Roboto'));
  FFontItems.Add(TFontItem.Create('Times New Roman'));
  FFontItems.Add(TFontItem.Create('Trebuchet MS'));
  FFontItems.Add(TFontItem.Create('Verdana'));
  FFontItems.UpdateTable;

 //TFormNotifyTask.OnCloseAction:=OnCloseNotifyAction;
  FTimeManager := TManager.Create(FDB);
  FTimeManager.OnWorkDayStarted := WorkDayStarted;
  FTimeManager.OnTaskNotify := TaskNotify;
  Manager := FTimeManager;
  FormTimeOverlay := TFormTimeOverlay.Create(nil);
  FormTimeOverlay.Callback := TimeOverlayCallBack;

  FDoTimeSection := False;
  FVisNow := PanelTimes;
  HideTask;
  WD[1] := True;
  WD[2] := True;
  WD[3] := True;
  WD[4] := True;
  WD[5] := True;
  WD[6] := False;
  WD[7] := False;
  WorkDays := WD;

  for i := 0 to ImageListNotes.Count - 1 do
    ColorImages(ImageListNotes, i, ButtonIconColor);

  WorkDayEnd := 1 / 24 * 18;
  WorkDayStart := 1 / 24 * 9;
  UpdateTime;

  FLastDate := DateOf(Now);
  ReloadLabelsTypes;
  UpdateCounts;
  UpdateTaskNowButton;

  ViewMode := vmToday;
  TimerTimeTimer(nil);
  TimeManager.Activate := True;
 {$IFDEF DEBUG}
  Caption := Caption + ' (Debug)';
 {$ENDIF}

  SlideTo(slTimes);

  WindowState := wsMaximized;
end;

procedure TFormMain.DoLog(Text: string);
begin
 //MemoLog.Lines.BeginUpdate;
 //MemoLog.Lines.Insert(0, Text+#13#10);
 //MemoLog.Lines.EndUpdate;
end;

procedure TFormMain.UpdateCounts;
begin
  ButtonFlatTaskNow.SubText := IntToStr(FTaskItems.GetCount(Now));
  ButtonFlatDeadlined.SubText := IntToStr(FTaskItems.GetDeadlined(Now));
  ButtonFlatTaskInbox.SubText := IntToStr(FTaskItems.GetCount(0));
  ButtonFlatTaskNow.VisibleSubText := ButtonFlatTaskNow.SubText <> '0';
  ButtonFlatDeadlined.VisibleSubText := ButtonFlatDeadlined.SubText <> '0';
  ButtonFlatTaskInbox.VisibleSubText := ButtonFlatTaskInbox.SubText <> '0';
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  Quit;
end;

procedure TFormMain.ProcLabelButton(Sender: TObject);
begin
  with (Sender as TButtonFlat) do
  begin
    FLastLabel := Tag;
    FLastLabelCaption := Caption;
    ViewMode := vmLabel;
  end;
end;

procedure TFormMain.ReloadLabelsTypes;
var
  i: Integer;
  Button: TButtonFlat;
begin
  FLabelTypes.Reload;
  ScrollBoxLabels.Visible := False;
  while ScrollBoxLabels.ComponentCount > 0 do
  begin
    ScrollBoxLabels.Components[0].Free;
  end;
  ScrollBoxLabels.Height := 200;
  for i := 0 to FLabelTypes.Count - 1 do
  begin
    Button := TButtonFlat.Create(ScrollBoxLabels);
    Button.Name := '';
    Button.Top := ScrollBoxLabels.Height + 1;
    Button.Parent := ScrollBoxLabels;
    Button.Align := alTop;
    Button.AlignWithMargins := True;
    Button.ColorNormal := ForegroundColor;
    Button.ColorOver := $00616161;
    Button.ColorPressed := $003A3A3A;
    Button.SubText := ' ';
    Button.VisibleSubText := True;
    Button.Caption := FLabelTypes[i].Name;
    Button.SubTextColor := FLabelTypes[i].Color;
    Button.Height := 34;
    Button.Font.Color := clWhite;
    Button.FontOver.Color := clWhite;
    Button.FontDown.Color := clWhite;
    Button.TextFormat := [tfSingleLine, tfVerticalCenter];
    Button.Tag := FLabelTypes[i].ID;
    Button.OnClick := ProcLabelButton;
  end;
  ScrollBoxLabels.Height := Min(400, ScrollBoxLabels.ComponentCount * (34 + 6));
  ScrollBoxLabels.Visible := True;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 //Низкоуровневые параметры и инициализация
 //Далее Initializate
  FWindowsShutdown := False;
  FTaskID := -1;
  FDateChanging := False;

  PanelCalendar.Left := PanelRight.Width + 10;
  PanelTimes.Left := 0;
  PanelSettings.Left := PanelRight.Width + 10;
  PanelNotes.Left := PanelRight.Width + 10;
  TableExFonts.Left := 0 - (TableExFonts.Width + 100);

  FDB := TDB.Create(ExtractFilePath(ParamStr(0)) + '\data.db');
  FDB.OnLog := DoLog;
  FRepeatStates := TRepeatStates.Create(FDB, nil);
  FTimeItems := TTimeItems.Create(FDB, TableExTimes);
  FTaskItems := TTaskItems.Create(FDB, TableExTasks);
  FComments := TCommentItems.Create(FDB, TableExComments);
  FLabelTypes := TLabelTypes.Create(FDB, nil);
  FLabelItems := TLabelItems.Create(FDB, nil);
  FNote := TNoteItem.Create(FDB);
  FTasksOfCalendar := TTaskItems.Create(FDB, nil);
  FNotifyItems := TNotifyItems.Create;
  FFontItems := TFontItems.Create(TableExFonts);
  FActualNotes := TActualNotes.Create(FDB, TableExNotes);
  //
  FEmptyTask := TTaskItem.Create(FTaskItems);
  FEmptyTask.ID := -1;
  FEmptyTask.Color := clNone;
  FEmptyTask.Name := 'Новая задача';
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FDB.Free;
  FRepeatStates.Clear;
  FRepeatStates.Free;
  FTimeItems.Clear;
  FTimeItems.Free;
  FTaskItems.Clear;
  FTaskItems.Free;
  FComments.Clear;
  FComments.Free;
  FLabelTypes.Clear;
  FLabelTypes.Free;
  FLabelItems.Clear;
  FLabelItems.Free;
  FNote.Free;
  FTasksOfCalendar.Clear;
  FTasksOfCalendar.Free;
  FNotifyItems.Clear;
  FNotifyItems.Free;
  FFontItems.Clear;
  FFontItems.Free;
  FTimeManager.Free;
  FormTimeOverlay.Free;
  FEmptyTask.Free;
  FActualNotes.Clear;
  FActualNotes.Free;
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
  Canvas.Pen.Color := $00ADADAD;
  Canvas.Pen.Width := 3;
  Canvas.Rectangle(ClientRect);
end;

procedure TFormMain.ShowForm;
begin
  Show;
  ShowWindow(Handle, SW_SHOW);
  BringToFront;
end;

procedure TFormMain.MemoNoteContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  RichEditPopupMenu(Sender as TRichEdit);
  Handled := True;
end;

procedure TFormMain.MemoNoteSelectionChange(Sender: TObject);
begin
  if MemoNote.Showing then
    MemoNote.SetFocus;

  ButtonFlatFonts.Font.Name := MemoNote.SelAttributes.Name;
  ButtonFlatFonts.FontOver.Name := MemoNote.SelAttributes.Name;
  ButtonFlatFonts.FontDown.Name := MemoNote.SelAttributes.Name;
  ButtonFlatFonts.Caption := MemoNote.SelAttributes.Name;

  SetButtonFontSize(ButtonFlatFontSize, MemoNote.SelAttributes.Size);

  SetButtonCheckColor(ButtonFlatNoteBold, fsBold in MemoNote.SelAttributes.Style);
  SetButtonCheckColor(ButtonFlatNoteItalic, fsItalic in MemoNote.SelAttributes.Style);
  SetButtonCheckColor(ButtonFlatNoteUL, fsUnderline in MemoNote.SelAttributes.Style);
  SetButtonCheckColor(ButtonFlatNoteSO, fsStrikeOut in MemoNote.SelAttributes.Style);

  SetButtonCheckColor(ButtonFlatNoteSubText, RichEditGetBottomLineText(MemoNote));
  SetButtonCheckColor(ButtonFlatNoteSuperText, RichEditGetTopLineText(MemoNote));

  SetButtonCheckColor(ButtonFlatNoteAlLeft, MemoNote.Paragraph.Alignment = taLeftJustify);
  SetButtonCheckColor(ButtonFlatNoteAlCenter, MemoNote.Paragraph.Alignment = taCenter);
  SetButtonCheckColor(ButtonFlatNoteAlRight, MemoNote.Paragraph.Alignment = taRightJustify);
  SetButtonCheckColor(ButtonFlatNoteAlWidth, MemoNote.Paragraph.Alignment = TAlignment(3));
end;

procedure TFormMain.MemoTaskDescExit(Sender: TObject);
begin
  SaveTaskDescription;
end;

procedure TFormMain.SaveTaskDescription;
begin
  if not IndexInList(FTaskID, FTaskItems.Count) then
    Exit;
  if MemoTaskDesc.Modified then
  begin
    FTaskItems[FTaskID].Description := MemoTaskDesc.Text;
    FTaskItems.Update(FTaskItems[FTaskID]);
  end;
end;

function TFormMain.DeleteComment(ID: Integer): Boolean;
begin
  Result := False;
  if not IndexInList(ID, FComments.Count) then
    Exit;
  if not GetAnswer('Удалить комментарий "' + CutString(FComments[ID].Text, 100) + '"?', True) then
    Exit;
  FComments.Delete(ID);
  Result := True;
end;

procedure TFormMain.MenuItemCommentDelClick(Sender: TObject);
begin
  DeleteComment(TableExComments.ItemIndex);
end;

procedure TFormMain.MenuItemDropTaskLinkClick(Sender: TObject);
begin
  if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then
    Exit;
  FTimeItems[TableExTimes.ItemIndex].Task := -1;
  FTimeItems[TableExTimes.ItemIndex].Color := clNone;
  FTimeItems.Update(FTimeItems[TableExTimes.ItemIndex]);
  FTimeItems.UpdateTable;
end;

procedure TFormMain.MenuItemLinkWithTaskClick(Sender: TObject);
begin
  if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then
    Exit;
  if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then
  begin
    ShowNeedAction('Необходимо выбрать задачу!');
    Exit;
  end;
  FTimeItems[TableExTimes.ItemIndex].Task := FTaskItems[TableExTasks.ItemIndex].ID;
  FTimeItems[TableExTimes.ItemIndex].Color := FTaskItems[TableExTasks.ItemIndex].Color;
  FTimeItems.Update(FTimeItems[TableExTimes.ItemIndex]);
  FTimeItems.UpdateTable;
end;

procedure TFormMain.MenuItemMoveTaskClick(Sender: TObject);
var
  Date: TDate;
  Task: TTaskItem;
begin
  if not TaskSelected then
    Exit;
  Task := CurrentTask;
  Date := Task.DateDeadline;
  if TFormDateEdit.Select(Date) then
  begin
    Task.DateDeadline := Date;
    FTaskItems.Update(Task);
    FTaskItems.Reload;
  end;
end;

procedure TFormMain.MenuItemOpenLabelsClick(Sender: TObject);
begin
  TFormSelectLabels.OpenForEdit;
  ReloadLabelsTypes;
end;

procedure TFormMain.SaveAll;
begin
  SaveNote;
  SaveTaskDescription;
end;

procedure TFormMain.Quit;
begin
  if not FWindowsShutdown then
  begin
    if not GetAnswer('Завершить работу с программой?') then
      Exit;
  end;
  SaveAll;
  if StopTimeSection then
  begin
    FAddTaskTime(FNewTStartDate, FNewTEndDate, FNewTStart, FNewTEnd, FNewTTask, FNewTColor, '<Автосохранение>');
  end;
  Application.Terminate;
end;

procedure TFormMain.MenuItemQuitClick(Sender: TObject);
begin
  Quit;
end;

procedure TFormMain.MenuItemShowEndedClick(Sender: TObject);
begin
  FTaskItems.ShowEndedTask := not FTaskItems.ShowEndedTask;
  UpdateViewMode;
  OnChangeItems;
end;

procedure TFormMain.UpdateViewModeParam;
begin
  MenuItemShowEnded.Checked := FTaskItems.ShowEndedTask;
  CheckBoxFlatShowCompleted.Checked := FTaskItems.ShowEndedTask;
  CheckBoxFlatHideOftenTasks.Checked := not FTaskItems.CalcOftenRepeat;
end;

procedure TFormMain.MenuItemTaskDelClick(Sender: TObject);
begin
  DeleteTask(TableExTasks.ItemIndex);
end;

procedure TFormMain.MenuItemTaskLabelAddClick(Sender: TObject);
begin
  if not TaskSelected then
    Exit;
  if TFormSelectLabels.Select(CurrentTask.LabelItems, CurrentTask.ID) then
    TableExTasks.Repaint;
end;

procedure TFormMain.MenuItemTaskStartFromClick(Sender: TObject);
begin
  StartTask(DateOf(Now) + FRangeFrom);
end;

procedure TFormMain.MenuItemTimeDeleteClick(Sender: TObject);
begin
  if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then
    Exit;
  DeleteTime(TableExTimes.ItemIndex);
end;

procedure TFormMain.MenuItemTimeEditClick(Sender: TObject);
var
  Item: TTimeItem;
  EditTime: TFormEditTime;
begin
  if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then
    Exit;
  Item := FTimeItems[TableExTimes.ItemIndex];

  EditTime := TFormEditTime.Create(nil);
  try
    EditTime.EditText.Text := Item.Description;
    EditTime.TimeFrom := Item.TimeFrom;
    EditTime.TimeTo := Item.TimeTo;
    EditTime.TaskID := Item.Task;
    EditTime.TaskColor := Item.Color;

    EditTime.Position := poMainFormCenter;
    if EditTime.ShowModal = mrOK then
    begin
      Item.Description := EditTime.EditText.Text;
      Item.TimeFrom := EditTime.TimeFrom;
      Item.TimeTo := EditTime.TimeTo;
      Item.Task := EditTime.TaskID;
      Item.Color := EditTime.TaskColor;
      FTimeItems.Update(Item);
      TableExTimes.Update;
    end;
  finally
    EditTime.Free;
  end;
end;

procedure TFormMain.MenuItemTimeStartFromClick(Sender: TObject);
begin
  if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then
    Exit;
  StartTask(FTimeItems[TableExTimes.ItemIndex].TimeFrom);
end;

procedure TFormMain.MenuItemTrayOpenClick(Sender: TObject);
begin
  TrayIconClick(nil);
end;

procedure TFormMain.MenuItemTrayQuitClick(Sender: TObject);
begin
  Quit;
end;

procedure TFormMain.MenuItemTrayStartTaskClick(Sender: TObject);
begin
  StartTask(Now);
end;

procedure TFormMain.MenuItemTaskLabelClick(Sender: TObject);
var
  LItem: TLabelItem;
begin
  if not TaskSelected then
    Exit;
  if not IndexInList((Sender as TMenuItem).Tag, FLabelTypes.Count) then
    Exit;

  LItem := TLabelItem.Create(FLabelTypes[(Sender as TMenuItem).Tag]);
  LItem.Task := CurrentTask.ID;
  CurrentTask.LabelItems.New(LItem);
  TableExTasks.Repaint;
end;

procedure TFormMain.MenuItemTaskLabelReset(Sender: TObject);
begin
  if not Assigned(CurrentTask) then
    Exit;
  CurrentTask.DropLabels;
end;

procedure TFormMain.PopupMenuTaskPopup(Sender: TObject);
var
  MI: TMenuItem;
  i: Integer;
begin
  FLabelTypes.Reload;
  MenuItemTaskLabels.Clear;

  MI := PopupMenuTask.CreateMenuItem;
  MI.Caption := 'Редактировать...';
  MI.OnClick := MenuItemTaskLabelAddClick;
  MenuItemTaskLabels.Add(MI);

  MI := PopupMenuTask.CreateMenuItem;
  MI.Caption := '-';
  MenuItemTaskLabels.Add(MI);

  for i := 0 to FLabelTypes.Count - 1 do
  begin
    MI := PopupMenuTask.CreateMenuItem;
    MI.Caption := FLabelTypes[i].Name;
    MI.Tag := i;
    MI.OnClick := MenuItemTaskLabelClick;
    MenuItemTaskLabels.Add(MI);
  end;

  MI := PopupMenuTask.CreateMenuItem;
  MI.Caption := '-';
  MenuItemTaskLabels.Add(MI);

  MI := PopupMenuTask.CreateMenuItem;
  MI.Caption := 'Сбросить';
  MI.OnClick := MenuItemTaskLabelReset;
  MenuItemTaskLabels.Add(MI);

  MenuItemMoveTask.Enabled := (CurrentTask.TaskType = ttSimple) and TaskSelected;
end;

procedure TFormMain.NoteInfo;
begin
  if FNote.Loaded then
  begin
    MemoNote.PlainText := False;
    FNote.Text.Position := 0;
    MemoNote.Lines.LoadFromStream(FNote.Text);
    //LabelNoteDate.Caption := HumanDateTime(FNote.Date, False);
    LabelNoteModify.Caption := HumanDateTime(FNote.DateModify, True);
  end
  else
  begin
    MemoNote.Lines.Text := '';
    //LabelNoteDate.Caption := '';
    LabelNoteModify.Caption := '';
  end;
  MemoNoteSelectionChange(nil);
  MemoNote.Modified := False;
end;

procedure TFormMain.SaveNote;
begin
  FNote.Text.Position := 0;
  if FNote.Text.DataString <> MemoNote.Text then
  begin
    FNote.Text.Clear;
    MemoNote.Lines.SaveToStream(FNote.Text);
    FNote.Save;
    NoteInfo;
  end;
end;

procedure TFormMain.LoadNote(Date: TDate);
begin
  FNote.Load(Date);
  NoteInfo;
end;

procedure TFormMain.SetCurrentDate(const Value: TDate);
begin
  if Value = FCurrentDate then
    Exit;
  BeforeChangeDay;
  FCurrentDate := Value;
  UpdateCalendar;
  FTimeItems.Reload(FCurrentDate);
  LoadNote(FCurrentDate);
end;

procedure TFormMain.SetViewMode(const Value: TViewMode);
begin
  FViewMode := Value;
  if (FViewMode = vmSelectedDate) and SameDate(Calendar.Date, Now) then
    FViewMode := vmToday;
  UpdateViewMode;
end;

procedure TFormMain.SetWorkDays(Days: TWorkDays);
begin
  FWorkDays := Days;
  SetButtonCheck(ButtonFlatWD1, Days[1]);
  SetButtonCheck(ButtonFlatWD2, Days[2]);
  SetButtonCheck(ButtonFlatWD3, Days[3]);
  SetButtonCheck(ButtonFlatWD4, Days[4]);
  SetButtonCheck(ButtonFlatWD5, Days[5]);
  SetButtonCheck(ButtonFlatWD6, Days[6]);
  SetButtonCheck(ButtonFlatWD7, Days[7]);
end;

procedure TFormMain.TableExCommentsEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(ARow, FComments.Count) then
    Exit;
  case ACol of
    0:
      begin
        Allow := True;
        Data.EditMode := teText;
        Data.TextValue := FComments[ARow].Text;
      end;
  end;
end;

procedure TFormMain.TableExCommentsEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
begin
  if not IndexInList(ARow, FComments.Count) then
    Exit;
  case ACol of
    0:
      begin
        FComments[ARow].Text := Value;
        if FComments[ARow].Text = '' then
        begin
          FComments.Delete(ARow);
        end
        else
        begin
          FComments.Update(ARow);
        end;
      end;
  end;
end;

procedure TFormMain.TableExCommentsGetData(FCol, FRow: Integer; var Value: string);
begin
  if not IndexInList(FRow, FComments.Count) then
  begin
    Value := 'Нет комментариев';
    Exit;
  end;
  Value := '';
  case FCol of
    0:
      Value := FComments[FRow].Text;
  end;
end;

procedure TFormMain.TableExCommentsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if not IndexInList(TableExComments.ItemUnderMouse, FComments.Count) then
      Exit;
    ShowPopupMenu(PopupMenuComment);
  end;
end;

procedure TFormMain.TableExFontsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Str: string;
begin
  if not IndexInList(ARow, FFontItems.Count) then
    Exit;
  with TableExFonts.Canvas do
  begin
    Str := FFontItems[ARow].FontName;
    Font.Name := Str;
    Rect.Inflate(-2, 0);
    TextRect(Rect, Str, [tfLeft, tfSingleLine, tfVerticalCenter]);
  end;
end;

procedure TFormMain.TableExFontsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if Assigned(FPopupFonts) then
    FPopupFonts.Close;
  if IndexInList(Index, FFontItems.Count) then
  begin
    MemoNote.SelAttributes.Name := FFontItems[Index].FontName;
    MemoNoteSelectionChange(nil);
  end;
end;

procedure TFormMain.TableExNotesDblClick(Sender: TObject);
begin
  if not IndexInList(TableExNotes.ItemIndex, FActualNotes.Count) then
    Exit;
  SetCalendarDate(FActualNotes[TableExNotes.ItemIndex].Date);
  ViewMode := vmSelectedDate;
end;

procedure TFormMain.TableExNotesGetData(FCol, FRow: Integer; var Value: string);
begin
  if not IndexInList(FRow, FActualNotes.Count) then
    Exit;
  case FCol of
    0:
      begin
        Value := DateTimeToStr(FActualNotes[FRow].Date);
      end;
  end;
end;

procedure TFormMain.UpdateTaskPanel;
begin
  if TaskID < 0 then
    TaskID := TableExTasks.ItemIndex;
  if not IndexInList(TaskID, FTaskItems.Count) then
  begin
    HideTask;
  end
  else if PanelTask.Visible then
    ShowTask(TaskID);
end;

procedure TFormMain.WMQueryEndSession(var Msg: TWMQueryEndSession);
begin
  FWindowsShutdown := True;
end;

procedure TFormMain.WMSize(var Message: TWMSize);
begin
  inherited;
  Invalidate;
end;

procedure TFormMain.WorkDayStarted;
begin
  ShowMessage('Рабочий день начался');
end;

function RGBToHSV(R, G, B: Byte; var H, S, V: Double): Boolean;
var
  minRGB, maxRGB, delta: Double;
begin
  H := 0.0;
  minRGB := Min(Min(R, G), B);
  maxRGB := Max(Max(R, G), B);
  delta := (maxRGB - minRGB);
  V := maxRGB;
  if (maxRGB <> 0.0) then
    S := 255.0 * delta / maxRGB
  else
    S := 0.0;

  if (S <> 0.0) then
  begin
    if R = maxRGB then
      H := (G - B) / delta
    else if G = maxRGB then
      H := 2.0 + (B - R) / delta
    else if B = maxRGB then
      H := 4.0 + (R - G) / delta
  end
  else
    H := -1.0;
  H := H * 60;
  if H < 0.0 then
    H := H + 360.0;

  //S := S * 100 / 255;
  //V := B * 100 / 255;
  S := S / 255 * 100;
  V := V / 255 * 100;

  Result := True;
end;

function GetNormColor(Color: TColor): TColor;
var
  R, G, B: Byte;
  H, S, V: Double;
begin
  R := GetRValue(ColorToRGB(Color));
  G := GetGValue(ColorToRGB(Color));
  B := GetBValue(ColorToRGB(Color));
  RGBToHSV(R, G, B, H, S, V);
  if V < 60 then
    Result := clWhite
  else
    Result := clBlack;
end;

procedure TFormMain.TableExTasksChangeItem(Sender: TObject; const Old: Integer; var New: Integer);
begin
  UpdateTaskPanel(New);
end;

procedure Gradient(DC: HWND; Rect: TRect; Color1, Color2: TColor; Vertical: Boolean = False);
var
  Vertex: array[0..1] of TTriVertex;
  Gradient: TGradientRect;
  Mode: Cardinal;
begin
  Vertex[0].X := Rect.Left;
  Vertex[0].Y := Rect.Top;
  Vertex[0].Red := Round((GetRValue(Color1) / 255) * 65535);
  Vertex[0].Green := Round((GetGValue(Color1) / 255) * 65535);
  Vertex[0].Blue := Round((GetBValue(Color1) / 255) * 65535);
  Vertex[0].Alpha := 0;

  Vertex[1].X := Rect.Right;
  Vertex[1].Y := Rect.Bottom;
  Vertex[1].Red := Round((GetRValue(Color2) / 255) * 65535);
  Vertex[1].Green := Round((GetGValue(Color2) / 255) * 65535);
  Vertex[1].Blue := Round((GetBValue(Color2) / 255) * 65535);
  Vertex[1].Alpha := 0;

  Gradient.UpperLeft := 0;
  Gradient.LowerRight := 1;
  if Vertical then
    Mode := GRADIENT_FILL_RECT_V
  else
    Mode := GRADIENT_FILL_RECT_H;
  GradientFill(DC, @Vertex[0], 2, @Gradient, 1, Mode);
end;

procedure TFormMain.TableExTasksDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Txt: string;
  TxtRect: TRect;
  Task: TTaskItem;
  i, LP: Integer;
begin
  if not IndexInList(ARow, FTaskItems.Count) then
  begin
    if ACol <> 1 then
      Exit;
    Txt := 'Нет задач';
    Rect.Offset(-16, 0);
    TableExTasks.Canvas.TextRect(Rect, Txt, [tfSingleLine, tfCenter, tfVerticalCenter]);
    Exit;
  end;
  Task := FTaskItems[ARow];
  case ACol of
    0:
      begin
        with TableExTasks.Canvas do
        begin
          if Task.Color <> clNone then
          begin
            TxtRect := Rect;
            Brush.Color := Task.Color;
            Pen.Color := Task.Color;
         //TxtRect.Inflate(-1, -1);
            Rectangle(TxtRect);
          end;
        end;
        case Task.State of
          True:
            ImageList24.Draw(TableExTasks.Canvas, Rect.Left + (Rect.Width div 2 - ImageList24.Width div 2), Rect.Top + (Rect.Height div 2 - ImageList24.Height div 2), 18, True);
          False:
            ImageList24.Draw(TableExTasks.Canvas, Rect.Left + (Rect.Width div 2 - ImageList24.Width div 2), Rect.Top + (Rect.Height div 2 - ImageList24.Height div 2), 19, True);
        end;
      end;
    1:
      begin
        with TableExTasks.Canvas do
        begin
          if Task.Color <> clNone then
          begin
            TxtRect := Rect;
            Pen.Color := Task.Color;
         //Rectangle(Rect);
            if gdHotTrack in State then
              TxtRect.Right := TxtRect.Left + Round(((TxtRect.Width div 3) / 100 * FAnimate)) + 10
            else
              TxtRect.Right := TxtRect.Left + 10;
         //TxtRect.Inflate(0, -1);

            Gradient(Handle, TxtRect, Task.Color, Brush.Color, False);

            TxtRect := Rect;
            TxtRect.Right := TxtRect.Left + Round(((TxtRect.Width div 3) / 100 * Abs(100 - FAnimate)));
            if (ARow = FItemLast) and (ARow <> TableExTasks.ItemIndex) and (FItemLast <> FItemCur) then
              Gradient(Handle, TxtRect, Task.Color, Brush.Color, False);
          end;
          Pen.Width := 1;
          Font.Size := 11;
          TxtRect := Rect;
          TxtRect.Offset(2, 2);
          TxtRect.Bottom := TxtRect.Top + 20;
          TxtRect.Right := TxtRect.Right - 180;
          Brush.Style := bsClear;
          Txt := Task.Name;
          TextRect(TxtRect, Txt, [tfSingleLine, tfLeft, tfVerticalCenter, tfEndEllipsis]);

          if Task.Deadline then
          begin
            if not Task.Notify then
              Txt := HumanDateTime(Task.DateDeadline, False, True)
            else
              Txt := HumanDateTime(Task.DateDeadline + Task.TimeNotify, True, True);
          end
          else
          begin
            //Txt := HumanDateTime(Task.DateCreate, False, True);
            Txt := 'Не назначена';
          end;
          TxtRect := Rect;
          TxtRect.Offset(2, 2);
          TxtRect.Left := TxtRect.Right - 180;
       //TxtRect.Bottom:=TxtRect.Top + 20;
          Brush.Style := bsClear;
          TextRect(TxtRect, Txt, [tfLeft, tfWordBreak]);

          if Task.TaskType <> ttSimple then
          begin
            ImageList24.Draw(TableExTasks.Canvas, TxtRect.Left - 5, TxtRect.Bottom - 30, 29, True);
          end;

          if Assigned(Task.LabelItems) then
          begin
            LP := Rect.Left + 5;
            for i := 0 to Task.LabelItems.Count - 1 do
            begin
              Font.Size := 10;
              Brush.Color := Task.LabelItems[i].Color;
              Pen.Color := Brush.Color;
              Txt := Task.LabelItems[i].Name;
              TxtRect := Rect;
              TxtRect.Left := LP;
              TxtRect.Width := TextWidth(Txt) + 12;
              TxtRect.Top := TxtRect.Top + 20 + 4;
              TxtRect.Bottom := TxtRect.Bottom - 6;
              LP := TxtRect.Right + 5;
              RoundRect(TxtRect, 2, 2);
              TxtRect.Inflate(-6, 0);
              Font.Color := GetNormColor(Task.LabelItems[i].Color);
              Brush.Style := bsClear;
              TextRect(TxtRect, Txt, [tfSingleLine, tfCenter, tfVerticalCenter, tfEndEllipsis]);
              Font.Color := clWhite;
              TextOut(TxtRect.Left, TxtRect.Top, ' ');
            end;
          end;
        end;
      end;
  end;
end;

procedure TFormMain.TableExTasksEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(ARow, FTaskItems.Count) then
    Exit;
  if (not PanelTask.Visible) and (FTaskItems[ARow].Saved) then
  begin
    ShowTask(ARow);
    Exit;
  end;
  case ACol of
    1:
      begin
        Allow := True;
        Data.EditMode := teText;
        Data.TextValue := FTaskItems[ARow].Name;
      end;
  {0:
   begin
    Allow:=False;
    FTaskItems[ARow].State:=not FTaskItems[ARow].State;
    FTaskItems.Update(ARow);
    ShowTask(ARow);
   end;   }
  end;
end;

procedure TFormMain.TableExTasksEditCancel(Sender: TObject; ACol, ARow: Integer);
begin
  if not IndexInList(ARow, FTaskItems.Count) then
    Exit;
  case ACol of
    1:
      begin
        if not FTaskItems[ARow].Saved then
          if FTaskItems[ARow].Name = '' then
          begin
            FTaskItems.Delete(ARow);
            UpdateTaskPanel(ARow);
          end;
      end;
  end;
end;

procedure TFormMain.TableExTasksEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
begin
  if not IndexInList(ARow, FTaskItems.Count) then
    Exit;
  case ACol of
    1:
      begin
        FTaskItems[ARow].Name := Value;
        if FTaskItems[ARow].Name = '' then
        begin
          if not FTaskItems[ARow].Saved then
          begin
            FTaskItems.Delete(ARow);
            UpdateTaskPanel(ARow);
          end;
        end
        else
        begin
          FTaskItems.Update(FTaskItems[ARow]);
          OnChangeItems;
          UpdateTaskPanel(ARow);
        end;
      end;
  end;
end;

procedure TFormMain.TableExTasksHotOver(Sender: TObject);
begin
  FAnimateDo := True;
  FAnimate := 0;
  FItemLast := FItemCur;
  FItemCur := TableExTasks.ItemUnderMouse;
end;

procedure TFormMain.TableExTasksItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then
    Exit;
  case Index of
    0:
      begin
        SetTaskComplete(FTaskItems[TableExTasks.ItemIndex].ID, FTaskItems[TableExTasks.ItemIndex].DateDeadline, not FTaskItems[TableExTasks.ItemIndex].State);
        OnChangeItems;
        UpdateTaskPanel(TableExTasks.ItemIndex);
      end;
  end;
end;

procedure TFormMain.TableExTasksKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F2 then
  begin
    if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then
      Exit;
    TableExTasks.Edit(TableExTasks.ItemIndex, 1)
  end;
end;

procedure TFormMain.TableExTasksMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if not IndexInList(TableExTasks.ItemUnderMouse, FTaskItems.Count) then
      Exit;
    ShowPopupMenu(PopupMenuTask);
  end;
end;

procedure TFormMain.TableExTimesDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Tmp: TRect;
begin
  if not IndexInList(ARow, FTimeItems.Count) then
    Exit;
  if ACol <> 0 then
    Exit;
  with TableExTimes.Canvas do
  begin
    if FTimeItems[ARow].Task >= 0 then
    begin
      Pen.Color := FTimeItems[ARow].Color;
      Brush.Color := Pen.Color;
      Brush.Style := bsSolid;
      Tmp := Rect;
      Tmp.Width := 5;
      Rectangle(Tmp);
    end;
  end;
  if (not (gdHotTrack in State)) and (ARow <> TableExTimes.ItemIndex) then
    Exit;
  ImageList24.Draw(TableExTimes.Canvas, Rect.Left + (Rect.Width div 2 - 24 div 2), Rect.Top + (Rect.Height div 2 - 24 div 2), 2, True);
end;

procedure TFormMain.TableExTimesGetData(FCol, FRow: Integer; var Value: string);
begin
  if not IndexInList(FRow, FTimeItems.Count) then
    Exit;
  Value := '';
  case FCol of
    1:
      Value := FormatDateTime('HH:mm', FTimeItems[FRow].TimeFrom) + ' - ' + FormatDateTime('HH:mm', FTimeItems[FRow].TimeTo);
    2:
      Value := FTimeItems[FRow].Description;
  end;
end;

procedure TFormMain.TableExTimesItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then
    Exit;
  case Index of
    0:
      DeleteTime(TableExTimes.ItemIndex);
  end;
end;

function TFormMain.DeleteTime(ID: Integer): Boolean;
begin
  Result := False;
  if GetAnswer('Удалить запись о работе?', True) then
  begin
    FTimeItems.Delete(ID);
    Result := True;
  end;
end;

procedure TFormMain.TableExTimesMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
  begin
    if not IndexInList(TableExTimes.ItemUnderMouse, FTimeItems.Count) then
      Exit;
    ShowPopupMenu(PopupMenuTimes);
  end;
end;

procedure TFormMain.TaskNotify(Task: TTaskItem);
begin
  if IndexInList(FNotifyItems.FindByTask(Task.ID), FNotifyItems.Count) then
    Exit;
  FNotifyItems.Add(Task.ID, TFormNotifyTask.Notify(Task));
  FRepeatStates.NotifyComplete(Task.ID, Task.DateDeadline);
end;

procedure TFormMain.TimeOverlayCallBack(Sender: TObject; State: Boolean);
begin
  if not State then
    ButtonFlatTaskEndClick(nil);
end;

procedure TFormMain.TimerRepaintTimer(Sender: TObject);
begin
  DrawPanel.Repaint;
  if FAnimateDo then
  begin
    Inc(FAnimate, 20);
    if FAnimate >= 100 then
    begin
      FAnimate := 100;
      FAnimateDo := False;
    end;
    TableExTasks.Repaint;
  end;
end;

procedure TFormMain.UpdateTaskNowButton;
begin
  ButtonFlatTaskNow.Caption := FormatDateTime('Сегодня: DD mmm, DDD', Now);
end;

procedure TFormMain.UpdateDay;
begin
  FLastDate := DateOf(Now);
  SetCalendarDate(FLastDate);
  CurrentDate := FLastDate;
  UpdateViewMode;
  UpdateTaskNowButton;
end;

procedure TFormMain.TimerTimeTimer(Sender: TObject);
begin
  FCurrentTime := TimeOf(Now);
  FNowTimeMin := GetMins(FCurrentTime);
  DrawGridCalendar.Repaint;
  if FDoTimeSection then
  begin
    ButtonFlatTaskStart.Caption := FormatDateTime('HH:mm:ss', FNewTEnd - FNewTStart);
    FNewTEnd := TimeOf(Now);
  end;
  if FLastDate < DateOf(Now) then
    UpdateDay;
  if FormTimeOverlay.Visible then
    UpdateTimeOverlayData;
end;

procedure TFormMain.TrayIconClick(Sender: TObject);
begin
  ShowForm;
end;

{ TNotifyItems }

function TNotifyItems.Add(TaskID: Integer; Form: TFormNotifyTask): Integer;
var
  Item: TNotifyItem;
begin
  Item.TaskID := TaskID;
  Item.Form := Form;
  Result := Add(Item);
end;

procedure TNotifyItems.Clear;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    if Assigned(Items[i].Form) then
      Items[i].Form.Free;
  inherited;
end;

procedure TNotifyItems.Delete(Index: Integer);
begin
  if Assigned(Items[Index].Form) then
    Items[Index].Form.Free;
  inherited;
end;

function TNotifyItems.FindByForm(Form: TFormNotifyTask): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to Count - 1 do
    if Items[i].Form = Form then
      Exit(i);
end;

function TNotifyItems.FindByTask(TaskID: Integer): Integer;
var
  i: Integer;
begin
  Result := -1;
  for i := 0 to Count - 1 do
    if Items[i].TaskID = TaskID then
      Exit(i);
end;

{ TFontItem }

class function TFontItem.Create(const FontName: string): TFontItem;
begin
  Result.FontName := FontName;
end;

end.


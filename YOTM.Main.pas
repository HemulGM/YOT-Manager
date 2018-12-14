unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB,
  System.ImageList, Vcl.ImgList, HGM.Button, sPanel, Vcl.WinXCalendars,
  Vcl.AppEvnts, Vcl.Menus, YOTM.DB.Comments, YOTM.DB.Labels, YOTM.DB.Tasks,
  YOTM.DB.Times, HGM.Common.Utils, YOTM.DB.LabelTypes, sDialogs, YOTM.DB.Notes, YOTM.Manager;

type
  TTimeSection = record
   TimeS, TimeE:TTime;
  end;

  TCalendarCell = record
   Text:string;
   IsDate:Boolean;
   IsDayOsWeek:Boolean;
   DayOfWeek:Integer;
   Date:TDate;
   /// <summary>
   /// Не выбранный месяц
   /// </summary>
   IsAnotherMonth:Boolean;
  end;

  TCalendarArray = array[0..6, 0..8] of
  record
   Actual:Integer;
   NotActual:Integer;
   Deadlined:Integer;
  end;

  TWorkDays = array[1..7] of Boolean;

  TViewMode = (vmToday, vmSelectedDate, vmDeadlined, vmInbox);

  TSlide = (slTimes, slSettings, slCalendar, slNotes);

  TTimeSections = TList<TTimeSection>;

  TFormMain = class(TForm)
    TimerRepaint: TTimer;
    TimerTime: TTimer;
    PanelTimes: TPanel;
    DrawPanel: TDrawPanel;
    TableExTimes: TTableEx;
    ImageList24: TImageList;
    PanelSettings: TPanel;
    Label1: TLabel;
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
    PanelTaskAdd: TPanel;
    EditNewTaskName: TEdit;
    ButtonFlat9: TButtonFlat;
    PanelTask: TPanel;
    Shape4: TShape;
    TableExComments: TTableEx;
    Panel2: TPanel;
    EditNewComment: TEdit;
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
    Calendar: TCalendarPicker;
    ButtonFlat6: TButtonFlat;
    Label3: TLabel;
    Shape8: TShape;
    EditTaskName: TEdit;
    MemoTaskDesc: TMemo;
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
    ColorDialog: TsColorDialog;
    PopupMenuViewProp: TPopupMenu;
    MenuItemShowEnded: TMenuItem;
    PanelNotes: TPanel;
    PanelLog: TPanel;
    MemoLog: TMemo;
    Shape13: TShape;
    Label4: TLabel;
    Panel5: TPanel;
    ButtonFlat8: TButtonFlat;
    ButtonFlat10: TButtonFlat;
    Panel6: TPanel;
    Shape14: TShape;
    Shape15: TShape;
    Label5: TLabel;
    LabelNoteDate: TLabel;
    LabelNoteModify: TLabel;
    Label8: TLabel;
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
    Shape16: TShape;
    MemoNote: TMemo;
    Shape17: TShape;
    Label2: TLabel;
    ButtonFlatWD1: TButtonFlat;
    Label10: TLabel;
    Label11: TLabel;
    ButtonFlatWD2: TButtonFlat;
    ButtonFlatWD3: TButtonFlat;
    Label12: TLabel;
    Label13: TLabel;
    ButtonFlatWD4: TButtonFlat;
    ButtonFlatWD5: TButtonFlat;
    Label14: TLabel;
    Label15: TLabel;
    ButtonFlatWD6: TButtonFlat;
    ButtonFlatWD7: TButtonFlat;
    Label16: TLabel;
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
    Shape2: TShape;
    Shape3: TShape;
    ButtonFlat3: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlat5: TButtonFlat;
    ButtonFlatMenuView: TButtonFlat;
    ButtonFlatCalendar: TButtonFlat;
    ButtonFlatClose: TButtonFlat;
    ButtonFlatMinimize: TButtonFlat;
    ButtonFlatSettings: TButtonFlat;
    ButtonFlatTimes: TButtonFlat;
    ButtonFlatNotes: TButtonFlat;
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
    procedure TableExTimesItemColClick(Sender: TObject; MouseButton: TMouseButton;
      const Index: Integer);
    procedure TableExTimesDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatSettingsClick(Sender: TObject);
    procedure ButtonFlat7Click(Sender: TObject);
    procedure ButtonFlat6Click(Sender: TObject);
    procedure CalendarCloseUp(Sender: TObject);
    procedure ButtonFlatMinimizeClick(Sender: TObject);
    procedure ButtonFlatTimesClick(Sender: TObject);
    procedure ButtonFlatCalendarClick(Sender: TObject);
    procedure MenuItemTaskStartFromClick(Sender: TObject);
    procedure ButtonFlatAddTimeClick(Sender: TObject);
    procedure TableExTasksEdit(Sender: TObject; var Data: TTableEditStruct;
      ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExTasksEditOk(Sender: TObject; Value: string; ItemValue,
      ACol, ARow: Integer);
    procedure ButtonFlatAddTaskClick(Sender: TObject);
    procedure DrawGridCalendarDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TableExTasksEditCancel(Sender: TObject; ACol, ARow: Integer);
    procedure ButtonFlat9Click(Sender: TObject);
    procedure TableExCommentsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExCommentsEdit(Sender: TObject; var Data: TTableEditStruct;
      ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExCommentsEditOk(Sender: TObject; Value: string; ItemValue,
      ACol, ARow: Integer);
    procedure ButtonFlatTaskCloseClick(Sender: TObject);
    procedure ButtonFlatNewCommentClick(Sender: TObject);
    procedure TableExTasksDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MenuItemOpenLabelsClick(Sender: TObject);
    procedure ButtonFlatMenuViewClick(Sender: TObject);
    procedure ButtonFlatCollapseScaleClick(Sender: TObject);
    procedure TableExTasksKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonFlatTaskStateClick(Sender: TObject);
    procedure ButtonFlatTaskNowClick(Sender: TObject);
    procedure ButtonFlatTaskInboxClick(Sender: TObject);
    procedure ButtonFlatDeadlinedClick(Sender: TObject);
    procedure MenuItemTaskDelClick(Sender: TObject);
    procedure TableExTasksMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CalendarCalendarDrawDayItem(Sender: TObject;
      DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
    procedure TableExTasksItemColClick(Sender: TObject;
      MouseButton: TMouseButton; const Index: Integer);
    procedure MenuItemTaskDelLabelsClick(Sender: TObject);
    procedure MenuItemTaskLabelAddClick(Sender: TObject);
    procedure PopupMenuTaskPopup(Sender: TObject);
    procedure ButtonFlatDANCloseClick(Sender: TObject);
    procedure ButtonFlatTaskDANClick(Sender: TObject);
    procedure TableExTasksChangeItem(Sender: TObject; const Old: Integer;
      var New: Integer);
    procedure ButtonFlatTaskColorCloseClick(Sender: TObject);
    procedure ButtonFlatTaskColorClick(Sender: TObject);
    procedure MenuItemShowEndedClick(Sender: TObject);
    procedure ButtonFlatViewModeClick(Sender: TObject);
    procedure ButtonFlatNotesClick(Sender: TObject);
    procedure ButtonFlat8Click(Sender: TObject);
    procedure ButtonFlat10Click(Sender: TObject);
    procedure ButtonFlat11Click(Sender: TObject);
    procedure MemoTaskDescExit(Sender: TObject);
    procedure ButtonFlatWD1Click(Sender: TObject);
    procedure MenuItemCommentDelClick(Sender: TObject);
    procedure TableExCommentsMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TableExTimesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuItemTimeDeleteClick(Sender: TObject);
    procedure TrayIconClick(Sender: TObject);
    procedure DrawGridCalendarSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DrawGridCalendarMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DrawGridCalendarMouseWheelDown(Sender: TObject;
      Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DrawGridCalendarMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure DrawGridCalendarMouseEnter(Sender: TObject);
    procedure DrawGridCalendarMouseLeave(Sender: TObject);
    procedure EditNewTaskNameKeyPress(Sender: TObject; var Key: Char);
    procedure CalendarChange(Sender: TObject);
    procedure ButtonFlatCurrentDateClick(Sender: TObject);
  private
    FromHH, FromMM, ToHH, ToMM:Word;
    FLastDate:TDate;             //Реальная дата (без времени)
    FPanelMouse:TPoint;          //Позиция мыши на панели
    FWorkTimeMin:Integer;        //Кол-во минут между началом и концом раб. дня
    FNowTimeMin:Integer;         //Кол-во минут текущего времени например, если сейчас 02:05, то здесь будет 125 минут
    ScaleRect:TRect;             //Реальные размеры шкалы
    FPanelMouseDown:Boolean;     //Мышь нажата на шкале
    FPanelMouseDownPos:TPoint;   //Позиция нажатия мыши на шкалу
    FRangeFrom:TTime;            //Начало ВЫБОРА времени на шкале
    FRangeTo:TTime;              //Конец ВЫБОРА времени на шкале
    FTimeItems:TTimeItems;       //Работы над задачами
    FTaskItems:TTaskItems;       //Задачи
    FTasksOfCalendar:TTaskItems; //Список задач в календаре
    FLabelTypes:TLabelTypes;
    FLabelItems:TLabelItems;
    FComments:TCommentItems;     //Комментарии к задаче
    FNote:TNoteItem;             //Запись на день
    FTaskID:Integer;             //Открытая задача
    FCurrentDate: TDate;         //Выбранная пользователем дата
    FDoTimeSection:Boolean;      //Идёт работа над задачей
    FNewTStartDate:TDateTime;
    FNewTStart:TTime;            //Время начала работы над задачей
    FNewTEnd:TTime;              //Время окончания работы над задачей
    FNewTEndDate:TDateTime;
    FNewTTask:Integer;
    FNewTColor:TColor;
    FNewTName:string;
    FTimeItemUnderCursor:Integer;//Элемент отрезка времени под курсором
    FCurrentTime:TTime;          //Текущее время (без даты)
    SelTime:TTime;               //Выбранное время на шкале
    CalendarMouseInside:Boolean;
    CalendarMouseCoord:TPoint;
    FCalendarArray:TCalendarArray;
    VisNow:TControl;
    VisNeed:TControl;
    FMonthOffset:Integer;
    FViewMode: TViewMode;
    FTimeManager: TManager;
    FWorkDays: TWorkDays;
    procedure SetCurrentDate(const Value: TDate);
    procedure SlideTo(Slide: TSlide);
    function StartTask(TimeStart: TTime): Boolean;
    function AddTaskTime(ADate, ADateEnd: TDate; TStart, TEnd:TTime; ATaskID:Integer; AColor:TColor): Boolean;
    procedure UpdateCalendar;
    function GetCellInfo(ACol, ARow: Integer; var Info:TCalendarCell): string;
    function DaysThisMonth: Integer;
    procedure HideTask;
    procedure ShowTask(TaskID: Integer);
    procedure UpdateTaskPanel(TaskID: Integer = -1);
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure UpdateCounts;
    function DeleteTask(ID: Integer): Boolean;
    procedure MenuItemTaskLabelClick(Sender: TObject);
    procedure MenuItemTaskLabelReset(Sender: TObject);
    procedure SetButtonWCaption(Target, CloseButton:TButtonFlat; Panel:TPanel; ACaption:string; ACloseBotton:Boolean);
    procedure UpdateTaskNowButton;
    procedure SetViewMode(const Value: TViewMode);
    procedure UpdateDay;
    procedure UpdateViewModeParam;
    procedure DoLog(Text: string);
    procedure SaveNote;
    procedure LoadNote(Date:TDate);
    procedure NoteInfo;
    procedure UpdateTime;
    function GetTimeFrom: TTime;
    function GetTimeTo: TTime;
    procedure SetTimeFrom(const Value: TTime);
    procedure SetTimeTo(const Value: TTime);
    procedure WorkDayStarted(Sender:TObject);
    procedure TaskNotify(Task:TTaskItem);
    procedure SetTimeManager(const Value: TManager);
    procedure SetWorkDays(Days:TWorkDays);
    function DeleteComment(ID: Integer):Boolean;
    function DeleteTime(ID: Integer): Boolean;
    function GetCurrentTask: TTaskItem;
    function GetTaskSelected: Boolean;
    procedure WMSysCommand(var Message: TWMSysCommand); message WM_SysCommand;
    procedure OpenTimeOverlay;
    procedure UpdateTimeOverlayData;
    procedure TimeOverlayCallBack(Sender:TObject; State:Boolean);
    function AddTask(Name:string = ''; Date:TDateTime = 0): TTaskItem;
    procedure OnChangeItems;
    procedure ReloadCalendarData;
    function GetDayCompletePercent: Integer;
  public
    procedure Initializate;
    procedure SetTaskComplete(TaskID:Integer);
    property CurrentDate:TDate read FCurrentDate write SetCurrentDate;
    property ViewMode:TViewMode read FViewMode write SetViewMode;
    property WorkDayStart:TTime read GetTimeFrom write SetTimeFrom;
    property WorkDayEnd:TTime read GetTimeTo write SetTimeTo;
    property TimeManager:TManager read FTimeManager write SetTimeManager;
    property WorkDays:TWorkDays read FWorkDays write SetWorkDays;

    property CurrentTask:TTaskItem read GetCurrentTask;
    property TaskSelected:Boolean read GetTaskSelected;
    property TaskItems:TTaskItems read FTaskItems;
  end;

const
  StartOfWeek = 1; //пн
  GlobalAnimateEnable = False;

var
  FormMain: TFormMain;
  AccentColor:TColor = $00B86B00;
  FWndFrameSize:Integer;

  function GetMins(Time:TTime):Integer;
  function GetTime(Mins:Integer):TTime;
  procedure ShowPopupMenu(Menu:TPopupMenu);
  procedure SetButtonCheck(Button:TButtonFlat; Value:Boolean);

implementation
 uses Math, YOTM.Form.EditTime, DateUtils, YOTM.Form.Dialog,
   YOTM.Form.SelectLabels, Winapi.CommCtrl, YOTM.Form.DateNotify, YOTM.Form.OverlayTime,
   YOTM.Form.Notify.Task, HGM.Common.DateUtils, Winapi.Dwmapi;

{$R *.dfm}

procedure SetButtonCheck(Button:TButtonFlat; Value:Boolean);
begin
 if Value then Button.ImageIndex:=18
 else Button.ImageIndex:=19;
end;

procedure TFormMain.WMSysCommand(var Message: TWMSysCommand);
begin
 Case Message. CmdType of
  SC_CLOSE:    Application.Terminate;
  SC_MINIMIZE: ShowWindow(Handle, SW_HIDE);
  SC_MAXIMIZE: ShowWindow(Handle, SW_MAXIMIZE);
  SC_RESTORE:  ShowWindow(Handle, SW_RESTORE);
 else
  inherited;
 end;
end;

procedure ShowPopupMenu(Menu:TPopupMenu);
var Pt:TPoint;
begin
 Pt:=Mouse.CursorPos;
 Menu.Popup(Pt.X, Pt.Y);
end;

procedure AnimateControlLeft(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 if GlobalAnimateEnable then
  begin
   delta:=(ToValue - TargetObject.Left) div HaveTime;
   for i:= 1 to HaveTime do
    begin
     TargetObject.Left:=TargetObject.Left + delta;
     Application.ProcessMessages;
    end;
  end;
 TargetObject.Left:=ToValue;
end;

procedure AnimateControlHeight(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 if GlobalAnimateEnable then
  begin
   delta:=(ToValue - TargetObject.Height) div HaveTime;
   for i:= 1 to HaveTime do
    begin
     TargetObject.Height:=TargetObject.Height + delta;
     Application.ProcessMessages;
    end;
  end;
 TargetObject.Height:=ToValue;
end;

procedure AnimateControlTop(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 if GlobalAnimateEnable then
  begin
   delta:=(ToValue - TargetObject.Top) div HaveTime;
   for i:= 1 to HaveTime do
    begin
     TargetObject.Top:=TargetObject.Top + delta;
     Application.ProcessMessages;
    end;
  end;
 TargetObject.Top:=ToValue;
end;

procedure AnimateControlTopLeft(TargetObject:TControl; HaveTime:Cardinal; ToValueL, ToValueT:Integer);
var i, deltaT, deltaL:Integer;
begin
 if GlobalAnimateEnable then
  begin
   deltaT:=(ToValueT - TargetObject.Top) div HaveTime;
   deltaL:=(ToValueL - TargetObject.Left) div HaveTime;
   for i:= 1 to HaveTime do
    begin
     TargetObject.Top:=TargetObject.Top + deltaT;
     TargetObject.Left:=TargetObject.Left + deltaL;
     TargetObject.Repaint;
     Application.ProcessMessages;
    end;
  end;
 TargetObject.Top:=ToValueT;
 TargetObject.Left:=ToValueL;
end;

function GetMins(Time:TTime):Integer;
var H, M, S, MSec:Word;
begin
 DecodeTime(Time, H, M, S, MSec);
 Result:=H*60 + M;
end;

function GetTime(Mins:Integer):TTime;
var H, M:Word;
begin
 H:=Mins div 60;
 M:=Mins mod 60;
 Result:=EncodeTime(H, M, 0, 0);
end;

function DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 2) and IsLeapYear(AYear) then Inc(Result); { leap-year Feb is special }
end;

function GetDateElement(Dt:TDate; Index: Integer): Integer;
var
  AYear, AMonth, ADay: Word;
begin
  DecodeDate(Dt, AYear, AMonth, ADay);
  case Index of
    1: Result := AYear;
    2: Result := AMonth;
    3: Result := ADay;
    else Result := -1;
  end;
end;

procedure TFormMain.ReloadCalendarData;
var   Cell:TCalendarCell;
      i, j: Integer;
      FirstDate: TDateTime;
      NotCompleted:Integer;
begin
 GetCellInfo(0, 1, Cell);
 FirstDate:=Cell.Date;
 GetCellInfo(DrawGridCalendar.ColCount-1, DrawGridCalendar.RowCount - 1, Cell);
 FTasksOfCalendar.TaskFilter:=tkfDated;
 FTasksOfCalendar.ShowEndedTask:=FTaskItems.ShowEndedTask;
 FTasksOfCalendar.UseDatePeriod:=True;
 FTasksOfCalendar.DatePeriod:=TDatePeriod.Create(FirstDate, Cell.Date);
 FTasksOfCalendar.Reload;
 NotCompleted:=0;
 for i:= 0 to FTasksOfCalendar.Count-1 do
  if (not FTasksOfCalendar[i].State) and (FTasksOfCalendar[i].Deadline) and (DateOf(FTasksOfCalendar[i].DateDeadline) < DateOf(Now))
  then Inc(NotCompleted);

 for i:= 1 to DrawGridCalendar.RowCount-1 do
  for j:= 0 to DrawGridCalendar.ColCount-1 do
   begin
    GetCellInfo(j, i, Cell);
    //FCalendarArray[j, i].Actual:=
    FTasksOfCalendar.ListCount(Cell.Date, FCalendarArray[j, i].Actual, FCalendarArray[j, i].NotActual, FCalendarArray[j, i].Deadlined);
   end;
 ButtonFlatCalendar.NotifyVisible:=NotCompleted > 0;
 FTasksOfCalendar.Clear;
 DrawGridCalendar.Repaint;
end;

procedure TFormMain.UpdateCalendar;
var AYear, AMonth, ADay: Word;
    FirstDate: TDateTime;
begin
 DecodeDate(CurrentDate, AYear, AMonth, ADay);
 FirstDate:=EncodeDate(AYear, AMonth, 1);
 FMonthOffset:=2 - ((DayOfWeek(FirstDate) - StartOfWeek + 7) mod 7);
 DrawGridCalendar.RowHeights[0]:=PanelTaskEdit.Height+ShapeBorder.Height;
 DrawGridCalendar.DefaultColWidth:=DrawGridCalendar.ClientWidth div DrawGridCalendar.ColCount;
 DrawGridCalendar.ColWidths[DrawGridCalendar.ColCount-1]:=DrawGridCalendar.DefaultColWidth + DrawGridCalendar.ClientWidth mod DrawGridCalendar.ColCount;
 ReloadCalendarData;
end;

function TFormMain.DaysThisMonth: Integer;
begin
  Result := DaysPerMonth(GetDateElement(CurrentDate, 1), GetDateElement(CurrentDate, 2));
end;

function SetDay(Date:TDateTime; Day:Byte):TDateTime;
var Y, M, D, HH, MM, SS, MS:Word;
begin
 DecodeDateTime(Date, Y, M, D, HH, MM, SS, MS);
 Result:=EncodeDateTime(Y, M, Day, HH, MM, SS, MS);
end;

function TFormMain.GetCellInfo(ACol, ARow: Integer; var Info:TCalendarCell): string;
var DayNum:Integer;
    Dt:TDate;
begin
 if ARow = 0 then
  begin
   Info.Date:=0;
   Info.IsDate:=False;
   Info.IsDayOsWeek:=True;
   Info.DayOfWeek:=(StartOfWeek + ACol) mod 7 + 1;
   Info.IsAnotherMonth:=False;
   Info.Text:=FormatSettings.ShortDayNames[(StartOfWeek + ACol) mod 7 + 1];
  end
 else
  begin
   Info.IsDayOsWeek:=False;
   Info.Date:=0;
   Info.IsDate:=True;
   Info.DayOfWeek:=(StartOfWeek + ACol) mod 7 + 1;
   DayNum:=FMonthOffset + ACol + (ARow - 2) * 7;
   Info.IsAnotherMonth:=False;
   if (DayNum < 1) or (DayNum > DaysThisMonth) then
    begin
     Info.IsAnotherMonth:=True;
     Info.Text:='';
     Dt:=CurrentDate;
     if (DayNum < 1) then
      begin
       Dt:=SetDay(CurrentDate, 1) + (DayNum - 1);
       Info.Text:=IntToStr(MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)] + DayNum);
      end
     else
      begin
       Dt:=SetDay(Dt, MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)]) + (DayNum - MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)]);
       Info.Text:=IntToStr(DayNum - DaysThisMonth);
      end;
     Info.Date:=Dt;
    end
   else
    begin
     Dt:=SetDay(CurrentDate, DayNum);
     Info.Date:=Dt;
     Info.Text:=IntToStr(DayNum);
    end;
  end;
 Result:=Info.Text;
end;

function TFormMain.GetCurrentTask: TTaskItem;
begin
 if IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then
  Result:=FTaskItems[TableExTasks.ItemIndex]
 else
  begin
   Result:=TTaskItem.Create(FTaskItems);
   Result.ID:=-1;
   Result.Color:=clNone;
   Result.Name:='Новая задача';
  end;
end;

function TFormMain.GetDayCompletePercent:Integer;
begin
 Result:=Round((FNowTimeMin - GetMins(WorkDayStart)) /  (FWorkTimeMin / 100));
end;

procedure TFormMain.DrawGridCalendarDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var Cell:TCalendarCell;
    txt:string;
    tmp:TRect;
begin
 GetCellInfo(ACol, ARow, Cell);
 with Rect, DrawGridCalendar.Canvas do
  begin
   if Cell.IsDate then
    begin
     if Cell.IsAnotherMonth then
      Brush.Color:=$00383838//Color;
     else Brush.Color:=$002E2E2E;
    end
   else
    begin
     Brush.Color:=$00383838;
    end;
   if Cell.IsDate and CalendarMouseInside and (Point(ACol, ARow) = CalendarMouseCoord) then
    Brush.Color:=ColorDarker(Brush.Color, 40);

   if SameDate(Cell.Date, CurrentDate) then
    Brush.Color:=ColorDarker(AccentColor);
   Brush.Style:=bsSolid;
   FillRect(Rect);
   if Cell.IsDayOsWeek then
    begin
     Brush.Color:=$002E2E2E;
     tmp:=System.Classes.Rect(Rect.Left, Rect.Bottom - ShapeBorder.Height, Rect.Right, Rect.Bottom);
     FillRect(tmp);
    end;

   if IsToday(Cell.Date) then
    begin
     Brush.Style:=bsClear;
     Pen.Color:=AccentColor;
     Rectangle(Rect);
     Brush.Style:=bsSolid;
     Brush.Color:=AccentColor;
     tmp:=Rect;
     tmp.Inflate(-1, -1);
     tmp.Width:=Round(tmp.Width / 100 * GetDayCompletePercent);
     FillRect(tmp);
    end;

   Brush.Style:=bsClear;
   Font.Color:=$00F2F2F2;
   Font.Size:=15;
   TextRect(Rect, Left + (Right - Left - TextWidth(Cell.Text)) div 2,
                   Top + (Bottom - Top - TextHeight(Cell.Text)) div 2, Cell.Text);
   if Cell.Text = '1' then
    begin
     Font.Size:=8;
     txt:=FormatDateTime('mmm', Cell.Date);
     TextRect(Rect, Left + (Right - Left - TextWidth(txt)) div 2,
                   Top + 2, txt);
    end;
   if FCalendarArray[ACol, ARow].Deadlined > 0 then
    begin
     ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 2, True);
    end
   else
   if FCalendarArray[ACol, ARow].Actual > 0 then
    begin
     ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 1, True);
    end
   else
   if FCalendarArray[ACol, ARow].NotActual > 0 then
    begin
     ImageListCalendar.Draw(DrawGridCalendar.Canvas, Rect.Left + 2, Rect.Top + 2, 0, True);
    end;
  end;
end;

procedure TFormMain.DrawGridCalendarMouseEnter(Sender: TObject);
begin
 CalendarMouseInside:=True;
end;

procedure TFormMain.DrawGridCalendarMouseLeave(Sender: TObject);
begin
 CalendarMouseInside:=False;
end;

procedure TFormMain.DrawGridCalendarMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var Cell:TCalendarCell;
    C, R:Integer;
begin
 DrawGridCalendar.MouseToCell(X, Y, C, R);
 if CalendarMouseInside then
  begin
   CalendarMouseCoord:=Point(C, R);
   DrawGridCalendar.Repaint;
  end;
 GetCellInfo(C, R, Cell);
 if DrawGridCalendar.Hint <> DateToStr(Cell.Date) then
  begin
   Application.CancelHint;
   DrawGridCalendar.Hint:=DateToStr(Cell.Date);
  end
 else
  begin
   DrawGridCalendar.Hint:=DateToStr(Cell.Date);
  end;
end;

procedure TFormMain.DrawGridCalendarMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TFormMain.DrawGridCalendarMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 Handled:=True;
end;

procedure TFormMain.DrawGridCalendarSelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
var Cell:TCalendarCell;
begin
 GetCellInfo(ACol, ARow, Cell);
 if Cell.IsDate then
  begin
   Calendar.Date:=Cell.Date;
   ViewMode:=vmSelectedDate;
  end;
end;

procedure TFormMain.DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouseDownPos:=Point(X, Y);
 case Button of
  TMouseButton.mbLeft:
   begin
    FPanelMouseDown:=ScaleRect.Contains(FPanelMouse);
   end;
 end;
end;

procedure TFormMain.DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouse:=Point(X, Y);
 if ScaleRect.Contains(FPanelMouse) then DrawPanel.Cursor:=crHandPoint
 else DrawPanel.Cursor:=crDefault;
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
          TableExTimes.ItemIndex:=FTimeItemUnderCursor;
        end
       else
        begin
         AddTaskTime(CurrentDate, CurrentDate, FRangeFrom, FRangeTo, CurrentTask.ID, CurrentTask.Color);
        end;
       FPanelMouseDown:=False;
       FPanelMouseDownPos:=Point(-1, -1);
      end;
   end;
  TMouseButton.mbRight:
   begin
    ShowPopupMenu(PopupMenuTaskStart);
   end;
 end;
end;

procedure TFormMain.DrawPanelPaint(Sender: TObject);
var CRect, tmpRect, txtRect:TRect;
    MPos, H, M, i, LastLeft, LastTextWidth, MinSelTextLeft:Integer;
    MProc:Double;
    KeepTime:TTime;
    SelAmount:TTime;
begin
 CRect:=DrawPanel.ClientRect;
 with TDirect2DCanvas.Create(DrawPanel.Canvas, DrawPanel.ClientRect) do
  begin
   BeginDraw;
   try
    Brush.Color:=DrawPanel.Color;//$0043B6E3;
    FillRect(CRect);
    Font.Color:=$00F2F2F2;
    //--------------------------------------
    ScaleRect.Left:=20;
    ScaleRect.Right:=CRect.Right - 20;
    ScaleRect.Bottom:=CRect.Bottom - 50;
    ScaleRect.Top:=ScaleRect.Bottom - 20;
    //if ScaleRect.Contains(FPanelMouse) then Brush.Color:=$0019A0E3 else
    Brush.Color:=$0016597D;
    Pen.Color:=Brush.Color;
    RoundRect(ScaleRect, ScaleRect.Height, ScaleRect.Height);

    Brush.Style:=bsClear;
    TextOut(ScaleRect.Left - 15, ScaleRect.Top - 20, FormatDateTime('HH:mm', WorkDayStart));
    TextOut(ScaleRect.Right - 15, ScaleRect.Top - 20, FormatDateTime('HH:mm', WorkDayEnd));

    tmpRect:=ScaleRect;
    tmpRect.Right:=tmpRect.Left +  Round(ScaleRect.Width / 100 * GetDayCompletePercent);
    tmpRect.Right:=Min(tmpRect.Right, ScaleRect.Right);
    Brush.Style:=bsSolid;
    Brush.Color:=$003C86AB;
    tmpRect.Width:=Max(tmpRect.Width, tmpRect.Height);
    RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
    Brush.Style:=bsClear;
    TextOut(tmpRect.Right - 15, tmpRect.Bottom + 5, FormatDateTime('HH:mm', FCurrentTime));
    //Временные отрезки
    LastLeft:=-1;
    FTimeItemUnderCursor:=-1;
    Font.Color:=$003A3A3A;
    for i:= 0 to FTimeItems.Count-1 do
     begin
      if i <> TableExTimes.ItemIndex then
       Brush.Color:=$0019A0E3
      else Brush.Color:=$0046E3CC;
      tmpRect:=ScaleRect;
      tmpRect.Left:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FTimeItems[i].TimeFrom) - GetMins(WorkDayStart)) /  (FWorkTimeMin / 100)));
      tmpRect.Right:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FTimeItems[i].TimeTo) - GetMins(WorkDayStart)) /  (FWorkTimeMin / 100)));
      tmpRect.Inflate(0, -3);
      if tmpRect.Left <= ScaleRect.Left+3 then tmpRect.Left:=ScaleRect.Left+3;
      if tmpRect.Right >= ScaleRect.Right-3 then tmpRect.Right:=ScaleRect.Right-3;
      tmpRect.Left:=Max(Min(tmpRect.Left, ScaleRect.Right), ScaleRect.Left);
      tmpRect.Right:=Max(Min(tmpRect.Right, ScaleRect.Right), ScaleRect.Left);
      Brush.Style:=bsSolid;
      RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
      if tmpRect.Contains(FPanelMouse) then
       begin
        FTimeItemUnderCursor:=i;
        if LastLeft = -1 then LastLeft:=5
        else LastLeft:=LastLeft + LastTextWidth;
        LastTextWidth:=TextWidth(FTimeItems[i].Description) + 10;
        txtRect:=Rect(LastLeft, ScaleRect.Bottom + 20, LastLeft + LastTextWidth, ScaleRect.Bottom + 20 + 20);
        RoundRect(txtRect, txtRect.Height, txtRect.Height);
        Brush.Style:=bsClear;
        TextOut(LastLeft+5, tmpRect.Bottom + 5 + 21, FTimeItems[i].Description);
       end;
     end;
    //Текущая задача
    if FDoTimeSection then
     begin
      Brush.Color:=$0055E5FE;
      tmpRect:=ScaleRect;
      tmpRect.Left:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FNewTStart) - GetMins(WorkDayStart)) /  (FWorkTimeMin / 100)));
      tmpRect.Right:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FNewTEnd) - GetMins(WorkDayStart)) /  (FWorkTimeMin / 100)));
      tmpRect.Inflate(0, -3);
      if tmpRect.Left <= ScaleRect.Left+3 then tmpRect.Left:=ScaleRect.Left+3;
      if tmpRect.Right >= ScaleRect.Right-3 then tmpRect.Right:=ScaleRect.Right-3;

      Brush.Style:=bsSolid;
      RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
     end;
    //Текущий выбор
    tmpRect:=ScaleRect;
    tmpRect.Inflate(5, 5);
    if tmpRect.Contains(FPanelMouse) or FPanelMouseDown then
     begin
      MPos:=Min(Max(FPanelMouse.X, ScaleRect.Left), ScaleRect.Right);
      MoveTo(MPos, ScaleRect.Top);
      LineTo(MPos, ScaleRect.Top - 20);

      Brush.Color:=$0019A0E3;
      tmpRect:=ScaleRect;
      if not FPanelMouseDown then
       begin
        tmpRect.Left:=Min(Max(tmpRect.Left, MPos - tmpRect.Height div 2), tmpRect.Right - tmpRect.Height);
        tmpRect.Right:=Max(Min(tmpRect.Right, tmpRect.Left + tmpRect.Height), tmpRect.Left);
        Brush.Style:=bsSolid;
        //RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
       end
      else
       begin
        tmpRect.Left:=FPanelMouseDownPos.X;
        tmpRect.Left:=Min(Max(ScaleRect.Left, tmpRect.Left), ScaleRect.Right - tmpRect.Height);
        tmpRect.Right:={Max(}Min(tmpRect.Right, MPos);//, tmpRect.Left);
        tmpRect.NormalizeRect;
        tmpRect.Height:=Max(1, Min(tmpRect.Width, ScaleRect.Height));
        tmpRect.Offset(0, ScaleRect.Height div 2 - tmpRect.Height div 2);
        Brush.Style:=bsSolid;
        RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
       end;


      MProc:=MPos - ScaleRect.Left;
      MProc:=MProc / (ScaleRect.Width / 100);
      MProc:=MProc * (FWorkTimeMin / 100); //Минуты

      H:=Ceil(MProc) div 60;
      M:=Trunc(Ceil(MProc) mod 60 / 5) * 5;
      Brush.Style:=bsClear;
      SelTime:=GetTime(GetMins(WorkDayStart) + (H * 60 + M));
      Font.Color:=$00F2F2F2;
      MinSelTextLeft:=Min(Max(MPos - 160 div 2, ScaleRect.Left - 15), CRect.Right - 160);
      TextOut(MinSelTextLeft, ScaleRect.Top - 40, FormatDateTime('HH:mm - от начала дня', GetTime(H * 60 + M)));
      TextOut(MinSelTextLeft, ScaleRect.Top - 60, FormatDateTime('HH:mm - указано', SelTime));
      TextOut(MinSelTextLeft, ScaleRect.Top - 80, FormatDateTime('HH:mm - разница с текущим', GetTime(Abs(GetMins(FCurrentTime) - (H * 60 + M) - GetMins(WorkDayStart)))));
      //Диапазон выбора
      MProc:=FPanelMouseDownPos.X - ScaleRect.Left;
      MProc:=MProc / (ScaleRect.Width / 100);
      MProc:=MProc * (FWorkTimeMin / 100); //Минуты

      H:=Ceil(MProc) div 60;
      M:=Trunc(Ceil(MProc) mod 60 / 5) * 5;
      KeepTime:=GetTime(GetMins(WorkDayStart) + (H * 60 + M));
      FRangeFrom:=KeepTime;
      FRangeTo:=SelTime;
      if GetMins(KeepTime) > GetMins(SelTime) then
       begin
        KeepTime:=SelTime;
        SelTime:=FRangeFrom;

        FRangeFrom:=KeepTime;
        FRangeTo:=SelTime;
       end;
      if FPanelMouseDown then
       begin
        SelAmount:=GetTime(Abs(GetMins(FRangeTo)-GetMins(FRangeFrom)));
        TextOut(MinSelTextLeft, ScaleRect.Top - 100, FormatDateTime('HH:mm - ', FRangeFrom)+FormatDateTime('HH:mm - выбрано ', FRangeTo)+FormatDateTime('(HH:mm)', SelAmount));
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

procedure TFormMain.EditNewTaskNameKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key:=#0;
   ButtonFlatAddTaskClick(nil);
  end;
end;

procedure TFormMain.ButtonFlatCalendarClick(Sender: TObject);
begin
 SlideTo(slCalendar);
end;

procedure TFormMain.ButtonFlatCloseClick(Sender: TObject);
begin
 Close;
end;

function TFormMain.AddTaskTime(ADate, ADateEnd:TDate; TStart, TEnd:TTime; ATaskID:Integer; AColor:TColor):Boolean;
var Item:TTimeItem;
    EditTime:TFormEditTime;
begin
 EditTime:=TFormEditTime.Create(nil);
 try
  EditTime.EditText.Text:='';
  EditTime.TimeFrom:=TStart;
  EditTime.TimeTo:=TEnd;
  EditTime.Position:=poMainFormCenter;
  EditTime.TaskID:=ATaskID;
  if EditTime.ShowModal = mrOK then
   begin
    ATaskID:=EditTime.TaskID;
    Item:=TTimeItem.Create(FTimeItems);
    with Item do
     begin
      Task:=ATaskID;
      Color:=AColor;
      Date:=DateOf(ADate);
      DateEnd:=DateOf(ADateEnd);
      Description:=EditTime.EditText.Text;
      TimeFrom:=EditTime.TimeFrom;
      TimeTo:=EditTime.TimeTo;
      FTimeItems.Insert(0, Item);
      FTimeItems.Update(0);
     end;
   end;
 finally
  EditTime.Free;
 end;
end;

procedure TFormMain.ButtonFlatTaskColorClick(Sender: TObject);
var Data:TDateNotifyData;
    Task:TTaskItem;
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 Task:=FTaskItems[FTaskID];
 ColorDialog.Color:=Task.Color;
 if ColorDialog.Execute then
  begin
   Task.Color:=ColorDialog.Color;
   FTaskItems.Update(FTaskItems[FTaskID]);
   UpdateTaskPanel(FTaskID);
  end;
end;

procedure TFormMain.ButtonFlatTaskColorCloseClick(Sender: TObject);
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 FTaskItems[FTaskID].Color:=clNone;
 FTaskItems.Update(FTaskItems[FTaskID]);
 UpdateTaskPanel(FTaskID);
end;

procedure TFormMain.ButtonFlatTaskDANClick(Sender: TObject);
var Data:TDateNotifyData;
    Task:TTaskItem;
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 Task:=FTaskItems[FTaskID];
 Data.SelectDate:=Task.DateDeadline;
 Data.SelectedDate:=Task.Deadline;
 Data.SelectTime:=Task.TimeNotify;
 Data.SelectedTime:=Task.Notify;
 Data.SelectRepeat:=Task.TaskRepeatData;
 Data.SelectRepeatType:=Task.TaskType;
 if TFormDateAndNotify.Select(Data) then
  begin
   Task.DateDeadline:=Data.SelectDate;
   Task.Deadline:=Data.SelectedDate;
   Task.TimeNotify:=Data.SelectTime;
   Task.Notify:=Data.SelectedTime;
   Task.TaskRepeatData:=Data.SelectRepeat;
   Task.TaskType:=Data.SelectRepeatType;
   FTaskItems.Update(FTaskItems[FTaskID]);
   UpdateTaskPanel(FTaskID);
   ViewMode:=ViewMode;
  end;
end;

procedure TFormMain.ButtonFlatTaskEndClick(Sender: TObject);
begin
 if FDoTimeSection then
  begin
   ButtonFlatTaskStart.Caption:='Начать';
   FDoTimeSection:=False;
   FNewTEnd:=TimeOf(Now);
   FNewTEndDate:=DateOf(Now);
   FPanelMouseDown:=False;
   FPanelMouseDownPos:=Point(-1, -1);
   if FNewTStartDate = FNewTEndDate then
    if Abs(GetMins(FNewTStart) - GetMins(FNewTEnd)) < 1 then Exit;
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

function TFormMain.StartTask(TimeStart:TTime):Boolean;
begin
 Result:=False;
 if FDoTimeSection then Exit;
 FNewTStartDate:=DateOf(TimeStart);
 FNewTStart:=TimeOf(TimeStart);
 FNewTEnd:=FNewTStart;
 FNewTEndDate:=FNewTStartDate;
 FNewTTask:=CurrentTask.ID;
 FNewTColor:=CurrentTask.Color;
 FNewTName:=CurrentTask.Name;
 FDoTimeSection:=True;
 OpenTimeOverlay;
 Result:=True;
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
 FWorkDays[(Sender as TButtonFlat).Tag]:=not FWorkDays[(Sender as TButtonFlat).Tag];
 WorkDays:=FWorkDays;
end;

procedure TFormMain.ButtonFlatTaskNowClick(Sender: TObject);
begin
 ViewMode:=vmToday;
end;

procedure TFormMain.ButtonFlatTaskCloseClick(Sender: TObject);
begin
 TableExTasks.ItemIndex:=-1;
 HideTask;
end;

procedure TFormMain.ButtonFlatTaskInboxClick(Sender: TObject);
begin
 ViewMode:=vmInbox;
end;

procedure TFormMain.ButtonFlatTaskStateClick(Sender: TObject);
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 FTaskItems[FTaskID].State:= not FTaskItems[FTaskID].State;
 FTaskItems.Update(FTaskItems[FTaskID]);
 UpdateTaskPanel(FTaskID);
end;

procedure TFormMain.ButtonFlat10Click(Sender: TObject);
begin
 LoadNote(CurrentDate);
end;

procedure TFormMain.ButtonFlat11Click(Sender: TObject);
begin
 case (Sender as TButtonFlat).Tag of
  10: FromHH:=Min(Max(0, FromHH - 1), 23);
  11: FromHH:=Min(Max(0, FromHH + 1), 23);
  20: FromMM:=Min(Max(0, FromMM - 1), 59);
  21: FromMM:=Min(Max(0, FromMM + 1), 59);
  30:   ToHH:=Min(Max(0,   ToHH - 1), 23);
  31:   ToHH:=Min(Max(0,   ToHH + 1), 23);
  40:   ToMM:=Min(Max(0,   ToMM - 1), 59);
  41:   ToMM:=Min(Max(0,   ToMM + 1), 59);
 end;
 UpdateTime;
end;

function TFormMain.GetTaskSelected: Boolean;
begin
 Result:=Assigned(CurrentTask) and (CurrentTask.ID >= 0);
end;

function TFormMain.GetTimeFrom: TTime;
begin
 Result:=EncodeTime(FromHH, FromMM, 0, 0);
end;

function TFormMain.GetTimeTo: TTime;
begin
 Result:=EncodeTime(ToHH, ToMM, 0, 0);
end;

procedure TFormMain.SetTaskComplete(TaskID: Integer);
var i:Integer;
    Task:TTaskItem;
begin
 for i:= 0 to FTaskItems.Count-1 do
  if FTaskItems[i].ID = TaskID then
   begin
    FTaskItems[i].State:=True;
    FTaskItems.Update(FTaskItems[i]);
    TableExTasks.Repaint;
    Exit;
   end;
 Task:=FTaskItems.GetItem(TaskID);
 if Assigned(Task) then
  begin
   Task.State:=True;
   FTaskItems.Update(Task);
  end;
end;

procedure TFormMain.SetTimeFrom(const Value: TTime);
var S, M:Word;
begin
 DecodeTime(Value, FromHH, FromMM, S, M);
 UpdateTime;
end;

procedure TFormMain.SetTimeManager(const Value: TManager);
begin
 FTimeManager := Value;
end;

procedure TFormMain.SetTimeTo(const Value: TTime);
var S, M:Word;
begin
 DecodeTime(Value, ToHH, ToMM, S, M);
 UpdateTime;
end;

procedure TFormMain.UpdateTime;
var tmp:TTime;
begin
 if (WorkDayEnd < WorkDayStart) or (WorkDayStart > WorkDayEnd) then
  begin
   tmp:=WorkDayEnd;
   WorkDayEnd:=WorkDayStart;
   WorkDayStart:=tmp;
  end;
 if WorkDayEnd = WorkDayStart then WorkDayEnd:=WorkDayStart+1/24/60;

 FWorkTimeMin:=Max(1, GetMins(WorkDayEnd) - GetMins(WorkDayStart));

 ButtonFlatTimeFromHH.Caption:=FormatDateTime('HH', WorkDayStart);
 ButtonFlatTimeFromMM.Caption:=FormatDateTime('nn', WorkDayStart);

 ButtonFlatTimeToHH.Caption:=FormatDateTime('HH', WorkDayEnd);
 ButtonFlatTimeToMM.Caption:=FormatDateTime('nn', WorkDayEnd);
end;

procedure TFormMain.UpdateTimeOverlayData;
begin
 with FormTimeOverlay do
  begin
   SetActivateLow(FDoTimeSection);
   if FDoTimeSection then
    begin
     Time:=FormatDateTime('HH:mm:ss', FNewTEnd - FNewTStart);
     Caption:=FNewTName;
    end
   else Close;
  end;
end;

procedure TFormMain.ButtonFlatAddTaskClick(Sender: TObject);
begin
 if EditNewTaskName.Text = '' then
  begin
   AddTask;
   TableExTasks.Edit(0, 1);
  end
 else
  begin
   AddTask(EditNewTaskName.Text);

   EditNewTaskName.Clear;
   TableExTasks.ItemIndex:=0;
  end;
end;

function TFormMain.AddTask(Name:string = ''; Date:TDateTime = 0):TTaskItem;
var Item:TTaskItem;
begin
 Item:=TTaskItem.Create(FTaskItems);
 Item.Name:=Name;
 if Date = 0 then
  case ViewMode of
   vmToday, vmSelectedDate:
    begin
     Item.Deadline:=True;
     Item.DateDeadline:=CurrentDate;
    end;
  end
 else
  begin
   Item.Deadline:=True;
   Item.DateDeadline:=Date;
  end;
 //Сразу запишем в БД, если есть название
 if Name <> '' then
  begin
   FTaskItems.Update(Item);
   OnChangeItems;
  end;
 FTaskItems.Insert(0, Item);
end;

procedure TFormMain.ButtonFlat6Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date + 1;
 ViewMode:=vmSelectedDate;
end;

procedure TFormMain.ButtonFlat7Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date - 1;
 ViewMode:=vmSelectedDate;
end;

procedure TFormMain.ButtonFlat8Click(Sender: TObject);
begin
 SaveNote;
end;

procedure TFormMain.ButtonFlatCollapseScaleClick(Sender: TObject);
begin
 if PanelTimeScale.Height >= 222 then
  begin
   PanelTimeScale.Height:=42;
   DrawPanel.Visible:=False;
   ButtonFlatCollapseScale.ImageIndex:=14;
  end
 else 
  begin
   DrawPanel.Visible:=True;
   PanelTimeScale.Height:=222; // 10 - | 14 +  
   ButtonFlatCollapseScale.ImageIndex:=10;
  end;
end;

procedure TFormMain.ButtonFlatCurrentDateClick(Sender: TObject);
begin
 SendMessage(Calendar.Handle, WM_NCACTIVATE, Integer(True), 0);
 FocusControl(Calendar);
 PostMessage(Calendar.Handle, WM_KEYDOWN, VK_SPACE, 0);
end;

procedure TFormMain.SetButtonWCaption(Target, CloseButton:TButtonFlat; Panel:TPanel; ACaption:string; ACloseBotton:Boolean);
begin
 Target.Caption:=ACaption;
 if ACloseBotton then
  Panel.Width := Target.GetTextWidth + 10 + CloseButton.Width + 10
 else Panel.Width := Target.GetTextWidth + 15;
 CloseButton.Visible:=ACloseBotton;
end;

procedure TFormMain.ButtonFlatDANCloseClick(Sender: TObject);
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 FTaskItems[FTaskID].Deadline:=False;
 FTaskItems.Update(FTaskItems[FTaskID]);
 UpdateTaskPanel(FTaskID);
end;

procedure TFormMain.ButtonFlatDeadlinedClick(Sender: TObject);
begin
 ViewMode:=vmDeadlined;
end;

procedure TFormMain.ButtonFlatMenuViewClick(Sender: TObject);
var Pt:TPoint;
begin
 Pt:=ButtonFlatMenuView.ClientToScreen(Point(0, 0));
 PopupMenuView.Popup(Pt.X, Pt.Y+ButtonFlatMenuView.Height);
end;

procedure TFormMain.OnChangeItems;
begin
 UpdateCounts;
 ReloadCalendarData;
end;

function TFormMain.DeleteTask(ID:Integer):Boolean;
begin
 Result:=False;
 if not IndexInList(ID, FTaskItems.Count) then Exit;
 if not GetAnswer('Удалить задачу "'+CutString(FTaskItems[ID].Name, 100)+'"?', True) then Exit;
 FTaskItems.Delete(ID);
 OnChangeItems;
 UpdateTaskPanel(ID);
 Result:=True;
end;

procedure TFormMain.ButtonFlat9Click(Sender: TObject);
begin
 DeleteTask(TableExTasks.ItemIndex);
end;

procedure TFormMain.ButtonFlatAddTimeClick(Sender: TObject);
begin
 AddTaskTime(CurrentDate, CurrentDate, Now, Now, CurrentTask.ID, CurrentTask.Color);
end;

procedure TFormMain.SlideTo(Slide:TSlide);
begin
 Enabled:=False;
 ButtonFlatTimes.ColorNormal:=$002E2E2E;
 ButtonFlatSettings.ColorNormal:=$002E2E2E;
 ButtonFlatCalendar.ColorNormal:=$002E2E2E;
 ButtonFlatNotes.ColorNormal:=$002E2E2E;
 case Slide of
  slTimes:
   begin
    VisNeed:=PanelTimes;
    ButtonFlatTimes.ColorNormal:=$00383838;
   end;
  slSettings:
   begin
    VisNeed:=PanelSettings;
    ButtonFlatSettings.ColorNormal:=$00383838;
   end;
  slCalendar:
   begin
    VisNeed:=PanelCalendar;
    ButtonFlatCalendar.ColorNormal:=$00383838;
   end;
  slNotes:
   begin
    VisNeed:=PanelNotes;
    ButtonFlatNotes.ColorNormal:=$00383838;
   end;
 end;
 if VisNeed <> VisNow then
  begin
   VisNeed.Left:=VisNow.Width;
   VisNeed.Top:=0;
   AnimateControlLeft(VisNow, 25, -450);
   AnimateControlLeft(VisNeed, 25, 0);
   VisNow:=VisNeed;
  end;
 Enabled:=True;
end;

procedure TFormMain.ButtonFlatMinimizeClick(Sender: TObject);
begin
 Application.Minimize;
end;

procedure TFormMain.ButtonFlatNewCommentClick(Sender: TObject);
var Item:TCommentItem;
    ID:Integer;
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 Item:=TCommentItem.Create(FComments);
 Item.Text:=EditNewComment.Text;
 Item.Date:=Now;
 Item.Task:=FTaskItems[FTaskID].ID;
 ID:=FComments.Add(Item);
 TableExComments.ItemIndex:=ID;
 FComments.Update(ID);
 EditNewComment.Text:='';
end;

procedure TFormMain.ButtonFlatNotesClick(Sender: TObject);
begin
 SlideTo(slNotes);
end;

procedure TFormMain.CalendarCalendarDrawDayItem(Sender: TObject;
  DrawParams: TDrawViewInfoParams; CalendarViewViewInfo: TCellItemViewInfo);
begin
 DrawParams.ForegroundColor:=clWhite;
end;

procedure TFormMain.CalendarChange(Sender: TObject);
begin
 ButtonFlatCurrentDate.Caption:=FormatDateTime('DD MMM YYYY', Calendar.Date);
end;

procedure TFormMain.CalendarCloseUp(Sender: TObject);
begin
 if Calendar.IsEmpty then Calendar.Date:=Now;
 ViewMode:=vmSelectedDate;
end;

procedure TFormMain.ShowTask(TaskID:Integer);
var Task:TTaskItem;
    txt:string;
begin
 //Сохранить старую запись
 if FTaskID <> TaskID then MemoTaskDescExit(nil);
 //Работаем с новой
 FTaskID:=TaskID;
 Task:=FTaskItems[TaskID];
 FComments.Reload(Task.ID);
 EditTaskName.Text:=Task.Name;
 MemoTaskDesc.Text:=Task.Description;
 MemoTaskDesc.Modified:=False;
 case Task.State of
  True:ButtonFlatTaskState.ImageIndex:=18;
  False:ButtonFlatTaskState.ImageIndex:=19;
 end;
 if Task.Deadline then
  begin
   txt:=HumanDateTime(Task.DateDeadline, False);
   if Task.Notify then txt:=txt+', в '+FormatDateTime('HH:mm', Task.TimeNotify);
   SetButtonWCaption(ButtonFlatTaskDAN, ButtonFlatDANClose, PanelTaskDAN, txt, True);
  end
 else
  begin
   SetButtonWCaption(ButtonFlatTaskDAN, ButtonFlatDANClose, PanelTaskDAN, 'Дата и напоминание...', False);
  end;
 if Task.Color <> clNone then
  begin
   SetButtonWCaption(ButtonFlatTaskColor, ButtonFlatTaskColorClose, PanelTaskColor, 'Цвет задачи', True);
   ButtonFlatTaskColor.ColorNormal:=Task.Color;
  end
 else
  begin
   SetButtonWCaption(ButtonFlatTaskColor, ButtonFlatTaskColorClose, PanelTaskColor, 'Выбрать цвет...', False);
   ButtonFlatTaskColor.ColorNormal:=$00313131;
  end;
 //UpdateCounts;
 //PanelTask.Height:=300;
 //PanelTask.Enabled:=True;
 PanelTask.Visible:=True;
end;

procedure TFormMain.HideTask;
begin
 //PanelTask.Height:=1;
 //PanelTask.Enabled:=False;
 PanelTask.Visible:=False;
 MemoTaskDescExit(nil);
end;

procedure TFormMain.Initializate;
var WD:TWorkDays;
begin
 FTimeManager:=TManager.Create(FDB);
 FTimeManager.OnWorkDayStarted:=WorkDayStarted;
 FTimeManager.OnTaskNotify:=TaskNotify;
 FormTimeOverlay:=TFormTimeOverlay.Create(nil);
 FormTimeOverlay.Callback:=TimeOverlayCallBack;

 FDoTimeSection:=False;
 VisNow:=PanelTimes;
 HideTask;
 WD[1]:=True;
 WD[2]:=True;
 WD[3]:=True;
 WD[4]:=True;
 WD[5]:=True;
 WD[6]:=False;
 WD[7]:=False;
 WorkDays:=WD;

 WorkDayEnd:=1/24*18;
 WorkDayStart:=1/24*9;
 UpdateTime;

 FLastDate:=DateOf(Now);
 UpdateCounts;
 UpdateTaskNowButton;

 ViewMode:=vmToday;
 TimerTimeTimer(nil);
 TimeManager.Activate:=True;
 {$IFDEF DEBUG}
   Caption:=Caption + ' (Debug)';
 {$ENDIF}
end;

procedure TFormMain.DoLog(Text:string);
begin
 //MemoLog.Lines.BeginUpdate;
 //MemoLog.Lines.Insert(0, Text+#13#10);
 //MemoLog.Lines.EndUpdate;
end;

procedure TFormMain.UpdateCounts;
begin
 ButtonFlatTaskNow.SubText:=IntToStr(FTaskItems.GetCount(Now));
 ButtonFlatDeadlined.SubText:=IntToStr(FTaskItems.GetDeadlined(Now));
 ButtonFlatTaskInbox.SubText:=IntToStr(FTaskItems.GetCount(0));
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 ClientWidth:=1500;
 ClientHeight:=800;
 FTaskID:=-1;

 PanelCalendar.Left:=PanelRight.Width+10;
 PanelTimes.Left:=0;
 PanelSettings.Left:=PanelRight.Width+10;
 PanelNotes.Left:=PanelRight.Width+10;

 FDB:=TDB.Create(ExtractFilePath(ParamStr(0))+'\data.db');
 FDB.OnLog:=DoLog;
 FTimeItems:=TTimeItems.Create(FDB, TableExTimes);
 FTaskItems:=TTaskItems.Create(FDB, TableExTasks);
 FComments:=TCommentItems.Create(FDB, TableExComments);
 FLabelTypes:=TLabelTypes.Create(FDB, nil);
 FLabelItems:=TLabelItems.Create(FDB, nil);
 FNote:=TNoteItem.Create(FDB);
 FTasksOfCalendar:=TTaskItems.Create(FDB, nil);
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
 Canvas.Pen.Color:=$00ADADAD;
 Canvas.Pen.Width:=3;
 Canvas.Rectangle(ClientRect);
end;

procedure TFormMain.MemoTaskDescExit(Sender: TObject);
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 if MemoTaskDesc.Modified then
  begin
   FTaskItems[FTaskID].Description:=MemoTaskDesc.Text;
   FTaskItems.Update(FTaskItems[FTaskID]);
  end;
end;

function TFormMain.DeleteComment(ID:Integer):Boolean;
begin
 Result:=False;
 if not IndexInList(ID, FComments.Count) then Exit;
 if not GetAnswer('Удалить комментарий "'+CutString(FComments[ID].Text, 100)+'"?', True) then Exit;
 FComments.Delete(ID);
 Result:=True;
end;

procedure TFormMain.MenuItemCommentDelClick(Sender: TObject);
begin
 DeleteComment(TableExComments.ItemIndex);
end;

procedure TFormMain.MenuItemOpenLabelsClick(Sender: TObject);
begin
 TFormSelectLabels.OpenForEdit;
end;

procedure TFormMain.MenuItemShowEndedClick(Sender: TObject);
begin
 FTaskItems.ShowEndedTask:=not FTaskItems.ShowEndedTask;
 ViewMode:=ViewMode;
 OnChangeItems;
end;

procedure TFormMain.UpdateViewModeParam;
begin
 MenuItemShowEnded.Checked:=FTaskItems.ShowEndedTask;
end;

procedure TFormMain.MenuItemTaskDelClick(Sender: TObject);
begin
 DeleteTask(TableExTasks.ItemIndex);
end;

procedure TFormMain.MenuItemTaskDelLabelsClick(Sender: TObject);
begin
 //
end;

procedure TFormMain.MenuItemTaskLabelAddClick(Sender: TObject);
var LItem:TLabelItem;
    LType:TLabelType;
begin
 if not TaskSelected then Exit;
 if TFormSelectLabels.Select(CurrentTask.LabelItems, CurrentTask.ID) then
  begin
   // LItem:=TLabelItem.Create(LType);
   // LItem.Task:=FTaskItems[TableExTasks.ItemIndex].ID;
   // FTaskItems[TableExTasks.ItemIndex].LabelItems.New(LItem);
   TableExTasks.Repaint;
  end;
end;

procedure TFormMain.MenuItemTaskStartFromClick(Sender: TObject);
begin
 StartTask(DateOf(Now)+FRangeFrom);
end;

procedure TFormMain.MenuItemTimeDeleteClick(Sender: TObject);
begin
 if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then Exit;
 DeleteTime(TableExTimes.ItemIndex);
end;

procedure TFormMain.MenuItemTaskLabelClick(Sender: TObject);
var LItem:TLabelItem;
begin
 if not TaskSelected then Exit;
 if not IndexInList((Sender as TMenuItem).Tag, FLabelTypes.Count) then Exit;

 LItem:=TLabelItem.Create(FLabelTypes[(Sender as TMenuItem).Tag]);
 LItem.Task:=CurrentTask.ID;
 CurrentTask.LabelItems.New(LItem);
 TableExTasks.Repaint;
end;

procedure TFormMain.MenuItemTaskLabelReset(Sender: TObject);
begin
 if not Assigned(CurrentTask) then Exit;
 CurrentTask.DropLabels;
end;

procedure TFormMain.PopupMenuTaskPopup(Sender: TObject);
var MI:TMenuItem;
  i: Integer;
begin
 FLabelTypes.Reload;
 MenuItemTaskLabels.Clear;

 MI:=PopupMenuTask.CreateMenuItem;
 MI.Caption:='Добавить метку...';
 MI.OnClick:=MenuItemTaskLabelAddClick;
 MenuItemTaskLabels.Add(MI);

 MI:=PopupMenuTask.CreateMenuItem;
 MI.Caption:='-';
 MenuItemTaskLabels.Add(MI);

 for i:= 0 to FLabelTypes.Count-1 do
  begin
   MI:=PopupMenuTask.CreateMenuItem;
   MI.Caption:=FLabelTypes[i].Name;
   MI.Tag:=i;
   MI.OnClick:=MenuItemTaskLabelClick;
   MenuItemTaskLabels.Add(MI);
  end;

 MI:=PopupMenuTask.CreateMenuItem;
 MI.Caption:='-';
 MenuItemTaskLabels.Add(MI);

 MI:=PopupMenuTask.CreateMenuItem;
 MI.Caption:='Сбросить';
 MI.OnClick:=MenuItemTaskLabelReset;
 MenuItemTaskLabels.Add(MI);
end;

procedure TFormMain.NoteInfo;
begin
 if FNote.Loaded then
  begin
   MemoNote.Text:=FNote.Text;
   LabelNoteDate.Caption:=HumanDateTime(FNote.Date, False);
   LabelNoteModify.Caption:=HumanDateTime(FNote.DateModify, True);
  end
 else
  begin
   MemoNote.Text:='';
   LabelNoteDate.Caption:='';
   LabelNoteModify.Caption:='';
  end;
 MemoNote.Modified:=False;
end;

procedure TFormMain.SaveNote;
begin
 if FNote.Text <> MemoNote.Text then
  begin
   FNote.Text:=MemoNote.Text;
   FNote.Save;
   NoteInfo;
  end;
end;

procedure TFormMain.LoadNote(Date:TDate);
begin
 FNote.Load(Date);
 NoteInfo;
end;


procedure TFormMain.SetCurrentDate(const Value: TDate);
begin
 if Value = FCurrentDate then Exit;
 FCurrentDate:=Value;
 FTimeItems.Reload(FCurrentDate);
 SaveNote;
 LoadNote(FCurrentDate);
 UpdateCalendar;
end;

procedure TFormMain.SetViewMode(const Value: TViewMode);
begin
 FViewMode := Value;
 case FViewMode of
  vmToday:
   begin
    Calendar.Date:=Now;
    CurrentDate:=Now;
    FTaskItems.ShowDate:=CurrentDate;
    FTaskItems.TaskFilter:=tkfDated;
    FTaskItems.Reload;
    ButtonFlatViewMode.Caption:=HumanDateTime(FTaskItems.ShowDate, False, True);
   end;
  vmSelectedDate:
   begin
  //Calendar.Date:=Calendar.Date;
    CurrentDate:=Calendar.Date;
    FTaskItems.ShowDate:=Calendar.Date;
    FTaskItems.TaskFilter:=tkfDated;
    FTaskItems.Reload;
    ButtonFlatViewMode.Caption:=HumanDateTime(FTaskItems.ShowDate, False, True);
   end;
  vmDeadlined:
   begin
    Calendar.Date:=Now;
    CurrentDate:=Now;
    FTaskItems.ShowDate:=Now;
    FTaskItems.TaskFilter:=tkfDeadlined;
    FTaskItems.Reload;
    ButtonFlatViewMode.Caption:='Просроченные задачи';
   end;
  vmInbox:
   begin
    Calendar.Date:=Now;
    CurrentDate:=Now;
    FTaskItems.ShowDate:=Now;
    FTaskItems.TaskFilter:=tkfNoDate;
    FTaskItems.Reload;
    ButtonFlatViewMode.Caption:='Входящие';
   end;
 end;
 ButtonFlatViewMode.Width:=ButtonFlatViewMode.GetTextWidth + 20;
 ButtonFlatViewMode.Left:=PanelTaskEdit.Width div 2 - ButtonFlatViewMode.Width div 2;
 UpdateTaskPanel;
 UpdateViewModeParam;
 OnChangeItems;
end;

procedure TFormMain.SetWorkDays(Days: TWorkDays);
begin
 FWorkDays:=Days;
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
 if not IndexInList(ARow, FComments.Count) then Exit;
 case ACol of
  0:
   begin
    Allow:=True;
    Data.EditMode:=teText;
    Data.TextValue:=FComments[ARow].Text;
   end;
 end;
end;

procedure TFormMain.TableExCommentsEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
begin
 if not IndexInList(ARow, FComments.Count) then Exit;
 case ACol of
  0:
   begin
    FComments[ARow].Text:=Value;
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
 if not IndexInList(FRow, FComments.Count) then Exit;
 Value:='';
 case FCol of
  0:Value:=FComments[FRow].Text;
 end;
end;

procedure TFormMain.TableExCommentsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbRight then
  begin
   if not IndexInList(TableExComments.ItemUnderMouse, FComments.Count) then Exit;
   ShowPopupMenu(PopupMenuComment);
  end;
end;

procedure TFormMain.UpdateTaskPanel;
begin
 if TaskID < 0 then TaskID:=TableExTasks.ItemIndex;
 if not IndexInList(TaskID, FTaskItems.Count) then
  begin
   HideTask;
  end
 else if PanelTask.Visible then ShowTask(TaskID);
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

function RGBToHSV(R, G, B:Byte; var H, S, V:Double):Boolean;
var minRGB, maxRGB, delta: Double;
begin
 H:=0.0;
 minRGB:=Min(Min(R, G), B);
 maxRGB:=Max(Max(R, G), B);
 delta:=(maxRGB-minRGB);
 V:=maxRGB;
 if (maxRGB <> 0.0) then S:=255.0*delta/maxRGB else S:=0.0;

 if (S <> 0.0) then
  begin
   if R = maxRGB then H:=(G-B)/delta
   else
    if G = maxRGB then H:=2.0+(B-R)/delta
    else
     if B = maxRGB then H:=4.0+(R-G)/delta
  end
 else H:=-1.0;
 H:=H*60;
 if H < 0.0 then H:=H+360.0;

  //S := S * 100 / 255;
  //V := B * 100 / 255;
 S:=S/255*100;
 V:=V/255*100;

 Result:=True;
end;

function GetNormColor(Color:TColor):TColor;
var R, G, B:Byte;
    H, S, V:Double;
begin
 R:=GetRValue(ColorToRGB(Color));
 G:=GetGValue(ColorToRGB(Color));
 B:=GetBValue(ColorToRGB(Color));
 RGBToHSV(R, G, B, H, S, V);
 if V < 60 then
  Result:=clWhite
 else Result:=clBlack;
end;

procedure TFormMain.TableExTasksChangeItem(Sender: TObject; const Old: Integer; var New: Integer);
begin
 UpdateTaskPanel(New);
end;

procedure Gradient(DC:HWND; Rect:TRect; Color1, Color2:TColor; Vertical:Boolean = False);
var Vertex:array[0..1] of TTriVertex;
    Gradient:TGradientRect;
    Mode:Cardinal;
begin
 Vertex[0].X:=Rect.Left;
 Vertex[0].Y:=Rect.Top;
 Vertex[0].Red:=Round((GetRValue(Color1)/255)*65535);
 Vertex[0].Green:=Round((GetGValue(Color1)/255)*65535);
 Vertex[0].Blue:=Round((GetBValue(Color1)/255)*65535);
 Vertex[0].Alpha:=0;

 Vertex[1].X:=Rect.Right;
 Vertex[1].Y:=Rect.Bottom;
 Vertex[1].Red:=Round((GetRValue(Color2)/255)*65535);
 Vertex[1].Green:=Round((GetGValue(Color2)/255)*65535);
 Vertex[1].Blue:=Round((GetBValue(Color2)/255)*65535);
 Vertex[1].Alpha:=0;

 Gradient.UpperLeft:=0;
 Gradient.LowerRight:=1;
 if Vertical then Mode:=GRADIENT_FILL_RECT_V else Mode:=GRADIENT_FILL_RECT_H;
 GradientFill(DC, @Vertex[0], 2, @Gradient, 1, Mode);
end;

procedure TFormMain.TableExTasksDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var Txt:string;
    TxtRect:TRect;
    Task:TTaskItem;
    i, LP:Integer;
begin
 if not IndexInList(ARow, FTaskItems.Count) then
  begin
   if ACol <> 1 then Exit;
   Txt:='Нет задач';
   TableExTasks.Canvas.TextRect(Rect, Txt, [tfSingleLine, tfCenter, tfVerticalCenter, tfEndEllipsis]);
   Exit;
  end;
 Task:=FTaskItems[ARow];
 case ACol of
  0:begin
     with TableExTasks.Canvas do
      begin
       if Task.Color <> clNone then
        begin
         TxtRect:=Rect;
         Brush.Color:=Task.Color;
         Pen.Color:=Task.Color;
         //TxtRect.Inflate(-1, -1);
         Rectangle(TxtRect);
        end;
      end;
     case Task.State of
      True:ImageList24.Draw(TableExTasks.Canvas,
       Rect.Left+(Rect.Width div 2 - ImageList24.Width div 2),
       Rect.Top+(Rect.Height div 2 - ImageList24.Height div 2),
       18, True);
      False:ImageList24.Draw(TableExTasks.Canvas,
       Rect.Left+(Rect.Width div 2 - ImageList24.Width div 2),
       Rect.Top+(Rect.Height div 2 - ImageList24.Height div 2),
       19, True);
     end;
    end;
  1:begin
     Txt:=Task.Name;
     with TableExTasks.Canvas do
      begin
       if Task.Color <> clNone then
        begin
         TxtRect:=Rect;
         Pen.Color:=Task.Color;
         Rectangle(Rect);
         TxtRect.Right:=TxtRect.Left + TxtRect.Width div 3;
         TxtRect.Inflate(0, -1);
         Gradient(Handle, TxtRect, Task.Color, Brush.Color, False);
        end;
       Pen.Width:=1;
       Font.Size:=11;
       TxtRect:=Rect;
       TxtRect.Offset(2, 2);
       TxtRect.Bottom:=TxtRect.Top + 20;
       TxtRect.Right:=TxtRect.Right - 100;
       Brush.Style:=bsClear;
       TextRect(TxtRect, Txt, [tfSingleLine, tfLeft, tfVerticalCenter, tfEndEllipsis]);

       if Task.Deadline then
        begin
         TxtRect:=Rect;
         TxtRect.Offset(2, 2);
         TxtRect.Left:=TxtRect.Right - 100;
         //TxtRect.Bottom:=TxtRect.Top + 20;
         Brush.Style:=bsClear;
         Txt:=HumanDateTime(Task.DateDeadline, False, True);
         TextRect(TxtRect, Txt, [tfLeft, tfWordBreak]);
        end;

       if Assigned(Task.LabelItems) then
        begin
         LP:=Rect.Left+5;
         for i:= 0 to Task.LabelItems.Count-1 do
          begin
           Font.Size:=9;
           Brush.Color:=Task.LabelItems[i].Color;
           Pen.Color:=ColorDarker(Brush.Color);
           Txt:=Task.LabelItems[i].Name;
           TxtRect:=Rect;
           TxtRect.Left:=LP;
           TxtRect.Width:=TextWidth(Txt) + 12;
           TxtRect.Top:=TxtRect.Top + 20 + 4;
           TxtRect.Bottom:=TxtRect.Bottom - 6;
           LP:=TxtRect.Right+5;
           Rectangle(TxtRect);
           TxtRect.Inflate(-6, 0);
           Font.Color:=GetNormColor(Task.LabelItems[i].Color);
           Brush.Style:=bsClear;
           TextRect(TxtRect, Txt, [tfSingleLine, tfCenter, tfVerticalCenter, tfEndEllipsis]);
           Font.Color:=clWhite;
           TextOut(TxtRect.Left, TxtRect.Top, ' ');
          end;
        end;
      end;
    end;
 end;
end;

procedure TFormMain.TableExTasksEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
 if not IndexInList(ARow, FTaskItems.Count) then Exit;
 if (not PanelTask.Visible) and (FTaskItems[ARow].Saved) then
  begin
   ShowTask(ARow);
   Exit;
  end;
 case ACol of
  1:
   begin
    Allow:=True;
    Data.EditMode:=teText;
    Data.TextValue:=FTaskItems[ARow].Name;
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
 if not IndexInList(ARow, FTaskItems.Count) then Exit;
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
 if not IndexInList(ARow, FTaskItems.Count) then Exit;
 case ACol of
  1:
   begin
    FTaskItems[ARow].Name:=Value;
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

procedure TFormMain.TableExTasksItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
 if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then Exit;
 case Index of
  0:
   begin
    FTaskItems[TableExTasks.ItemIndex].State:=not FTaskItems[TableExTasks.ItemIndex].State;
    FTaskItems.Update(FTaskItems[TableExTasks.ItemIndex]);
    OnChangeItems;
    UpdateTaskPanel(TableExTasks.ItemIndex);
   end;
 end;
end;

procedure TFormMain.TableExTasksKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_F2 then
  begin
   if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then Exit;
   TableExTasks.Edit(TableExTasks.ItemIndex, 1)
  end;
end;

procedure TFormMain.TableExTasksMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbRight then
  begin
   if not IndexInList(TableExTasks.ItemUnderMouse, FTaskItems.Count) then Exit;
   ShowPopupMenu(PopupMenuTask);
  end;
end;

procedure TFormMain.TableExTimesDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 if not IndexInList(ARow, FTimeItems.Count) then Exit;
 if ACol <> 0 then Exit;
 with TableExTimes.Canvas do
  begin
   Pen.Color:=FTimeItems[ARow].Color;
   Brush.Style:=bsClear;
   Rectangle(Rect);
  end;
 if (not (gdHotTrack in State)) and (ARow <> TableExTimes.ItemIndex) then Exit;
 ImageList24.Draw(TableExTimes.Canvas, Rect.Left + (Rect.Width div 2 - 24 div 2), Rect.Top, 2, True);
end;

procedure TFormMain.TableExTimesGetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FTimeItems.Count) then Exit;
 Value:='';
 case FCol of
  1:Value:=FormatDateTime('HH:mm', FTimeItems[FRow].TimeFrom)+' - '+FormatDateTime('HH:mm', FTimeItems[FRow].TimeTo);
  2:Value:=FTimeItems[FRow].Description;
 end;
end;

procedure TFormMain.TableExTimesItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
 if not IndexInList(TableExTimes.ItemIndex, FTimeItems.Count) then Exit;
 case Index of
  0: DeleteTime(TableExTimes.ItemIndex);
 end;
end;

function TFormMain.DeleteTime(ID:Integer):Boolean;
begin
 Result:=False;
 if GetAnswer('Удалить запись о работе?', True) then
  begin
   FTimeItems.Delete(ID);
   Result:=True;
  end;
end;

procedure TFormMain.TableExTimesMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if Button = mbRight then
  begin
   if not IndexInList(TableExTimes.ItemUnderMouse, FTimeItems.Count) then Exit;
   ShowPopupMenu(PopupMenuTimes);
  end;
end;

procedure TFormMain.TaskNotify(Task: TTaskItem);
begin
 TFormNotifyTask.Notify(Task);
end;

procedure TFormMain.TimeOverlayCallBack(Sender: TObject; State: Boolean);
begin
 //Установка состояния записи работы
end;

procedure TFormMain.TimerRepaintTimer(Sender: TObject);
begin
 DrawPanel.Repaint;
end;

procedure TFormMain.UpdateTaskNowButton;
begin
 ButtonFlatTaskNow.Caption:=FormatDateTime('Сегодня: DD mmm, DDD', Now);
end;

procedure TFormMain.UpdateDay;
begin
 FLastDate:=DateOf(Now);
 Calendar.Date:=FLastDate;
 CurrentDate:=FLastDate;
 ViewMode:=ViewMode;
end;

procedure TFormMain.TimerTimeTimer(Sender: TObject);
begin
 FCurrentTime:=TimeOf(Now);
 FNowTimeMin:=GetMins(FCurrentTime);
 DrawGridCalendar.Repaint;
 if FDoTimeSection then
  begin
   ButtonFlatTaskStart.Caption:=FormatDateTime('HH:mm:ss', FNewTEnd - FNewTStart);
   FNewTEnd:=TimeOf(Now);
  end;
 if FLastDate < DateOf(Now) then UpdateDay;
 if FormTimeOverlay.Visible then UpdateTimeOverlayData;
end;

procedure TFormMain.TrayIconClick(Sender: TObject);
begin
 Show;
 ShowWindow(Handle, SW_SHOW);
end;

end.

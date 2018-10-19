unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB,
  System.ImageList, Vcl.ImgList, HGM.Button, sPanel, Vcl.WinXCalendars,
  Vcl.AppEvnts, Vcl.Menus, YOTM.DB.Comments, YOTM.DB.Labels, YOTM.DB.Tasks,
  YOTM.DB.Times, HGM.Common.Utils, YOTM.DB.LabelTypes;

type
  TTimeSection = record
   TimeS, TimeE:TTime;
  end;

  TSlide = (slTimes, slSettings, slCalendar);

  TTimeSections = TList<TTimeSection>;

  TFormMain = class(TForm)
    TimerRepaint: TTimer;
    TimerTime: TTimer;
    PanelTimes: TPanel;
    DrawPanel: TDrawPanel;
    TableExTimes: TTableEx;
    ImageList24: TImageList;
    ButtonFlatClose: TButtonFlat;
    PanelSettings: TPanel;
    DateTimePickerStart: TDateTimePicker;
    DateTimePickerEnd: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    ButtonFlatTaskEnd: TButtonFlat;
    ButtonFlatTaskStart: TButtonFlat;
    PanelRight: TPanel;
    PanelTasks: TPanel;
    DragBarTop: TsDragBar;
    Shape1: TShape;
    ButtonFlatMinimize: TButtonFlat;
    TableExTasks: TTableEx;
    PanelTaskEdit: TPanel;
    PanelClient: TPanel;
    ButtonFlatSettings: TButtonFlat;
    ButtonFlatTimes: TButtonFlat;
    PanelCalendar: TPanel;
    ButtonFlatCalendar: TButtonFlat;
    Shape2: TShape;
    Shape3: TShape;
    PopupMenuTaskStart: TPopupMenu;
    MenuItemTaskStartFrom: TMenuItem;
    ButtonFlatAddTime: TButtonFlat;
    ButtonFlat1: TButtonFlat;
    DrawGrid1: TDrawGrid;
    PanelTaskAdd: TPanel;
    EditNewTaskName: TEdit;
    ButtonFlat2: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlat5: TButtonFlat;
    ButtonFlatMenuView: TButtonFlat;
    ButtonFlat9: TButtonFlat;
    PanelTask: TPanel;
    Shape4: TShape;
    TableExComments: TTableEx;
    Panel2: TPanel;
    EditNewComment: TEdit;
    ButtonFlatNewComment: TButtonFlat;
    PanelTaskTop: TPanel;
    ButtonFlat11: TButtonFlat;
    ButtonFlatTaskState: TButtonFlat;
    PanelTaskClient: TPanel;
    PanelTaskComments: TPanel;
    Shape5: TShape;
    Shape6: TShape;
    PopupMenuView: TPopupMenu;
    MenuItemOpenLabels: TMenuItem;
    PopupMenuTask: TPopupMenu;
    MenuItemTaskDel: TMenuItem;
    MenuItemTaskLabels: TMenuItem;
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
    LabelTaskName: TLabel;
    procedure TimerRepaintTimer(Sender: TObject);
    procedure DrawPanelPaint(Sender: TObject);
    procedure DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePickerEndChange(Sender: TObject);
    procedure TimerTimeTimer(Sender: TObject);
    procedure DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableExTimesGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatCloseClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure CalendarChange(Sender: TObject);
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
    procedure ButtonFlat1Click(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlat2Click(Sender: TObject);
    procedure TableExTasksEditCancel(Sender: TObject; ACol, ARow: Integer);
    procedure ButtonFlat9Click(Sender: TObject);
    procedure TableExTasksDblClick(Sender: TObject);
    procedure TableExCommentsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExCommentsEdit(Sender: TObject; var Data: TTableEditStruct;
      ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExCommentsEditOk(Sender: TObject; Value: string; ItemValue,
      ACol, ARow: Integer);
    procedure ButtonFlat11Click(Sender: TObject);
    procedure ButtonFlatNewCommentClick(Sender: TObject);
    procedure TableExTasksChangeItem(Sender: TObject; const Old: Integer;
      var New: Integer);
    procedure TableExTasksDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure MenuItemOpenLabelsClick(Sender: TObject);
    procedure ButtonFlatMenuViewClick(Sender: TObject);
    procedure MenuItemTaskLabelsClick(Sender: TObject);
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
  private
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
    FLabelTypes:TLabelTypes;
    FLabelItems:TLabelItems;
    FComments:TCommentItems;     //Комментарии к задаче
    FTaskID:Integer;             //Открытая задача
    FCurrentDate: TDate;         //Выбранная пользователем дата
    FDoTimeSection:Boolean;      //Идёт работа над задачей
    FNewTStart:TTime;            //Время начала работы над задачей
    FNewTEnd:TTime;              //Время окончания работы над задачей
    FTimeItemUnderCursor:Integer;//Элемент отрезка времени под курсором
    FCurrentTime:TTime;          //Текущее время (без даты)
    SelTime:TTime;               //Выбранное время на шкале
    
    VisNow:TControl;
    VisNeed:TControl;
    FMonthOffset:Integer;
    D2:TDirect2DCanvas;
    procedure SetCurrentDate(const Value: TDate);
    procedure SlideTo(Slide: TSlide);
    function StartTask(TimeStart: TTime): Boolean;
    function AddTaskTime(ADate: TDate; TStart, TEnd:TTime): Boolean;
    procedure UpdateCalendar;
    function GetCellText(ACol, ARow: Integer; var AnotherMonth:Boolean): string;
    function DaysThisMonth: Integer;
    procedure HideTask;
    procedure ShowTask(TaskID: Integer);
    procedure UpdateTaskPanel(TaskID: Integer);
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure UpdateCounts;
    function DeleteTask(ID: Integer): Boolean;
  public
    property CurrentDate:TDate read FCurrentDate write SetCurrentDate;
  end;

const
  StartOfWeek = 1; //пн

var
  FormMain: TFormMain;

implementation
 uses Math, YOTM.Form.EditTime, DateUtils, YOTM.Form.Dialog,
   YOTM.Form.SelectLabels, Winapi.CommCtrl;

{$R *.dfm}

procedure AnimateControlLeft(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 delta:=(ToValue - TargetObject.Left) div HaveTime;
 for i:= 1 to HaveTime do
  begin
   TargetObject.Left:=TargetObject.Left + delta;
   Application.ProcessMessages;
  end;
 TargetObject.Left:=ToValue;
end;

procedure AnimateControlHeight(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 delta:=(ToValue - TargetObject.Height) div HaveTime;
 for i:= 1 to HaveTime do
  begin
   TargetObject.Height:=TargetObject.Height + delta;
   Application.ProcessMessages;
  end;
 TargetObject.Height:=ToValue;
end;

procedure AnimateControlTop(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 delta:=(ToValue - TargetObject.Top) div HaveTime;
 for i:= 1 to HaveTime do
  begin
   TargetObject.Top:=TargetObject.Top + delta;
   Application.ProcessMessages;
  end;
 TargetObject.Top:=ToValue;
end;

procedure AnimateControlTopLeft(TargetObject:TControl; HaveTime:Cardinal; ToValueL, ToValueT:Integer);
var i, deltaT, deltaL:Integer;
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

procedure TFormMain.UpdateCalendar;
var
  AYear, AMonth, ADay: Word;
  FirstDate: TDateTime;
begin
 DecodeDate(CurrentDate, AYear, AMonth, ADay);
 FirstDate := EncodeDate(AYear, AMonth, 1);
 FMonthOffset := 2 - ((DayOfWeek(FirstDate) - StartOfWeek + 7) mod 7); { day of week for 1st of month }
 DrawGrid1.DefaultColWidth:=DrawGrid1.ClientWidth div DrawGrid1.ColCount;
 DrawGrid1.ColWidths[DrawGrid1.ColCount-1]:=DrawGrid1.DefaultColWidth + DrawGrid1.ClientWidth mod DrawGrid1.ColCount;
 DrawGrid1.Repaint;
 //if FMonthOffset = 2 then FMonthOffset := -5;
  //MoveColRow((ADay - FMonthOffset) mod 7, (ADay - FMonthOffset) div 7 + 1, False, False);

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

function TFormMain.GetCellText(ACol, ARow: Integer; var AnotherMonth:Boolean): string;
var
  DayNum, MNum: Integer;
  Dt:TDate;
begin
  if ARow = 0 then  { day names at tops of columns }
    Result := FormatSettings.ShortDayNames[(StartOfWeek + ACol) mod 7 + 1]
  else
  begin
    DayNum := FMonthOffset + ACol + (ARow - 2) * 7;
    AnotherMonth:=False;
    if (DayNum < 1) or (DayNum > DaysThisMonth) then
     begin
      Result := '';
      Dt:=CurrentDate;
      if (DayNum < 1) then
       begin
        Dt:=SetDay(CurrentDate, 1) - 1;
        Result:=IntToStr(MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)] + DayNum);
       end
      else
       begin
        Dt:=SetDay(Dt, MonthDays[IsLeapYear(YearOf(Dt)), MonthOf(Dt)]) + 1;
        Result:=IntToStr(DayNum - DaysThisMonth);
       end;
      AnotherMonth:=True;
     end
    else Result := IntToStr(DayNum);
  end;
end;

procedure TFormMain.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  TheText: string;
  AnotherMonth:Boolean;
begin
  TheText := GetCellText(ACol, ARow, AnotherMonth);
  with Rect, DrawGrid1.Canvas do
   begin
    if AnotherMonth then
     Brush.Color:=$00383838//Color;
    else Brush.Color:=$002E2E2E;
    Brush.Style:=bsSolid;
    FillRect(Rect);
    Brush.Style:=bsClear;
    Font.Color:=$00F2F2F2;
    Font.Size:=15;
    TextRect(Rect, Left + (Right - Left - TextWidth(TheText)) div 2,
                    Top + (Bottom - Top - TextHeight(TheText)) div 2, TheText);
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
var Pt:TPoint;
begin
 case Button of
  TMouseButton.mbLeft:
   begin
    if FPanelMouseDown then
      begin
       AddTaskTime(CurrentDate, FRangeFrom, FRangeTo);
       FPanelMouseDown:=False;
       FPanelMouseDownPos:=Point(-1, -1);
       if FRangeFrom = FRangeTo then
        begin
         if IndexInList(FTimeItemUnderCursor, FTimeItems.Count) then
          TableExTimes.ItemIndex:=FTimeItemUnderCursor;
         Exit;
        end;
      end;
   end;
  TMouseButton.mbRight:
   begin
    Pt:=Mouse.CursorPos;
    PopupMenuTaskStart.Popup(Pt.X, Pt.Y);
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
    TextOut(ScaleRect.Left - 15, ScaleRect.Top - 20, FormatDateTime('HH:mm', DateTimePickerStart.Time));
    TextOut(ScaleRect.Right - 15, ScaleRect.Top - 20, FormatDateTime('HH:mm', DateTimePickerEnd.Time));

    tmpRect:=ScaleRect;
    tmpRect.Right:=tmpRect.Left +  Round(ScaleRect.Width / 100 * ((FNowTimeMin - GetMins(DateTimePickerStart.Time)) /  (FWorkTimeMin / 100)));
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
      tmpRect.Left:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FTimeItems[i].TimeFrom) - GetMins(DateTimePickerStart.Time)) /  (FWorkTimeMin / 100)));
      tmpRect.Right:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FTimeItems[i].TimeTo) - GetMins(DateTimePickerStart.Time)) /  (FWorkTimeMin / 100)));
      tmpRect.Inflate(0, -3);
      if tmpRect.Left <= ScaleRect.Left+3 then tmpRect.Left:=ScaleRect.Left+3;
      if tmpRect.Right >= ScaleRect.Right-3 then tmpRect.Right:=ScaleRect.Right-3;

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
      tmpRect.Left:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FNewTStart) - GetMins(DateTimePickerStart.Time)) /  (FWorkTimeMin / 100)));
      tmpRect.Right:=ScaleRect.Left + Round(ScaleRect.Width / 100 * ((GetMins(FNewTEnd) - GetMins(DateTimePickerStart.Time)) /  (FWorkTimeMin / 100)));
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
      SelTime:=GetTime(GetMins(DateTimePickerStart.Time) + (H * 60 + M));
      Font.Color:=$00F2F2F2;
      MinSelTextLeft:=Min(Max(MPos - 160 div 2, ScaleRect.Left - 15), CRect.Right - 160);
      TextOut(MinSelTextLeft, ScaleRect.Top - 40, FormatDateTime('HH:mm - от начала дня', GetTime(H * 60 + M)));
      TextOut(MinSelTextLeft, ScaleRect.Top - 60, FormatDateTime('HH:mm - указано', SelTime));
      TextOut(MinSelTextLeft, ScaleRect.Top - 80, FormatDateTime('HH:mm - разница с текущим', GetTime(Abs(GetMins(FCurrentTime) - (H * 60 + M) - GetMins(DateTimePickerStart.Time)))));
      //Диапазон выбора
      MProc:=FPanelMouseDownPos.X - ScaleRect.Left;
      MProc:=MProc / (ScaleRect.Width / 100);
      MProc:=MProc * (FWorkTimeMin / 100); //Минуты

      H:=Ceil(MProc) div 60;
      M:=Trunc(Ceil(MProc) mod 60 / 5) * 5;
      KeepTime:=GetTime(GetMins(DateTimePickerStart.Time) + (H * 60 + M));
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

procedure TFormMain.ButtonFlatCalendarClick(Sender: TObject);
begin
 SlideTo(slCalendar);
end;

procedure TFormMain.ButtonFlatCloseClick(Sender: TObject);
begin
 Close;
end;

function TFormMain.AddTaskTime(ADate:TDate; TStart, TEnd:TTime):Boolean;
var Item:TTimeItem;
    EditTime:TFormEditTime;
begin
 EditTime:=TFormEditTime.Create(nil);
 try
  EditTime.EditText.Text:='';
  EditTime.DateTimePickerFrom.Time:=TStart;
  EditTime.DateTimePickerTo.Time:=TEnd;
  EditTime.Position:=poMainFormCenter;
  if EditTime.ShowModal = mrOK then
   begin
    Item:=TTimeItem.Create(FTimeItems);
    with Item do
     begin
      Date:=Trunc(ADate);
      Description:=EditTime.EditText.Text;
      TimeFrom:=EditTime.DateTimePickerFrom.Time;
      TimeTo:=EditTime.DateTimePickerTo.Time;
      FTimeItems.Insert(0, Item);
      FTimeItems.Update(0);
     end;
   end;
 finally
  EditTime.Free;
 end;
end;

procedure TFormMain.ButtonFlatTaskEndClick(Sender: TObject);
begin
 if FDoTimeSection then
  begin
   ButtonFlatTaskStart.Caption:='Начать';
   FDoTimeSection:=False;
   FNewTEnd:=Frac(Now);
   FPanelMouseDown:=False;
   FPanelMouseDownPos:=Point(-1, -1);
   if Abs(GetMins(FNewTStart) - GetMins(FNewTEnd)) < 1 then Exit;
   AddTaskTime(Now, FNewTStart, FNewTEnd);
  end;
end;

function TFormMain.StartTask(TimeStart:TTime):Boolean;
begin
 Result:=False;
 if FDoTimeSection then Exit;
 CurrentDate:=Now;
 FNewTStart:=Frac(TimeStart);
 FNewTEnd:=FNewTStart;
 FDoTimeSection:=True;
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

procedure TFormMain.ButtonFlatTaskNowClick(Sender: TObject);
begin
 FTaskItems.ShowDate:=Now;
 FTaskItems.TaskFilter:=tkfDated;
 FTaskItems.Reload;
end;

procedure TFormMain.ButtonFlat11Click(Sender: TObject);
begin
 HideTask;
end;

procedure TFormMain.ButtonFlatTaskInboxClick(Sender: TObject);
begin
 FTaskItems.TaskFilter:=tkfNoDate;
 FTaskItems.Reload;
end;

procedure TFormMain.ButtonFlatTaskStateClick(Sender: TObject);
begin
 if not IndexInList(FTaskID, FTaskItems.Count) then Exit;
 FTaskItems[FTaskID].State:= not FTaskItems[FTaskID].State;
 case FTaskItems[FTaskID].State of
  True:ButtonFlatTaskState.ImageIndex:=18;
  False:ButtonFlatTaskState.ImageIndex:=19;
 end;
 FTaskItems.Update(FTaskID);
end;

procedure TFormMain.ButtonFlat1Click(Sender: TObject);
var Item:TTaskItem;
begin
 Item:=TTaskItem.Create(FTaskItems);
 FTaskItems.Insert(0, Item);
 TableExTasks.Edit(0, 1);
end;

procedure TFormMain.ButtonFlat2Click(Sender: TObject);
var Item:TTaskItem;
begin
 Item:=TTaskItem.Create(FTaskItems);
 Item.Name:=EditNewTaskName.Text;
 FTaskItems.Insert(0, Item);
 TableExTasks.ItemIndex:=0;
 EditNewTaskName.Clear;
end;

procedure TFormMain.ButtonFlat6Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date + 1;
end;

procedure TFormMain.ButtonFlat7Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date - 1;
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

procedure TFormMain.ButtonFlatDeadlinedClick(Sender: TObject);
begin
 FTaskItems.ShowDate:=CurrentDate;
 FTaskItems.TaskFilter:=tkfDeadlined;
 FTaskItems.Reload;
end;

procedure TFormMain.ButtonFlatMenuViewClick(Sender: TObject);
var Pt:TPoint;
begin
 Pt:=ButtonFlatMenuView.ClientToScreen(Point(0, 0));
 PopupMenuView.Popup(Pt.X, Pt.Y+ButtonFlatMenuView.Height);
end;

function TFormMain.DeleteTask(ID:Integer):Boolean;
begin
 Result:=False;
 if not IndexInList(ID, FTaskItems.Count) then Exit;
 if not TFormAnswer.GetAnswer('Удалить задачу "'+FTaskItems[ID].Name+'"?') then Exit;
 FTaskItems.Delete(ID);
 UpdateTaskPanel(ID);
end;

procedure TFormMain.ButtonFlat9Click(Sender: TObject);
begin
 if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then Exit;
 DeleteTask(TableExTasks.ItemIndex);
end;

procedure TFormMain.ButtonFlatAddTimeClick(Sender: TObject);
begin
 AddTaskTime(Now, Now, Now);
end;

procedure TFormMain.SlideTo(Slide:TSlide);
begin
 Enabled:=False;
 ButtonFlatTimes.ColorNormal:=$002E2E2E;
 ButtonFlatSettings.ColorNormal:=$002E2E2E;
 ButtonFlatCalendar.ColorNormal:=$002E2E2E;
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
 if FTaskID < 0 then Exit;
 Item:=TCommentItem.Create(FComments);
 Item.Text:=EditNewComment.Text;
 Item.Date:=Now;
 Item.Task:=FTaskID;
 ID:=FComments.Add(Item);
 TableExComments.ItemIndex:=ID;
 FComments.Update(ID);
 EditNewComment.Text:='';
end;

procedure TFormMain.CalendarChange(Sender: TObject);
begin
 if Calendar.IsEmpty then Calendar.Date:=Now;
 CurrentDate:=Calendar.Date;
end;

procedure TFormMain.CalendarCloseUp(Sender: TObject);
begin
 if Calendar.IsEmpty then Calendar.Date:=Now;
end;

procedure TFormMain.DateTimePickerEndChange(Sender: TObject);
begin
 if Frac(DateTimePickerEnd.Time) < Frac(DateTimePickerStart.Time) then
  DateTimePickerEnd.Time:=DateTimePickerStart.Time
 else
  if Frac(DateTimePickerStart.Time) > Frac(DateTimePickerEnd.Time) then
   DateTimePickerStart.Time:=DateTimePickerEnd.Time;
 if Frac(DateTimePickerEnd.Time) <= Frac(DateTimePickerStart.Time) then
  DateTimePickerEnd.Time:=DateTimePickerStart.Time+1/24/60;

 FWorkTimeMin:= Max(1, GetMins(DateTimePickerEnd.Time) - GetMins(DateTimePickerStart.Time));
end;

procedure TFormMain.ShowTask(TaskID:Integer);
begin
 FTaskID:=TaskID;
 //AnimateControlHeight(PanelTask, 20, 200);
 FComments.Reload(FTaskID);
 LabelTaskName.Caption:=FTaskItems[TaskID].Name;
 case FTaskItems[TaskID].State of
  True:ButtonFlatTaskState.ImageIndex:=18;
  False:ButtonFlatTaskState.ImageIndex:=19;
 end;


 PanelTask.Height:=200;
 PanelTask.Enabled:=True;
end;

procedure TFormMain.HideTask;
begin
 //AnimateControlHeight(PanelTask, 20, 1);
 PanelTask.Height:=1;
 PanelTask.Enabled:=False;
end;

procedure TFormMain.UpdateCounts;
begin
 ButtonFlatTaskInbox.SubText:=IntToStr(FTaskItems.GetCount(0));
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 ClientWidth:=1500;
 ClientHeight:=800;
 FDB:=TDB.Create(ExtractFilePath(ParamStr(0))+'\data.db');
 FTimeItems:=TTimeItems.Create(FDB, TableExTimes);
 FTaskItems:=TTaskItems.Create(FDB, TableExTasks);
 FComments:=TCommentItems.Create(FDB, TableExComments);
 FLabelTypes:=TLabelTypes.Create(FDB, nil);
 FLabelItems:=TLabelItems.Create(FDB, nil);
 CurrentDate:=Now;
 FLastDate:=Trunc(Now);
 DateTimePickerEndChange(nil);
 FDoTimeSection:=False;
 TimerTimeTimer(nil);
 VisNow:=PanelTimes;
 HideTask;
 UpdateCounts;
 D2:=TDirect2DCanvas.Create(TableExTasks.Canvas, TableExTasks.ClientRect);
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
 Canvas.Pen.Color:=$00ADADAD;
 Canvas.Pen.Width:=3;
 Canvas.Rectangle(ClientRect);
end;

procedure TFormMain.MenuItemOpenLabelsClick(Sender: TObject);
begin
 FormSelectLabels.ShowForEdit;
end;

procedure TFormMain.MenuItemTaskDelClick(Sender: TObject);
begin
 DeleteTask(TableExTasks.ItemUnderMouse);
end;

procedure TFormMain.MenuItemTaskLabelsClick(Sender: TObject);
var LItem:TLabelItem;
    LType:TLabelType;
begin
 if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then Exit;
 if TFormSelectLabels.Select(LType) then
  begin
   LItem:=TLabelItem.Create(LType);
   LItem.Task:=FTaskItems[TableExTasks.ItemIndex].ID;
   FTaskItems[TableExTasks.ItemIndex].LabelItems.New(LItem);
   TableExTasks.Repaint;
  end;
end;

procedure TFormMain.MenuItemTaskStartFromClick(Sender: TObject);
begin
 StartTask(FRangeFrom);
end;

procedure TFormMain.SetCurrentDate(const Value: TDate);
begin
 if Value = FCurrentDate then Exit;
 FCurrentDate:=Value;
 Calendar.Date:=FCurrentDate;
 FTimeItems.Reload(FCurrentDate);

 FTaskItems.ShowDate:=FCurrentDate;
 FTaskItems.TaskFilter:=tkfDated;
 FTaskItems.Reload;

 ButtonFlatTaskNow.SubText:=IntToStr(FTaskItems.GetCount(FCurrentDate));
 ButtonFlatDeadlined.SubText:=IntToStr(FTaskItems.GetDeadlined(FCurrentDate));
 UpdateCalendar;
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

procedure TFormMain.UpdateTaskPanel;
begin
 if not IndexInList(TaskID, FTaskItems.Count) then
  begin
   HideTask;
  end
 else if PanelTask.Enabled then ShowTask(TaskID);
end;

procedure TFormMain.WMSize(var Message: TWMSize);
begin
 inherited;
 Invalidate;
end;

procedure TFormMain.TableExTasksChangeItem(Sender: TObject; const Old: Integer; var New: Integer);
begin
 UpdateTaskPanel(New);
end;

procedure TFormMain.TableExTasksDblClick(Sender: TObject);
begin
 if not IndexInList(TableExTasks.ItemUnderMouse, FTaskItems.Count) then Exit;
 ShowTask(TableExTasks.ItemUnderMouse);
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

function HSVToRGB(H, S, V: Double; var R, G, B: Byte): Boolean;
var i: Integer;
    f, p, q, t: Double;

procedure CopyOutput(const RV, GV, BV: Double);
const RGBmax = 255;
begin
 R:=Round(RGBmax * RV);
 G:=Round(RGBmax * GV);
 B:=Round(RGBmax * BV);
end;

begin
 S:=S/100;
 V:=V/100;
 H:=H/60;
 //Assert(InRange(H, 0.0, 1.0));
 //Assert(InRange(S, 0.0, 1.0));
 //Assert(InRange(V, 0.0, 1.0));
 if S = 0.0 then
  begin
   // achromatic (grey)
   CopyOutput(B, B, B);
   Result:= True;
   Exit;
  end;
 //H:=H*6.0; // sector 0 to 5
 i:=floor(H);
 f:=H-i; // fractional part of H
 p:=V*(1.0-S);
 q:=V*(1.0-S*f);
 t:=V*(1.0-S*(1.0-f));
 case i of
  0: CopyOutput(V, t, p);
  1: CopyOutput(q, V, p);
  2: CopyOutput(p, V, t);
  3: CopyOutput(p, q, V);
  4: CopyOutput(t, p, V);
 else
  CopyOutput(V, p, q);
 end;
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

procedure TFormMain.TableExTasksDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var Txt:string;
    TxtRect:TRect;
    Task:TTaskItem;
    i, LP:Integer;
begin
 if ACol <> 1 then Exit;
 if not IndexInList(ARow, FTaskItems.Count) then
  begin
   Txt:='Нет задач';
   TableExTasks.Canvas.TextRect(Rect, Txt, [tfSingleLine, tfCenter, tfVerticalCenter, tfEndEllipsis]);
   Exit;
  end;
 Task:=FTaskItems[ARow];
 with D2 do
  begin
   BeginDraw;
   TableExTasks.Canvas.Font.Size:=9;
   if Assigned(Task.LabelItems) then
    begin
     LP:=Rect.Left+10;
     for i:= 0 to Task.LabelItems.Count-1 do
      begin
       Brush.Color:=Task.LabelItems[i].Color;
       Pen.Color:=ColorDarker(Brush.Color);
       Txt:=Task.LabelItems[i].Name;
       TxtRect:=Rect;
       TxtRect.Left:=LP;
       TxtRect.Width:=TableExTasks.Canvas.TextWidth(Txt) + 12;
       TxtRect.Top:=TxtRect.Top + 20 + 4;
       TxtRect.Bottom:=TxtRect.Bottom - 6;
       LP:=TxtRect.Right+10;
       RoundRect(TxtRect, TxtRect.Height, TxtRect.Height);
      end;
    end;
   EndDraw;
  end;
 case ACol of
  1:Txt:=Task.Name;
  2:if Task.Deadline then Txt:=FormatDateTime('c', Task.DateDeadline);
 else
  Txt:='';
 end;
 with TableExTasks.Canvas do
  begin
   Font.Size:=11;
   TxtRect:=Rect;
   TxtRect.Offset(2, 2);
   TxtRect.Bottom:=TxtRect.Top + 20;
   TxtRect.Right:=TxtRect.Right - 100;
   TextRect(TxtRect, Txt, [tfSingleLine, tfLeft, tfVerticalCenter, tfEndEllipsis]);
   if Assigned(Task.LabelItems) then
    begin
     LP:=Rect.Left+10;
     for i:= 0 to Task.LabelItems.Count-1 do
      begin
       Font.Size:=9;
       Brush.Style:=bsClear;
       Txt:=Task.LabelItems[i].Name;
       TxtRect:=Rect;
       TxtRect.Left:=LP;
       TxtRect.Width:=TextWidth(Txt) + 12;
       TxtRect.Top:=TxtRect.Top + 20 + 4;
       TxtRect.Bottom:=TxtRect.Bottom - 6;
       LP:=TxtRect.Right+10;
       TxtRect.Inflate(-6, 0);
       Font.Color:=GetNormColor(Task.LabelItems[i].Color);
       TextRect(TxtRect, Txt, [tfSingleLine, tfCenter, tfVerticalCenter, tfEndEllipsis]);
      end;
    end;
   Font.Color:=clWhite;
  end;
end;

procedure TFormMain.TableExTasksEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
 if not IndexInList(ARow, FTaskItems.Count) then Exit;
 case ACol of
  1:
   begin
    Allow:=True;
    Data.EditMode:=teText;
    Data.TextValue:=FTaskItems[ARow].Name;
   end;
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
      FTaskItems.Delete(ARow);
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
      if not FTaskItems[ARow].Saved then FTaskItems.Delete(ARow);
     end
    else
     begin
      FTaskItems.Update(ARow);
     end;
   end;
 end;
end;

procedure TFormMain.TableExTasksKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_F2 then
  begin
   if not IndexInList(TableExTasks.ItemIndex, FTaskItems.Count) then Exit;
   TableExTasks.Edit(TableExTasks.ItemIndex, 1)
  end;
end;

procedure TFormMain.TableExTasksMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Pt:TPoint;
begin
 if Button = mbRight then
  begin
   if not IndexInList(TableExTasks.ItemUnderMouse, FTaskItems.Count) then Exit;
   Pt:=Mouse.CursorPos;
   PopupMenuTask.Popup(Pt.X, Pt.Y);
  end;
end;

procedure TFormMain.TableExTimesDrawCellData(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
 if not IndexInList(ARow, FTimeItems.Count) then Exit;
 if ACol <> 0 then Exit;
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
 if not IndexInList(Index, TableExTimes.Columns.Count) then Exit;
 case Index of
  0: FTimeItems.Delete(TableExTimes.ItemIndex);
 end;
end;

procedure TFormMain.TimerRepaintTimer(Sender: TObject);
begin
 DrawPanel.Repaint;
end;

procedure TFormMain.TimerTimeTimer(Sender: TObject);
begin
 FCurrentTime:=Frac(Now);
 FNowTimeMin:=GetMins(FCurrentTime);
 if FDoTimeSection then
  begin
   ButtonFlatTaskStart.Caption:=FormatDateTime('HH:mm:ss', FNewTEnd-FNewTStart);
   FNewTEnd:=Frac(Now);
  end;
 if FLastDate < Trunc(Now) then
  begin
   FLastDate:=Trunc(Now);
   Calendar.Date:=FLastDate;
  end;
end;

end.

unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB,
  System.ImageList, Vcl.ImgList, HGM.Button, sPanel, Vcl.WinXCalendars,
  Vcl.AppEvnts, Vcl.Menus, Vcl.Samples.Calendar;

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
    sDragBar1: TsDragBar;
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
    sDragBar3: TsDragBar;
    Shape1: TShape;
    ButtonFlatMinimize: TButtonFlat;
    ApplicationEvents1: TApplicationEvents;
    TableExTasks: TTableEx;
    Panel2: TPanel;
    PanelClient: TPanel;
    ButtonFlatSettings: TButtonFlat;
    ButtonFlatTimes: TButtonFlat;
    PanelCalendar: TPanel;
    ButtonFlatCalendar: TButtonFlat;
    Shape2: TShape;
    Shape3: TShape;
    PopupMenuTaskStart: TPopupMenu;
    MenuItemTaskStartFrom: TMenuItem;
    ButtonFlat6: TButtonFlat;
    Calendar: TCalendarPicker;
    ButtonFlat7: TButtonFlat;
    ButtonFlatAddTime: TButtonFlat;
    ButtonFlat1: TButtonFlat;
    DrawGrid1: TDrawGrid;
    Panel3: TPanel;
    EditNewTaskName: TEdit;
    ButtonFlat2: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlat5: TButtonFlat;
    ButtonFlat8: TButtonFlat;
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
    procedure TableExTasksGetData(FCol, FRow: Integer; var Value: string);
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
    FDB:TDB;                     //База
    FTimeItems:TTimeItems;       //Работы над задачами
    FTaskItems:TTaskItems;       //Задачи
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
    procedure SetCurrentDate(const Value: TDate);
    procedure SlideTo(Slide: TSlide);
    function StartTask(TimeStart: TTime): Boolean;
    function AddTaskTime(ADate: TDate; TStart, TEnd:TTime): Boolean;
    procedure UpdateCalendar;
    function GetCellText(ACol, ARow: Integer): string;
    function DaysThisMonth: Integer;
  public
    property CurrentDate:TDate read FCurrentDate write SetCurrentDate;
  end;

const
  StartOfWeek = 1; //пн

var
  FormMain: TFormMain;

implementation
 uses Math, YOTM.InputItem;

{$R *.dfm}

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

function TFormMain.GetCellText(ACol, ARow: Integer): string;
var
  DayNum: Integer;
begin
  if ARow = 0 then  { day names at tops of columns }
    Result := FormatSettings.ShortDayNames[(StartOfWeek + ACol) mod 7 + 1]
  else
  begin
    DayNum := FMonthOffset + ACol + (ARow - 1) * 7;
    if (DayNum < 1) or (DayNum > DaysThisMonth) then Result := ''
    else Result := IntToStr(DayNum);
  end;
end;

procedure TFormMain.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  TheText: string;
begin
  TheText := GetCellText(ACol, ARow);
  with Rect, DrawGrid1.Canvas do
   begin
    Brush.Color:=Color;
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

       FPanelMouseDown:=False;
       FPanelMouseDownPos:=Point(-1, -1);
       if FRangeFrom = FRangeTo then
        begin
         if IndexInList(FTimeItemUnderCursor, FTimeItems.Count) then
          TableExTimes.ItemIndex:=FTimeItemUnderCursor;
         Exit;
        end;
       AddTaskTime(CurrentDate, FRangeFrom, FRangeTo);
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
    MPos, H, M, i, LastLeft, LastTextWidth:Integer;
    MProc:Double;
    KeepTime:TTime;
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
    ScaleRect.Left:=50;
    ScaleRect.Right:=CRect.Right - 50;
    ScaleRect.Bottom:=CRect.Bottom - 50;
    ScaleRect.Top:=ScaleRect.Bottom - 15;
    //if ScaleRect.Contains(FPanelMouse) then Brush.Color:=$0019A0E3 else
    Brush.Color:=$0016597D;
    Pen.Color:=Brush.Color;
    RoundRect(ScaleRect, ScaleRect.Height, ScaleRect.Height);

    Brush.Style:=bsClear;
    TextOut(ScaleRect.Left - 30, ScaleRect.Top - 20, FormatDateTime('HH:mm', DateTimePickerStart.Time));
    TextOut(ScaleRect.Right, ScaleRect.Top - 20, FormatDateTime('HH:mm', DateTimePickerEnd.Time));

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
        RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);
       end
      else
       begin
        tmpRect.Left:=FPanelMouseDownPos.X;
        tmpRect.Left:=Min(Max(ScaleRect.Left, tmpRect.Left), ScaleRect.Right - tmpRect.Height);
        tmpRect.Right:=Max(Min(tmpRect.Right, MPos), tmpRect.Left);
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
      TextOut(MPos - 15, ScaleRect.Top - 40, FormatDateTime('HH:mm - от начала дня', GetTime(H * 60 + M)));
      TextOut(MPos - 15, ScaleRect.Top - 60, FormatDateTime('HH:mm - указано', SelTime));
      TextOut(MPos - 15, ScaleRect.Top - 80, FormatDateTime('HH:mm - разница с текущим', GetTime(Abs(GetMins(FCurrentTime) - (H * 60 + M) - GetMins(DateTimePickerStart.Time)))));
      //Диапазон выбора
      MProc:=FPanelMouseDownPos.X - ScaleRect.Left;
      MProc:=MProc / (ScaleRect.Width / 100);
      MProc:=MProc * (FWorkTimeMin / 100); //Минуты

      H:=Ceil(MProc) div 60;
      M:=Trunc(Ceil(MProc) mod 60 / 5) * 5;
      KeepTime:=GetTime(GetMins(DateTimePickerStart.Time) + (H * 60 + M));
      FRangeFrom:=KeepTime;
      if FPanelMouseDown then
       begin
        FRangeTo:=SelTime;
        TextOut(MPos - 15, ScaleRect.Top - 100, FormatDateTime('HH:mm - ', KeepTime)+FormatDateTime('HH:mm - выбрано', SelTime));
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
begin
 Item:=TTimeItem.Create(FTimeItems);
 with Item do
  begin
   Date:=Trunc(ADate);
   TimeFrom:=TStart;
   TimeTo:=TEnd;
   Description:='';
  end;
 FormInputText.EditText.Text:='';
 FormInputText.DateTimePickerFrom.Time:=Item.TimeFrom;
 FormInputText.DateTimePickerTo.Time:=Item.TimeTo;
 FormInputText.Position:=poMainFormCenter;
 if FormInputText.ShowModal = mrOK then
  begin
   Item.Description:=FormInputText.EditText.Text;
   Item.TimeFrom:=FormInputText.DateTimePickerFrom.Time;
   Item.TimeTo:=FormInputText.DateTimePickerTo.Time;
   FTimeItems.Insert(0, Item);
   FTimeItems.Update(0);
  end
 else Item.Free;
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


procedure TFormMain.ButtonFlatSettingsClick(Sender: TObject);
begin
 SlideTo(slSettings);
end;

procedure TFormMain.ButtonFlatTimesClick(Sender: TObject);
begin
 SlideTo(slTimes);
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
 TableExTasks.Edit(0, 1);
end;

procedure TFormMain.ButtonFlat6Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date + 1;
end;

procedure TFormMain.ButtonFlat7Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date - 1;
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


procedure TFormMain.FormCreate(Sender: TObject);
begin
 ClientWidth:=900;
 FDB:=TDB.Create(ExtractFilePath(ParamStr(0))+'\data.db');
 FTimeItems:=TTimeItems.Create(FDB, TableExTimes);
 FTaskItems:=TTaskItems.Create(FDB, TableExTasks);
 CurrentDate:=Now;
 FLastDate:=Trunc(Now);
 DateTimePickerEndChange(nil);
 FDoTimeSection:=False;
 TimerTimeTimer(nil);
 VisNow:=PanelTimes;
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
 Canvas.Pen.Color:=$00ADADAD;
 Canvas.Pen.Width:=3;
 Canvas.Rectangle(ClientRect);
end;

procedure TFormMain.MenuItemTaskStartFromClick(Sender: TObject);
begin
 StartTask(FRangeFrom);
end;

procedure TFormMain.SetCurrentDate(const Value: TDate);
begin
 FCurrentDate:=Value;
 Calendar.Date:=FCurrentDate;
 FTimeItems.Reload(FCurrentDate);
 FTaskItems.Reload(FCurrentDate);
 UpdateCalendar;
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
    if not FTaskItems[ARow].Saved then FTaskItems.Delete(ARow);
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

procedure TFormMain.TableExTasksGetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FTaskItems.Count) then Exit;
 Value:='';
 case FCol of
  1:Value:=FTaskItems[FRow].Name;
  2:if FTaskItems[FRow].Deadline then Value:=FormatDateTime('c', FTaskItems[FRow].DateDeadline);
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

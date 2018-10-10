unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB,
  System.ImageList, Vcl.ImgList, HGM.Button, sPanel, Vcl.WinXCalendars,
  Vcl.AppEvnts;

type
  TTimeSection = record
   TimeS, TimeE:TTime;
  end;

  TSlide = (slTasks, slTimes, slSettings);

  TTimeSections = TList<TTimeSection>;

  TFormMain = class(TForm)
    TimerRepaint: TTimer;
    TimerTime: TTimer;
    PanelTimes: TPanel;
    DrawPanel: TDrawPanel;
    TableEx1: TTableEx;
    ImageList1: TImageList;
    sDragBar1: TsDragBar;
    ButtonFlat1: TButtonFlat;
    PanelSettings: TPanel;
    DateTimePickerStart: TDateTimePicker;
    DateTimePickerEnd: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    ButtonFlat4: TButtonFlat;
    sDragBar2: TsDragBar;
    ButtonFlat5: TButtonFlat;
    Label3: TLabel;
    Panel1: TPanel;
    Calendar: TCalendarPicker;
    ButtonFlat2: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    ButtonFlat6: TButtonFlat;
    ButtonFlat7: TButtonFlat;
    PanelClient: TPanel;
    PanelTasks: TPanel;
    sDragBar3: TsDragBar;
    Label7: TLabel;
    Shape1: TShape;
    ButtonFlat8: TButtonFlat;
    ApplicationEvents1: TApplicationEvents;
    procedure TimerRepaintTimer(Sender: TObject);
    procedure DrawPanelPaint(Sender: TObject);
    procedure DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePickerEndChange(Sender: TObject);
    procedure TimerTimeTimer(Sender: TObject);
    procedure DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableEx1GetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlat1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure CalendarChange(Sender: TObject);
    procedure ButtonFlat3Click(Sender: TObject);
    procedure ButtonFlat2Click(Sender: TObject);
    procedure TableEx1ItemColClick(Sender: TObject; MouseButton: TMouseButton;
      const Index: Integer);
    procedure TableEx1DrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlat4Click(Sender: TObject);
    procedure ButtonFlat7Click(Sender: TObject);
    procedure ButtonFlat6Click(Sender: TObject);
    procedure CalendarCloseUp(Sender: TObject);
    procedure ButtonFlat8Click(Sender: TObject);
    procedure ButtonFlat5Click(Sender: TObject);
  private
    FLastDate:TDate;                                                            //Реальная дата
    FPanelMouse:TPoint;
    FWorkTimeMin:Integer;
    FNowTimeMin:Integer;
    ScaleRect:TRect;
    FPanelMouseDown:Boolean;
    FPanelMouseDownPos:TPoint;
    FRangeFrom:TTime;
    FRangeTo:TTime;
    FDB:TDB;
    FTimeItems:TTimeItems;
    FCurrentDate: TDate;
    FTimeSections:TTimeSections;
    FDoTimeSection:Boolean;
    FNewTStart:TTime;
    FNewTEnd:TTime;
    FTimeItemUnderCursor:Integer;
    FCurrentTime:TTime;
    procedure SetCurrentDate(const Value: TDate);
    procedure SlideTo(Slide: TSlide);
  public
    property CurrentDate:TDate read FCurrentDate write SetCurrentDate;
  end;

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

procedure TFormMain.DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouseDown:=ScaleRect.Contains(FPanelMouse);
 FPanelMouseDownPos:=Point(X, Y);
end;

procedure TFormMain.DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouse:=Point(X, Y);
 if ScaleRect.Contains(FPanelMouse) then DrawPanel.Cursor:=crHandPoint
 else DrawPanel.Cursor:=crDefault;
 TimerRepaintTimer(nil);
end;

procedure TFormMain.DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Item:TTimeItem;
begin
 if FPanelMouseDown then
  begin

   FPanelMouseDown:=False;
   FPanelMouseDownPos:=Point(-1, -1);
   if FRangeFrom = FRangeTo then
    begin
     if IndexInList(FTimeItemUnderCursor, FTimeItems.Count) then
      TableEx1.ItemIndex:=FTimeItemUnderCursor;
     Exit;
    end;
   Item:=TTimeItem.Create(FTimeItems);
   with Item do
    begin
     Date:=Trunc(CurrentDate);
     TimeFrom:=FRangeFrom;
     TimeTo:=FRangeTo;
     Description:='';
    end;
   if FormInputText.ShowModal = mrOK then
    begin
     Item.Description:=FormInputText.EditText.Text;
     FTimeItems.Insert(0, Item);
     FTimeItems.Update(0);
    end
   else Item.Free;
  end;
end;

procedure TFormMain.DrawPanelPaint(Sender: TObject);
var CRect, tmpRect, txtRect:TRect;
    MPos, H, M, i, LastLeft, LastTextWidth:Integer;
    MProc:Double;
    SelTime:TTime;
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
      if i <> TableEx1.ItemIndex then
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
      if FPanelMouseDown then
       begin
        MProc:=FPanelMouseDownPos.X - ScaleRect.Left;
        MProc:=MProc / (ScaleRect.Width / 100);
        MProc:=MProc * (FWorkTimeMin / 100); //Минуты

        H:=Ceil(MProc) div 60;
        M:=Trunc(Ceil(MProc) mod 60 / 5) * 5;
        KeepTime:=GetTime(GetMins(DateTimePickerStart.Time) + (H * 60 + M));
        FRangeFrom:=KeepTime;
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

procedure TFormMain.ButtonFlat1Click(Sender: TObject);
begin
 Close;
end;

procedure TFormMain.ButtonFlat2Click(Sender: TObject);
var Item:TTimeItem;
begin
 if FDoTimeSection then
  begin
   ButtonFlat3.Caption:='Начать';
   FDoTimeSection:=False;
   FNewTEnd:=Frac(Now);
   FPanelMouseDown:=False;
   FPanelMouseDownPos:=Point(-1, -1);
   Item:=TTimeItem.Create(FTimeItems);
   with Item do
    begin
     Date:=Trunc(Now);
     TimeFrom:=FNewTStart;
     TimeTo:=FNewTEnd;
     Description:='';
    end;
   if FormInputText.ShowModal = mrOK then
    begin
     Item.Description:=FormInputText.EditText.Text;
     FTimeItems.Insert(0, Item);
     FTimeItems.Update(0);
    end
   else Item.Free;
  end;
end;

procedure TFormMain.ButtonFlat3Click(Sender: TObject);
begin
 if FDoTimeSection then Exit;
 CurrentDate:=Now;
 FNewTStart:=Frac(Now);
 FNewTEnd:=FNewTStart;
 FDoTimeSection:=True;
end;

procedure AnimateControlLeft(TargetObject:TControl; HaveTime:Cardinal; ToValue:Integer);
var i, delta:Integer;
begin
 delta:=(ToValue - TargetObject.Left) div HaveTime;
 for i:= 1 to HaveTime do
  begin
   TargetObject.Left:=TargetObject.Left + delta;
  // Sleep(1);
   Application.ProcessMessages;
  end;
 TargetObject.Left:=ToValue;
end;

procedure TFormMain.ButtonFlat4Click(Sender: TObject);
begin
 SlideTo(slSettings);
end;

procedure TFormMain.ButtonFlat5Click(Sender: TObject);
begin
 SlideTo(slTimes);
end;

procedure TFormMain.ButtonFlat6Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date + 1;
end;

procedure TFormMain.ButtonFlat7Click(Sender: TObject);
begin
 Calendar.Date:=Calendar.Date - 1;
end;

procedure TFormMain.SlideTo(Slide:TSlide);
begin
 Enabled:=False;
 case Slide of
  slTasks: AnimateControlLeft(PanelClient, 20, 0);
  slTimes: AnimateControlLeft(PanelClient, 20, 450);
  slSettings: AnimateControlLeft(PanelClient, 20, 0);
 end;
 Enabled:=True;
end;

procedure TFormMain.ButtonFlat8Click(Sender: TObject);
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
 Caption:=IntToStr(FWorkTimeMin);
end;


procedure TFormMain.FormCreate(Sender: TObject);
begin
 ClientWidth:=900;
 FDB:=TDB.Create(ExtractFilePath(ParamStr(0))+'\data.db');
 FTimeItems:=TTimeItems.Create(FDB, TableEx1);
 CurrentDate:=Now;
 FLastDate:=Trunc(Now);
 DateTimePickerEndChange(nil);
 FDoTimeSection:=False;
 TimerTimeTimer(nil);
end;

procedure TFormMain.FormPaint(Sender: TObject);
begin
 Canvas.Pen.Color:=$00ADADAD;
 Canvas.Pen.Width:=3;
 Canvas.Rectangle(ClientRect);
end;

procedure TFormMain.SetCurrentDate(const Value: TDate);
begin
 FCurrentDate:=Value;
 Calendar.Date:=FCurrentDate;
 FTimeItems.Reload(FCurrentDate);
end;

procedure TFormMain.TableEx1DrawCellData(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
 if not IndexInList(ARow, FTimeItems.Count) then Exit;
 if ACol <> 0 then Exit;
 if (not (gdHotTrack in State)) and (ARow <> TableEx1.ItemIndex) then Exit;
 ImageList1.Draw(TableEx1.Canvas, Rect.Left + (Rect.Width div 2 - 24 div 2), Rect.Top, 2, True);
end;

procedure TFormMain.TableEx1GetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FTimeItems.Count) then Exit;
 Value:='';
 case FCol of
  1:Value:=FormatDateTime('HH:mm', FTimeItems[FRow].TimeFrom)+' - '+FormatDateTime('HH:mm', FTimeItems[FRow].TimeTo);
  2:Value:=FTimeItems[FRow].Description;
 end;
end;

procedure TFormMain.TableEx1ItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
 if not IndexInList(TableEx1.ItemIndex, FTimeItems.Count) then Exit;
 if not IndexInList(Index, TableEx1.Columns.Count) then Exit;
 case Index of
  0: FTimeItems.Delete(TableEx1.ItemIndex);
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
   ButtonFlat3.Caption:=FormatDateTime('HH:mm:ss', FNewTEnd-FNewTStart);
   FNewTEnd:=Frac(Now);
  end;
 if FLastDate < Trunc(Now) then
  begin
   FLastDate:=Trunc(Now);
   Calendar.Date:=FLastDate;
  end;
end;

end.

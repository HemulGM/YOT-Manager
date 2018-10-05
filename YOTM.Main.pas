unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    DateTimePickerStart: TDateTimePicker;
    DateTimePickerEnd: TDateTimePicker;
    DateTimePickerCur: TDateTimePicker;
    Timer2: TTimer;
    Panel1: TPanel;
    DrawPanel: TDrawPanel;
    TableEx1: TTableEx;
    procedure Timer1Timer(Sender: TObject);
    procedure DrawPanelPaint(Sender: TObject);
    procedure DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure DateTimePickerEndChange(Sender: TObject);
    procedure DateTimePickerCurChange(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableEx1GetData(FCol, FRow: Integer; var Value: string);
  private
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
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 uses Math;

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

procedure TForm1.DrawPanelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouseDown:=ScaleRect.Contains(FPanelMouse);
 FPanelMouseDownPos:=Point(X, Y);
end;

procedure TForm1.DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouse:=Point(X, Y);
 if ScaleRect.Contains(FPanelMouse) then DrawPanel.Cursor:=crHandPoint
 else DrawPanel.Cursor:=crDefault;
 Timer1Timer(nil);
end;

procedure TForm1.DrawPanelMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Item:TTimeItem;
begin
 if FPanelMouseDown then
  begin
   FPanelMouseDown:=False;
   FPanelMouseDownPos:=Point(-1, -1);
   Item:=TTimeItem.Create(FTimeItems);
   with Item do
    begin
     Description:='';
     TimeFrom:=FRangeFrom;
     TimeTo:=FRangeTo;
    end;
   FTimeItems.Insert(0, Item);
  end;
end;

procedure TForm1.DrawPanelPaint(Sender: TObject);
var CRect, tmpRect:TRect;
    MPos, H, M:Integer;
    MProc:Double;
    SelTime:TTime;
    KeepTime:TTime;
begin
 CRect:=DrawPanel.ClientRect;
 with TDirect2DCanvas.Create(DrawPanel.Canvas, DrawPanel.ClientRect) do
  begin
   BeginDraw;
   try
    Brush.Color:=$0043B6E3;
    FillRect(CRect);
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
    TextOut(tmpRect.Right - 15, tmpRect.Bottom + 5, FormatDateTime('HH:mm', DateTimePickerCur.Time));

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
      TextOut(MPos - 15, ScaleRect.Top - 40, FormatDateTime('HH:mm - от начала дня', GetTime(H * 60 + M)));
      TextOut(MPos - 15, ScaleRect.Top - 60, FormatDateTime('HH:mm - указано', SelTime));
      TextOut(MPos - 15, ScaleRect.Top - 80, FormatDateTime('HH:mm - разница с текущим', GetTime(Abs(GetMins(DateTimePickerCur.Time) - (H * 60 + M) - GetMins(DateTimePickerStart.Time)))));
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

procedure TForm1.DateTimePickerCurChange(Sender: TObject);
begin
 if Frac(DateTimePickerCur.Time) < Frac(DateTimePickerStart.Time) then
  DateTimePickerCur.Time:=DateTimePickerStart.Time;
 if Frac(DateTimePickerCur.Time) > Frac(DateTimePickerEnd.Time) then
  DateTimePickerCur.Time:=DateTimePickerEnd.Time;
 FNowTimeMin:=GetMins(DateTimePickerCur.Time);
end;

procedure TForm1.DateTimePickerEndChange(Sender: TObject);
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
 DateTimePickerCur.MinDate:=DateTimePickerStart.Time;
 DateTimePickerCur.MaxDate:=DateTimePickerEnd.Time;
 DateTimePickerCurChange(nil);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 FDB:=TDB.Create(ExtractFilePath(ParamStr(0))+'\data.db');
 FTimeItems:=TTimeItems.Create(FDB, TableEx1);
 DateTimePickerEndChange(nil);
end;

procedure TForm1.TableEx1GetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FTimeItems.Count) then Exit;
 Value:='';
 case FCol of
  1:Value:=FTimeItems[FRow].Description;
  2:Value:=FormatDateTime('HH:mm', FTimeItems[FRow].TimeFrom)+' - '+FormatDateTime('HH:mm', FTimeItems[FRow].TimeTo);
 end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 DrawPanel.Repaint;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 DateTimePickerCur.Time:=Now;
 DateTimePickerCurChange(nil);
end;

end.

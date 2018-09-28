unit YOTM.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls;

type
  TDrawManager = class;

  TDrawControl = class
    FSize:TSize;
    FPos:TPoint;
    FZ:Integer;
    FColor:TColor;
    FOwner:TDrawManager;
  private
    function GetRect: TRect;
   public
    procedure Paint; virtual;
    procedure SetData(ASize:TSize; APos:TPoint; AColor:TColor; AZ:Integer); virtual;
    constructor Create(AOwner:TDrawManager); virtual;
    property Owner:TDrawManager read FOwner;
    property FormRect:TRect read GetRect;
    property Z:Integer read FZ write FZ;
  end;

  TDrawManager = class(TList<TDrawControl>)
   private
    FCanvas:TDirect2DCanvas;
   public
    procedure Paint;
    procedure Sort;
    property Canvas:TDirect2DCanvas read FCanvas;
  end;

  TForm1 = class(TForm)
    DrawPanel: TDrawPanel;
    Timer1: TTimer;
    dtpTimeStart: TDateTimePicker;
    dtpTimeEnd: TDateTimePicker;
    procedure Timer1Timer(Sender: TObject);
    procedure DrawPanelPaint(Sender: TObject);
    procedure DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure dtpTimeEndChange(Sender: TObject);
  private
    FPanelMouse:TPoint;
    FWorkTimeMin:Integer;
    ScaleRect:TRect;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
 uses Math;

{$R *.dfm}

procedure TForm1.DrawPanelMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
 FPanelMouse:=Point(X, Y);
 if ScaleRect.Contains(FPanelMouse) then DrawPanel.Cursor:=crHandPoint
 else DrawPanel.Cursor:=crDefault;
 Timer1Timer(nil);
end;

procedure TForm1.DrawPanelPaint(Sender: TObject);
var CRect, tmpRect:TRect;
    MPos, MProc, H, M:Integer;
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
    TextOut(ScaleRect.Left - 30, ScaleRect.Top - 20, FormatDateTime('HH:mm', dtpTimeStart.Time));
    TextOut(ScaleRect.Right, ScaleRect.Top - 20, FormatDateTime('HH:mm', dtpTimeEnd.Time));

    tmpRect:=ScaleRect;
    tmpRect.Inflate(5, 5);
    if tmpRect.Contains(FPanelMouse) then
     begin
      MPos:=Min(Max(FPanelMouse.X, ScaleRect.Left), ScaleRect.Right);
      MoveTo(MPos, ScaleRect.Top);
      LineTo(MPos, ScaleRect.Top - 20);

      MProc:=MPos - ScaleRect.Left;
      MProc:= Round(MProc / (ScaleRect.Width / 100));
      Brush.Color:=$0019A0E3;
      tmpRect:=ScaleRect;
      tmpRect.Right:=MPos;
      Brush.Style:=bsSolid;
      RoundRect(tmpRect, tmpRect.Height, tmpRect.Height);

      H:=Round(MProc * (FWorkTimeMin / 100)) div 60;
      M:=Trunc(Round(MProc * (FWorkTimeMin / 100)) mod 60 / 10) * 10;
      Brush.Style:=bsClear;
      TextOut(MPos - 20, ScaleRect.Top - 40, Format('%d:%d', [H, M]));
     end;

    TextOut(0, 0, Format('%d:%d', [FPanelMouse.X, FPanelMouse.Y]));
    //--------------------------------------
   finally
    EndDraw;
   end;
   Free;
  end;
end;

procedure TForm1.dtpTimeEndChange(Sender: TObject);
var H1, H2, M1, M2, S, MSec:Word;
begin
 DecodeTime(dtpTimeStart.Time, H1, M1, S, MSec);
 DecodeTime(dtpTimeEnd.Time, H2, M2, S, MSec);
 H1:=H1*60 + M1;
 H2:=H2*60 + M2;
 FWorkTimeMin:= H2 - H1;
 Caption:=IntToStr(FWorkTimeMin);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 dtpTimeEndChange(nil);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 DrawPanel.Repaint;
end;

{ TDrawControl }

constructor TDrawControl.Create(AOwner: TDrawManager);
begin
 FOwner:=AOwner;
end;

function TDrawControl.GetRect: TRect;
begin
 Result:=Rect(0, 0, FSize.Width, FSize.Height);
 Result.Offset(FPos);
end;

procedure TDrawControl.Paint;
begin
 with Owner.Canvas do
  begin
   Brush.Color:=FColor;
   Pen.Color:=Brush.Color;
   FillRect(FormRect);
  end;
end;

procedure TDrawControl.SetData(ASize:TSize; APos:TPoint; AColor:TColor; AZ:Integer);
begin
 FSize:=ASize;
 FPos:=APos;
 FColor:=AColor;
 FZ:=AZ;
end;

{ TDrawManager }

procedure TDrawManager.Paint;
var i:Integer;
begin
 for i:= 0 to Count-1 do Items[i].Paint;
end;

procedure TDrawManager.Sort;
var i, j:Integer;
    tmp:TDrawControl;
begin
 for i:= 0 to Count-2 do
  for j := i+1 to Count-1 do
   if Items[i].Z > Items[j].Z then
    begin
     tmp:=Items[i];
     Items[i]:=Items[j];
     Items[j]:=tmp;
    end;
end;

end.

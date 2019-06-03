unit YOTM.Form.DateNotify.TaskRepeat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  YOTM.Form.ModalEdit, Vcl.ExtCtrls, HGM.Button, Vcl.StdCtrls, Vcl.ComCtrls,
  HGM.Controls.PanelExt, YOTM.Main, Vcl.Grids, System.Generics.Collections,
  HGM.Controls.VirtualTable, YOTM.DB.Tasks, System.Types, System.UITypes;

type
  TMonthItem = record
    Name: string;
    Short: string;
    Checked: Boolean;
  end;

  TMonthItems = TList<TMonthItem>;

  TCalendarState = record
    MousePos: TPoint;
    MouseCord: TPoint;
    MouseActive: Boolean;
    MouseDown: Boolean;
  end;

  TFormTaskRepeat = class(TFormModalEdit)
    PageControl: TPageControl;
    TabSheetEmpty: TTabSheet;
    TabSheetDay: TTabSheet;
    Panel6: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    ButtonFlatRepNo: TButtonFlat;
    ButtonFlatRepDay: TButtonFlat;
    ButtonFlatRepWeek: TButtonFlat;
    ButtonFlatRepMonth: TButtonFlat;
    ButtonFlatRepYear: TButtonFlat;
    TabSheetWeek: TTabSheet;
    TabSheetMonth: TTabSheet;
    TabSheetYear: TTabSheet;
    Shape1: TShape;
    Label2: TLabel;
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
    DrawGridMonths: TDrawGrid;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ButtonFlatRepYearClick(Sender: TObject);
    procedure ButtonFlatWD1Click(Sender: TObject);
    procedure DrawGridMonthsDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DrawGridMonthsMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DrawGridMonthsMouseLeave(Sender: TObject);
    procedure DrawGridMonthsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawGridMonthsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawGridMonthsMouseEnter(Sender: TObject);
  private
    FCalendar: TMonthItems;
    FCalState: TCalendarState;
    FWorkDays: TWorkDays;
    FRepeatType: TTaskType;
    FRepeatString: string;
    procedure SetPage(Tab: TTabSheet);
    procedure SetWorkDays(const Value: TWorkDays);
    procedure SetRepeatString(const Value: string);
    procedure SetRepeatType(const Value: TTaskType);
    procedure UpdateControls;
    function GetRepeatString: string;
    function GetRepeatType: TTaskType;
    function GetWDays(Index: Byte): Boolean;
    procedure SetWDays(Index: Byte; const Value: Boolean);
  public
    property WorkDays: TWorkDays read FWorkDays write SetWorkDays;
    property WDays[Index: Byte]: Boolean read GetWDays write SetWDays;
    property RepeatString: string read GetRepeatString write SetRepeatString;
    property RepeatType: TTaskType read GetRepeatType write SetRepeatType;
    class function Select(var ARepeatString: string; var ARepeatType: TTaskType): Boolean;
  end;

var
  FormTaskRepeat: TFormTaskRepeat;

implementation

uses
  Math, DateUtils;

{$R *.dfm}

{ TFormTaskRepeat }

procedure TFormTaskRepeat.ButtonFlatRepYearClick(Sender: TObject);
begin
  case (Sender as TButtonFlat).Tag of
    0:
      SetPage(TabSheetEmpty);
    1:
      SetPage(TabSheetDay);
    2:
      SetPage(TabSheetWeek);
    3:
      SetPage(TabSheetMonth);
    4:
      SetPage(TabSheetYear);
  end;
end;

procedure TFormTaskRepeat.ButtonFlatWD1Click(Sender: TObject);
begin
  WDays[(Sender as TButtonFlat).Tag] := not WDays[(Sender as TButtonFlat).Tag];
end;

procedure TFormTaskRepeat.DrawGridMonthsDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  i: Integer;
  txt: string;
begin
  i := ARow * DrawGridMonths.ColCount + ACol + 1;
  with DrawGridMonths.Canvas do
  begin
    Brush.Color := $00383838;
    if FCalState.MouseActive then
    begin
      if FCalState.MouseCord = Point(ACol, ARow) then
        if FCalState.MouseDown then
          Brush.Color := $00616161
        else
          Brush.Color := $003A3A3A;
    end;
    if FCalendar[i - 1].Checked then
      Brush.Color := $00616161;

    Pen.Color := Brush.Color;
    Rectangle(Rect);
    txt := FCalendar[i - 1].Short;
    Font.Color := $00EFEFEF;
    Font.Size := 12;
    TextRect(Rect, txt, [tfSingleLine, tfVerticalCenter, tfCenter]);
  end;
end;

procedure TFormTaskRepeat.DrawGridMonthsMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FCalState.MouseDown := True;
  DrawGridMonths.Repaint;
end;

procedure TFormTaskRepeat.DrawGridMonthsMouseEnter(Sender: TObject);
begin
  FCalState.MouseActive := True;
  DrawGridMonths.Repaint;
end;

procedure TFormTaskRepeat.DrawGridMonthsMouseLeave(Sender: TObject);
begin
  FCalState.MouseActive := False;
  DrawGridMonths.Repaint;
end;

procedure TFormTaskRepeat.DrawGridMonthsMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var
  ACol, ARow: Integer;
begin
  FCalState.MousePos := Point(X, Y);
  DrawGridMonths.MouseToCell(X, Y, ACol, ARow);
  FCalState.MouseCord := Point(ACol, ARow);
  DrawGridMonths.Repaint;
end;

procedure TFormTaskRepeat.DrawGridMonthsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  Item: TMonthItem;
  i: Integer;
begin
  FCalState.MouseDown := False;
  i := FCalState.MouseCord.Y * DrawGridMonths.ColCount + FCalState.MouseCord.X;
  if IndexInList(i, FCalendar.Count) then
  begin
    Item := FCalendar[i];
    Item.Checked := not Item.Checked;
    FCalendar[i] := Item;
  end;
  DrawGridMonths.Repaint;
end;

procedure TFormTaskRepeat.FormCreate(Sender: TObject);
var
  i: Integer;
  Item: TMonthItem;
begin
  inherited;
  FCalendar := TMonthItems.Create;
  for i := 1 to 12 do
  begin
    Item.Name := FormatDateTime('MMMM', StrToDate('01.' + i.ToString + '.2000'));
    Item.Short := FormatDateTime('mmm', StrToDate('01.' + i.ToString + '.2000'));
    Item.Checked := False;
    FCalendar.Add(Item);
  end;
  DrawGridMonths.DefaultColWidth := DrawGridMonths.ClientWidth div 4;
  SetPage(TabSheetEmpty);
  WDays[1] := True;
  WDays[2] := True;
  WDays[3] := True;
  WDays[4] := True;
  WDays[5] := True;
  WDays[6] := False;
  WDays[7] := False;
end;

procedure TFormTaskRepeat.FormDestroy(Sender: TObject);
begin
  FCalendar.Free;
  inherited;
end;

function TFormTaskRepeat.GetRepeatString: string;
var
  i: Integer;
begin
  case FRepeatType of
    ttSimple:
      FRepeatString := '';
    ttRepeatInDay:
      FRepeatString := '';
    ttRepeatInWeek:
      begin
        FRepeatString := '';
        for i := 1 to 7 do
          FRepeatString := FRepeatString + IntToStr(Ord(WDays[i]));
      end;
    ttRepeatInMonth:
      begin
        FRepeatString := '';
        for i := 1 to 12 do
          FRepeatString := FRepeatString + IntToStr(Ord(FCalendar[i - 1].Checked));
      end;
    ttRepeatInYear:
      FRepeatString := '';
  end;
  Result := FRepeatString;
end;

function TFormTaskRepeat.GetRepeatType: TTaskType;
begin
  Result := FRepeatType;
end;

function TFormTaskRepeat.GetWDays(Index: Byte): Boolean;
begin
  Result := FWorkDays[Index];
end;

class function TFormTaskRepeat.Select(var ARepeatString: string; var ARepeatType: TTaskType): Boolean;
begin
  Result := False;
  with TFormTaskRepeat.Create(nil) do
  begin
    RepeatString := ARepeatString;
    RepeatType := ARepeatType;
    if ShowModal = mrOk then
    begin
      ARepeatString := RepeatString;
      ARepeatType := RepeatType;
      Result := True;
    end;
    Free;
  end;
end;

procedure TFormTaskRepeat.SetPage(Tab: TTabSheet);

  procedure SetButtonCheck(Button: TButtonFlat; Value: Boolean);
  begin
    if Value then
      Button.ImageIndex := 25
    else
      Button.ImageIndex := 24;
  end;

begin
  if Tab = TabSheetEmpty then
    FRepeatType := ttSimple
  else if Tab = TabSheetDay then
    FRepeatType := ttRepeatInDay
  else if Tab = TabSheetWeek then
    FRepeatType := ttRepeatInWeek
  else if Tab = TabSheetMonth then
    FRepeatType := ttRepeatInMonth
  else if Tab = TabSheetYear then
    FRepeatType := ttRepeatInYear
  else
    FRepeatType := ttSimple;
  SetButtonCheck(ButtonFlatRepNo, Tab = TabSheetEmpty);
  SetButtonCheck(ButtonFlatRepDay, Tab = TabSheetDay);
  SetButtonCheck(ButtonFlatRepWeek, Tab = TabSheetWeek);
  SetButtonCheck(ButtonFlatRepMonth, Tab = TabSheetMonth);
  SetButtonCheck(ButtonFlatRepYear, Tab = TabSheetYear);
  PageControl.ActivePage := Tab;
end;

procedure TFormTaskRepeat.UpdateControls;
var
  i: Integer;
  Item: TMonthItem;
begin
  case FRepeatType of
    ttSimple:
      begin
        SetPage(TabSheetEmpty);
      end;
    ttRepeatInDay:
      begin
        SetPage(TabSheetDay);
      end;
    ttRepeatInWeek:
      begin
        SetPage(TabSheetWeek);
        if FRepeatString.Length >= 7 then
          for i := 1 to 7 do
          begin
            WDays[i] := FRepeatString[i] = '1';
          end;
      end;
    ttRepeatInMonth:
      begin
        SetPage(TabSheetMonth);
        if FRepeatString.Length >= 12 then
          for i := 1 to 11 do
          begin
            Item := FCalendar[i - 1];
            Item.Checked := FRepeatString[i] = '1';
            FCalendar[i - 1] := Item;
          end;
      end;
    ttRepeatInYear:
      begin
        SetPage(TabSheetYear);
      end;
  end;
end;

procedure TFormTaskRepeat.SetRepeatString(const Value: string);
begin
  FRepeatString := Value;
  UpdateControls;
end;

procedure TFormTaskRepeat.SetRepeatType(const Value: TTaskType);
begin
  FRepeatType := Value;
  UpdateControls;
end;

procedure TFormTaskRepeat.SetWDays(Index: Byte; const Value: Boolean);
begin
  FWorkDays[Index] := Value;
  SetButtonCheck(ButtonFlatWD1, FWorkDays[1]);
  SetButtonCheck(ButtonFlatWD2, FWorkDays[2]);
  SetButtonCheck(ButtonFlatWD3, FWorkDays[3]);
  SetButtonCheck(ButtonFlatWD4, FWorkDays[4]);
  SetButtonCheck(ButtonFlatWD5, FWorkDays[5]);
  SetButtonCheck(ButtonFlatWD6, FWorkDays[6]);
  SetButtonCheck(ButtonFlatWD7, FWorkDays[7]);
end;

procedure TFormTaskRepeat.SetWorkDays(const Value: TWorkDays);
begin
  FWorkDays := Value;
  SetButtonCheck(ButtonFlatWD1, FWorkDays[1]);
  SetButtonCheck(ButtonFlatWD2, FWorkDays[2]);
  SetButtonCheck(ButtonFlatWD3, FWorkDays[3]);
  SetButtonCheck(ButtonFlatWD4, FWorkDays[4]);
  SetButtonCheck(ButtonFlatWD5, FWorkDays[5]);
  SetButtonCheck(ButtonFlatWD6, FWorkDays[6]);
  SetButtonCheck(ButtonFlatWD7, FWorkDays[7]);
end;

end.


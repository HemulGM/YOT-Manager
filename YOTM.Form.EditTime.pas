unit YOTM.Form.EditTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, HGM.Button, HGM.Controls.PanelExt, System.Types,
  Vcl.Grids, HGM.Controls.VirtualTable, HGM.Popup;

type
  TFormEditTime = class(TFormModalEdit)
    Label1: TLabel;
    ButtonFlat1: TButtonFlat;
    ButtonFlatTimeFromHH: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlatTimeFromMM: TButtonFlat;
    ButtonFlat6: TButtonFlat;
    ButtonFlat7: TButtonFlat;
    ButtonFlatTimeToHH: TButtonFlat;
    ButtonFlat9: TButtonFlat;
    ButtonFlat10: TButtonFlat;
    ButtonFlatTimeToMM: TButtonFlat;
    ButtonFlat12: TButtonFlat;
    Label2: TLabel;
    Label3: TLabel;
    ButtonFlatTask: TButtonFlat;
    Panel1: TPanel;
    EditText: TRichEdit;
    PanelTasks: TPanel;
    TableExTasks: TTableEx;
    ButtonFlatWithoutTask: TButtonFlat;
    procedure ButtonFlatUPDOWNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonFlatTaskClick(Sender: TObject);
    procedure TableExTasksGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExTasksItemClick(Sender: TObject; MouseButton: TMouseButton;
      const Index: Integer);
    procedure ButtonFlatWithoutTaskClick(Sender: TObject);
  private
    FFromHH, FFromMM, FToHH, FToMM:Word;
    FTaskID: Integer;
    FPopup:TFormPopup;
    FTaskColor: TColor;
    procedure SetTimeFrom(const Value: TTime);
    procedure SetTimeTo(const Value: TTime);
    procedure UpdateTime;
    function GetTimeFrom: TTime;
    function GetTimeTo: TTime;
    procedure SetTaskID(const Value: Integer);
    function GetTaskID: Integer;
    procedure SetTaskColor(const Value: TColor);
  public
    property TimeFrom:TTime read GetTimeFrom write SetTimeFrom;
    property TimeTo:TTime read GetTimeTo write SetTimeTo;
    property TaskID:Integer read GetTaskID write SetTaskID;
    property TaskColor:TColor read FTaskColor write SetTaskColor;
  end;

var
  FormEditTime: TFormEditTime;

implementation
 uses YOTM.Main, Math;

{$R *.dfm}

procedure TFormEditTime.ButtonFlatTaskClick(Sender: TObject);
var pt:TPoint;
begin
 pt:=ButtonFlatTask.ClientToScreen(Point(0, 0));
 PanelTasks.Height:=Min(Max(3, TableExTasks.ItemCount), 15) * TableExTasks.DefaultRowHeight + ButtonFlatWithoutTask.Height;
 FPopup:=TFormPopup.Create(Self, PanelTasks, pt.X, pt.Y+ButtonFlatTask.Height);
end;

procedure TFormEditTime.ButtonFlatUPDOWNClick(Sender: TObject);
begin
 case (Sender as TButtonFlat).Tag of
  10: FFromHH:=Min(Max(0, FFromHH - 1), 23);
  11: FFromHH:=Min(Max(0, FFromHH + 1), 23);
  20: FFromMM:=Min(Max(0, FFromMM - 1), 59);
  21: FFromMM:=Min(Max(0, FFromMM + 1), 59);
  30:   FToHH:=Min(Max(0,   FToHH - 1), 23);
  31:   FToHH:=Min(Max(0,   FToHH + 1), 23);
  40:   FToMM:=Min(Max(0,   FToMM - 1), 59);
  41:   FToMM:=Min(Max(0,   FToMM + 1), 59);
 end;
 UpdateTime;
end;

procedure TFormEditTime.ButtonFlatWithoutTaskClick(Sender: TObject);
begin
 FPopup.Close;
 TaskID:=-1;
end;

procedure TFormEditTime.FormCreate(Sender: TObject);
begin
 inherited;
 TaskID:=-1;
 TableExTasks.ItemCount:=FormMain.TaskItems.Count;
end;

function TFormEditTime.GetTaskID: Integer;
begin
 if IndexInList(TableExTasks.ItemIndex, FormMain.TaskItems.Count) then
  Result:=FormMain.TaskItems[TableExTasks.ItemIndex].ID
 else Result:=FTaskID;
end;

function TFormEditTime.GetTimeFrom: TTime;
begin
 Result:=EncodeTime(FFromHH, FFromMM, 0, 0);
end;

function TFormEditTime.GetTimeTo: TTime;
begin
 Result:=EncodeTime(FToHH, FToMM, 0, 0);
end;

procedure TFormEditTime.SetTaskColor(const Value: TColor);
begin
 FTaskColor := Value;
end;

procedure TFormEditTime.SetTaskID(const Value: Integer);
var i: Integer;
begin
 FTaskID := Value;
 if FTaskID <> -1 then 
  begin
   for i:= 0 to FormMain.TaskItems.Count-1 do
    if FormMain.TaskItems[i].ID = FTaskID then
     begin
      ButtonFlatTask.Caption:=FormMain.TaskItems[i].Name;
      FTaskColor:=FormMain.TaskItems[i].Color;
      TableExTasks.ItemIndex:=i;
      Exit;
     end;
  end
 else
  begin      
   ButtonFlatTask.Caption:='Задача не выбрана';
  end;
end;

procedure TFormEditTime.SetTimeFrom(const Value: TTime);
var S, M:Word;
begin
 DecodeTime(Value, FFromHH, FFromMM, S, M);
 UpdateTime;
end;

procedure TFormEditTime.SetTimeTo(const Value: TTime);
var S, M:Word;
begin
 DecodeTime(Value, FToHH, FToMM, S, M);
 UpdateTime;
end;

procedure TFormEditTime.TableExTasksGetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FormMain.TaskItems.Count) then
  begin
   Value:='Нет задач. Измените фильтр';
   Exit;
  end;
 case FCol of
  0:Value:=FormMain.TaskItems[FRow].Name;
 end;
end;

procedure TFormEditTime.TableExTasksItemClick(Sender: TObject;
  MouseButton: TMouseButton; const Index: Integer);
begin
 FPopup.Close;
 if IndexInList(Index, FormMain.TaskItems.Count) then
  TaskID:=FormMain.TaskItems[Index].ID;
end;

procedure TFormEditTime.UpdateTime;
begin
 ButtonFlatTimeFromHH.Caption:=FormatDateTime('HH', TimeFrom);
 ButtonFlatTimeFromMM.Caption:=FormatDateTime('nn', TimeFrom);

 ButtonFlatTimeToHH.Caption:=FormatDateTime('HH', TimeTo);
 ButtonFlatTimeToMM.Caption:=FormatDateTime('nn', TimeTo);
end;

end.

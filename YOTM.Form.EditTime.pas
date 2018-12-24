unit YOTM.Form.EditTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, HGM.Button, sPanel, HGM.Controls.PanelExt,
  Vcl.Grids, HGM.Controls.VirtualTable, HGM.Popup;

type
  TFormEditTime = class(TFormModalEdit)
    Label1: TLabel;
    EditText: TEdit;
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
    TableExTasks: TTableEx;
    procedure ButtonFlatUPDOWNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonFlatTaskClick(Sender: TObject);
    procedure TableExTasksGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExTasksItemClick(Sender: TObject; MouseButton: TMouseButton;
      const Index: Integer);
  private
    FromHH, FromMM, ToHH, ToMM:Word;
    FTaskID: Integer;
    Popup:TFormPopup;
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
 Popup:=TFormPopup.Create(Self, TableExTasks, pt.X, pt.Y+ButtonFlatTask.Height);
end;

procedure TFormEditTime.ButtonFlatUPDOWNClick(Sender: TObject);
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

procedure TFormEditTime.FormCreate(Sender: TObject);
var i: Integer;
begin
 inherited;
 TaskID:=-1;
 TableExTasks.ItemCount:=FormMain.TaskItems.Count;
end;

function TFormEditTime.GetTaskID: Integer;
var i:Integer;
begin
 if IndexInList(TableExTasks.ItemIndex, FormMain.TaskItems.Count) then
  Result:=FormMain.TaskItems[TableExTasks.ItemIndex].ID
 else Result:=FTaskID;
end;

function TFormEditTime.GetTimeFrom: TTime;
begin
 Result:=EncodeTime(FromHH, FromMM, 0, 0);
end;

function TFormEditTime.GetTimeTo: TTime;
begin
 Result:=EncodeTime(ToHH, ToMM, 0, 0);
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
 DecodeTime(Value, FromHH, FromMM, S, M);
 UpdateTime;
end;

procedure TFormEditTime.SetTimeTo(const Value: TTime);
var S, M:Word;
begin
 DecodeTime(Value, ToHH, ToMM, S, M);
 UpdateTime;
end;

procedure TFormEditTime.TableExTasksGetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FormMain.TaskItems.Count) then Exit;
 case FCol of
  0:Value:=FormMain.TaskItems[FRow].Name;
 end;
end;

procedure TFormEditTime.TableExTasksItemClick(Sender: TObject;
  MouseButton: TMouseButton; const Index: Integer);
begin
 Popup.Close;
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

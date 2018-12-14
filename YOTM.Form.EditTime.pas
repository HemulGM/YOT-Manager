unit YOTM.Form.EditTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, HGM.Button, sPanel, HGM.Controls.PanelExt;

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
    ComboBoxTasks: TComboBoxEx;
    procedure ButtonFlatUPDOWNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FromHH, FromMM, ToHH, ToMM:Word;
    FTaskID: Integer;
    procedure SetTimeFrom(const Value: TTime);
    procedure SetTimeTo(const Value: TTime);
    procedure UpdateTime;
    function GetTimeFrom: TTime;
    function GetTimeTo: TTime;
    procedure SetTaskID(const Value: Integer);
    function GetTaskID: Integer;
  public
    property TimeFrom:TTime read GetTimeFrom write SetTimeFrom;
    property TimeTo:TTime read GetTimeTo write SetTimeTo;
    property TaskID:Integer read GetTaskID write SetTaskID;
  end;

var
  FormEditTime: TFormEditTime;

implementation
 uses YOTM.Main, Math;

{$R *.dfm}

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
 FTaskID:=-1;
 for i:= 0 to FormMain.TaskItems.Count-1 do
  with ComboBoxTasks.ItemsEx.Add do
   begin
    Caption:=FormMain.TaskItems[i].Name;
    ImageIndex:=FormMain.TaskItems[i].ID;
   end;
end;

function TFormEditTime.GetTaskID: Integer;
var i:Integer;
begin
 if ComboBoxTasks.ItemIndex >= 0 then
  Result:=ComboBoxTasks.ItemsEx[ComboBoxTasks.ItemIndex].ImageIndex
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

procedure TFormEditTime.SetTaskID(const Value: Integer);
var i: Integer;
begin
 FTaskID := Value;
 for i:= 0 to ComboBoxTasks.ItemsEx.Count-1 do
  if ComboBoxTasks.ItemsEx[i].ImageIndex = FTaskID then
   begin
    ComboBoxTasks.ItemIndex:=i;
    Exit;
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

procedure TFormEditTime.UpdateTime;
begin
 ButtonFlatTimeFromHH.Caption:=FormatDateTime('HH', TimeFrom);
 ButtonFlatTimeFromMM.Caption:=FormatDateTime('nn', TimeFrom);

 ButtonFlatTimeToHH.Caption:=FormatDateTime('HH', TimeTo);
 ButtonFlatTimeToMM.Caption:=FormatDateTime('nn', TimeTo);
end;

end.

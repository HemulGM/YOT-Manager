unit YOTM.Form.EditTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, HGM.Button, sPanel;

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
    procedure ButtonFlatUPDOWNClick(Sender: TObject);
  private
    FTimeTo: TTime;
    FTimeFrom: TTime;
    FromHH, FromMM, ToHH, ToMM:Word;
    procedure SetTimeFrom(const Value: TTime);
    procedure SetTimeTo(const Value: TTime);
    procedure UpdateTime;
    function GetTimeFrom: TTime;
    function GetTimeTo: TTime;
  public
    property TimeFrom:TTime read GetTimeFrom write SetTimeFrom;
    property TimeTo:TTime read GetTimeTo write SetTimeTo;
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

function TFormEditTime.GetTimeFrom: TTime;
begin
 Result:=EncodeTime(FromHH, FromMM, 0, 0);
end;

function TFormEditTime.GetTimeTo: TTime;
begin
 Result:=EncodeTime(ToHH, ToMM, 0, 0);
end;

procedure TFormEditTime.SetTimeFrom(const Value: TTime);
var S, M:Word;
begin
 FTimeFrom := Value;
 DecodeTime(FTimeFrom, FromHH, FromMM, S, M);
 UpdateTime;
end;

procedure TFormEditTime.SetTimeTo(const Value: TTime);
var S, M:Word;
begin
 FTimeTo := Value;
 DecodeTime(FTimeTo, ToHH, ToMM, S, M);
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

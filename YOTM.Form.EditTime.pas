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
    procedure SetTimeFrom(const Value: TTime);
    procedure SetTimeTo(const Value: TTime);
    procedure UpdateTime;
  public
    property TimeFrom:TTime read FTimeFrom write SetTimeFrom;
    property TimeTo:TTime read FTimeTo write SetTimeTo;
  end;

var
  FormEditTime: TFormEditTime;

implementation
 uses YOTM.Main;

{$R *.dfm}

procedure TFormEditTime.ButtonFlatUPDOWNClick(Sender: TObject);
begin
 case (Sender as TButtonFlat).Tag of
  10: TimeFrom:=TimeFrom - 1/24;
  11: TimeFrom:=TimeFrom + 1/24;
  20: TimeFrom:=TimeFrom - 1/24/60;
  21: TimeFrom:=TimeFrom + 1/24/60;
  30: TimeTo:=TimeTo - 1/24;
  31: TimeTo:=TimeTo + 1/24;
  40: TimeTo:=TimeTo - 1/24/60;
  41: TimeTo:=TimeTo + 1/24/60;
 end;
end;

procedure TFormEditTime.SetTimeFrom(const Value: TTime);
begin
 FTimeFrom := Value;
 UpdateTime;
end;

procedure TFormEditTime.SetTimeTo(const Value: TTime);
begin
 FTimeTo := Value;
 UpdateTime;
end;

procedure TFormEditTime.UpdateTime;
begin
 ButtonFlatTimeFromHH.Caption:=FormatDateTime('HH', FTimeFrom);
 ButtonFlatTimeFromMM.Caption:=FormatDateTime('nn', FTimeFrom);

 ButtonFlatTimeToHH.Caption:=FormatDateTime('HH', FTimeTo);
 ButtonFlatTimeToMM.Caption:=FormatDateTime('nn', FTimeTo);
end;

end.

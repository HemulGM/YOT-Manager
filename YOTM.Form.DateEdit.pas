unit YOTM.Form.DateEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ExtCtrls,
  HGM.Button, Vcl.StdCtrls, HGM.Controls.PanelExt, Vcl.WinXCalendars;

type
  TFormDateEdit = class(TFormModalEdit)
    CalendarView: TCalendarView;
  public
    class function Select(var Date: TDate): Boolean;
  end;

var
  FormDateEdit: TFormDateEdit;

implementation

{$R *.dfm}

{ TFormDateEdit }

class function TFormDateEdit.Select(var Date: TDate): Boolean;
begin
  Result := False;
  with TFormDateEdit.Create(nil) do
  begin
    CalendarView.Date := Date;
    if ShowModal = mrOk then
    begin
      Date := CalendarView.Date;
      Result := True;
    end;
    Free;
  end;
end;

end.

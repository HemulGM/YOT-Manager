unit YOTM.Form.DateNotify;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, HGM.Button,
  Vcl.StdCtrls, Vcl.ExtCtrls, sPanel, Vcl.WinXCalendars, YOTM.Main;

type
  TFormDateAndNotify = class(TFormModalEdit)
    CalendarView1: TCalendarView;
    Panel1: TPanel;
    Panel2: TPanel;
    Edit1: TEdit;
    ButtonFlat1: TButtonFlat;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDateAndNotify: TFormDateAndNotify;

implementation

{$R *.dfm}

end.

unit YOTM.Form.EditTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, HGM.Button, sPanel;

type
  TFormEditTime = class(TFormModalEdit)
    Label1: TLabel;
    Label2: TLabel;
    EditText: TEdit;
    DateTimePickerFrom: TDateTimePicker;
    DateTimePickerTo: TDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditTime: TFormEditTime;

implementation

{$R *.dfm}

end.

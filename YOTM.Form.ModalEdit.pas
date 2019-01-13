unit YOTM.Form.ModalEdit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form, Vcl.ExtCtrls, HGM.Button,
  Vcl.StdCtrls, HGM.Controls.PanelExt;

type
  TFormModalEdit = class(TFormCustom)
    PanelBottom: TPanel;
    ButtonFlatCancel: TButtonFlat;
    ButtonFlatOK: TButtonFlat;
    procedure ButtonFlatOKClick(Sender: TObject);
    procedure ButtonFlatCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormModalEdit: TFormModalEdit;

implementation

{$R *.dfm}

procedure TFormModalEdit.ButtonFlatCancelClick(Sender: TObject);
begin
 ModalResult:=mrCancel;
end;

procedure TFormModalEdit.ButtonFlatOKClick(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.

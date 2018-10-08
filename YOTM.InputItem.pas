unit YOTM.InputItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, sPanel, YOTM.Main,
  HGM.Button, Vcl.StdCtrls;

type
  TFormInputText = class(TForm)
    sDragBar1: TsDragBar;
    ButtonFlat1: TButtonFlat;
    Panel1: TPanel;
    EditText: TEdit;
    ButtonFlat2: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    Label1: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure ButtonFlat1Click(Sender: TObject);
    procedure ButtonFlat3Click(Sender: TObject);
    procedure ButtonFlat2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInputText: TFormInputText;

implementation

{$R *.dfm}

procedure TFormInputText.ButtonFlat1Click(Sender: TObject);
begin
 Close;
end;

procedure TFormInputText.ButtonFlat2Click(Sender: TObject);
begin
 ModalResult:=mrCancel;
end;

procedure TFormInputText.ButtonFlat3Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

procedure TFormInputText.FormPaint(Sender: TObject);
begin
 Canvas.Pen.Color:=$00DBDBDB;
 Canvas.Pen.Width:=3;
 Canvas.Rectangle(ClientRect);
end;

end.

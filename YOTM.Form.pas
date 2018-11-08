unit YOTM.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, sPanel,
  HGM.Button, Vcl.StdCtrls, sEdit, sSpinEdit, Vcl.Mask, Vcl.ComCtrls;

type
  TFormCustom = class(TForm)
    DragBarTop: TsDragBar;
    ButtonFlatClose: TButtonFlat;
    LabelCaption: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure ButtonFlatCloseClick(Sender: TObject);
  private
    function GetCaption: String;
    procedure SetCaption(const Value: String);
  public
    property Caption:string read GetCaption write SetCaption;
  end;

var
  FormCustom: TFormCustom;

implementation
 uses YOTM.Main;

{$R *.dfm}

procedure TFormCustom.ButtonFlatCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TFormCustom.FormPaint(Sender: TObject);
begin
 Canvas.Pen.Color:=$002E2E2E;
 Canvas.Pen.Width:=3;
 Canvas.Rectangle(ClientRect);
end;

function TFormCustom.GetCaption: String;
begin
 Result:=inherited Caption;
end;

procedure TFormCustom.SetCaption(const Value: String);
begin
 inherited Caption:=Value;
 LabelCaption.Caption:=Value;
end;

end.

unit YOTM.Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, HGM.Button, Vcl.StdCtrls, Vcl.Mask, Vcl.ComCtrls,
  HGM.Controls.PanelExt;

type
  TFormCustom = class(TForm)
    DragBarTop: TDragPanel;
    ButtonFlatClose: TButtonFlat;
    LabelCaption: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure ButtonFlatCloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LabelCaptionMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function GetCaption: string;
    procedure SetCaption(const Value: string);
  public
    property Caption: string read GetCaption write SetCaption;
  end;

var
  FormCustom: TFormCustom;

implementation

uses
  YOTM.Main;

{$R *.dfm}

procedure TFormCustom.ButtonFlatCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCustom.FormActivate(Sender: TObject);
begin
  SendMessage(Application.MainForm.Handle, WM_NCACTIVATE, Integer(True), 0);
end;

procedure TFormCustom.FormCreate(Sender: TObject);
begin
  SetClassLong(Handle, GCL_STYLE, GetWindowLong(Handle, GCL_STYLE) or CS_DROPSHADOW);
 //Position:=poMainFormCenter;
  Left := Application.MainForm.Left + (Application.MainForm.Width div 2 - Width div 2);
  Top := Application.MainForm.Top + (Application.MainForm.Height div 2 - Height div 2);
end;

procedure TFormCustom.FormHide(Sender: TObject);
begin
  AnimateWindow(Handle, 100, AW_BLEND or AW_HIDE);
end;

procedure TFormCustom.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_ESCAPE:
      if ButtonFlatClose.Enabled and ButtonFlatClose.Visible then
        Close;
  end;
end;

procedure TFormCustom.FormPaint(Sender: TObject);
begin
  Canvas.Pen.Color := $002E2E2E;
  Canvas.Pen.Width := 3;
  Canvas.Rectangle(ClientRect);
  {Canvas.Brush.Style := bsClear;
  Canvas.Pen.Color := clBlack;
  Canvas.Pen.Width := 1;
  Canvas.Rectangle(ClientRect);}
end;

procedure TFormCustom.FormShow(Sender: TObject);
begin
  AnimateWindow(Handle, 100, AW_BLEND);
end;

function TFormCustom.GetCaption: string;
begin
  Result := inherited Caption;
end;

procedure TFormCustom.LabelCaptionMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  DragBarTop.DoDrag;
end;

procedure TFormCustom.SetCaption(const Value: string);
begin
  inherited Caption := Value;
  LabelCaption.Caption := Value;
end;

end.


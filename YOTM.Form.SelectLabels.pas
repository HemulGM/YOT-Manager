unit YOTM.Form.SelectLabels;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ExtCtrls,
  HGM.Button, Vcl.StdCtrls, sPanel, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB.LabelTypes,
  YOTM.DB;

type
  TFormSelectLabels = class(TFormModalEdit)
    TableExLabels: TTableEx;
    PanelTaskAdd: TPanel;
    EditNewLabel: TEdit;
    ButtonFlatNewLabel: TButtonFlat;
    ButtonFlatLabelColor: TButtonFlat;
    ColorDialog: TColorDialog;
    ButtonFlat1: TButtonFlat;
    procedure FormCreate(Sender: TObject);
    procedure TableExLabelsGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatNewLabelClick(Sender: TObject);
    procedure ButtonFlatLabelColorClick(Sender: TObject);
    procedure TableExLabelsDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure ButtonFlat1Click(Sender: TObject);
  private
    FLabelTypes:TLabelTypes;
    FForEdit:Boolean;
    FSelectedItem: TLabelType;
  public
    procedure ShowForEdit;
    class function Select(var LabelType:TLabelType):Boolean;
  end;

var
  FormSelectLabels: TFormSelectLabels;

implementation
 uses YOTM.Main, YOTM.Form.Dialog;

{$R *.dfm}

procedure TFormSelectLabels.ButtonFlat1Click(Sender: TObject);
begin
 if not IndexInList(TableExLabels.ItemIndex, FLabelTypes.Count) then Exit;
 if TFormAnswer.GetAnswer('Удалить выбранную метку?') then FLabelTypes.Delete(TableExLabels.ItemIndex);
end;

procedure TFormSelectLabels.ButtonFlatLabelColorClick(Sender: TObject);
begin
 ColorDialog.Color:=ButtonFlatLabelColor.ColorNormal;
 if ColorDialog.Execute(Handle) then
  ButtonFlatLabelColor.ColorNormal:=ColorDialog.Color;
end;

procedure TFormSelectLabels.ButtonFlatNewLabelClick(Sender: TObject);
var Item:TLabelType;
begin
 if EditNewLabel.Text = '' then Exit;
 Item:=TLabelType.Create(FLabelTypes);
 Item.Name:=EditNewLabel.Text;
 Item.Color:=ButtonFlatLabelColor.ColorNormal;
 FLabelTypes.Insert(0, Item);
 FLabelTypes.Update(0);
end;

procedure TFormSelectLabels.FormCreate(Sender: TObject);
begin
 inherited;
 FLabelTypes:=TLabelTypes.Create(FDB, TableExLabels);
end;

procedure TFormSelectLabels.FormShow(Sender: TObject);
begin
 inherited;
 FLabelTypes.Reload;
 ButtonFlatCancel.Visible:=not FForEdit;
 ButtonFlatOK.Left:=0;
end;

class function TFormSelectLabels.Select(var LabelType: TLabelType): Boolean;
begin
 Result:=False;
 with TFormSelectLabels.Create(nil) do
  begin
   if ShowModal = mrOK then
    begin
     if IndexInList(TableExLabels.ItemIndex, FLabelTypes.Count) then
      begin
       LabelType:=FLabelTypes[TableExLabels.ItemIndex];
       Result:=True;
      end;
    end;
   Free;
  end;
end;

procedure TFormSelectLabels.ShowForEdit;
begin
 FForEdit:=True;
 ShowModal;
 FForEdit:=False;
end;

procedure TFormSelectLabels.TableExLabelsDrawCellData(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
 if not IndexInList(ARow, FLabelTypes.Count) then Exit;
 if ACol = 0 then
  with TableExLabels.Canvas do
   begin
    Brush.Color:=FLabelTypes[ARow].Color;
    Rect.Inflate(-2,-2);
    FillRect(Rect);
   end;
end;

procedure TFormSelectLabels.TableExLabelsGetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FLabelTypes.Count) then Exit;
 Value:='';
 case FCol of
  1:Value:=FLabelTypes[FRow].Name;
 end;
end;

end.

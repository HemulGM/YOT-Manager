unit YOTM.Form.SelectLabels;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ExtCtrls,
  HGM.Button, Vcl.StdCtrls, sPanel, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB.LabelTypes,
  YOTM.DB, YOTM.DB.Labels, HGM.Controls.PanelExt;

type
  TFormSelectLabels = class(TFormModalEdit)
    TableExLabels: TTableEx;
    PanelTaskAdd: TPanel;
    EditNewLabel: TEdit;
    ButtonFlatNewLabel: TButtonFlat;
    ButtonFlatLabelColor: TButtonFlat;
    ColorDialog: TColorDialog;
    ButtonFlatDelete: TButtonFlat;
    procedure FormCreate(Sender: TObject);
    procedure TableExLabelsGetData(FCol, FRow: Integer; var Value: string);
    procedure ButtonFlatNewLabelClick(Sender: TObject);
    procedure ButtonFlatLabelColorClick(Sender: TObject);
    procedure TableExLabelsDrawCellData(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ButtonFlatDeleteClick(Sender: TObject);
    procedure TableExLabelsItemColClick(Sender: TObject;
      MouseButton: TMouseButton; const Index: Integer);
  private
    FLabelTypes:TLabelTypes;
  public
    destructor Destroy; override;
    class function Select(Items:TLabelItems; TaskID:Integer):Boolean;
    class procedure OpenForEdit;
  end;

var
  FormSelectLabels: TFormSelectLabels;

implementation
 uses YOTM.Main, YOTM.Form.Dialog;

{$R *.dfm}

procedure TFormSelectLabels.ButtonFlatDeleteClick(Sender: TObject);
var i:Integer;
begin
 if FLabelTypes.CheckedCount > 0 then
  begin
   if TFormAnswer.GetAnswer('Удалить выбранные метки?') then
    begin
     i:=0;
     repeat
      if FLabelTypes.Checked[i] then FLabelTypes.Delete(i) else Inc(i);
     until FLabelTypes.CheckedCount <= 0;
    end;
  end
 else
  begin
   if not IndexInList(TableExLabels.ItemIndex, FLabelTypes.Count) then Exit;
   if TFormAnswer.GetAnswer('Удалить выбранную метку?') then FLabelTypes.Delete(TableExLabels.ItemIndex);
  end;
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

destructor TFormSelectLabels.Destroy;
begin
 FLabelTypes.Free;
 inherited;
end;

procedure TFormSelectLabels.FormCreate(Sender: TObject);
begin
 inherited;
 FLabelTypes:=TLabelTypes.Create(FDB, TableExLabels);
end;

class procedure TFormSelectLabels.OpenForEdit;
begin
 with TFormSelectLabels.Create(nil) do
  begin
   ButtonFlatCancel.Visible:=False;
   ButtonFlatOK.Left:=0;
   FLabelTypes.Reload;
   ShowModal;
   Free;
  end;
end;

class function TFormSelectLabels.Select(Items:TLabelItems; TaskID:Integer): Boolean;
var i, j:Integer;
    Item:TLabelItem;
begin
 Result:=False;
 with TFormSelectLabels.Create(nil) do
  begin
   FLabelTypes.Reload;
   if Assigned(Items) then
    begin
     for i:= 0 to Items.Count-1 do
      for j:= 0 to FLabelTypes.Count-1 do
       if Items[i].TypeID = FLabelTypes[j].ID then
        begin
         FLabelTypes.Checked[j]:=True;
         Break;
        end;
    end;
   if ShowModal = mrOK then
    begin
     if Assigned(Items) then
      begin
       if Items.Count > 0 then Items.DropAll(TaskID);
       for i:= 0 to FLabelTypes.Count-1 do
        begin
         if FLabelTypes.Checked[i] then
          begin
           Item:=TLabelItem.Create(FLabelTypes[i]);
           Item.Task:=TaskID;
           Items.New(Item);
          end;
        end;
      end;
     Result:=True;
    end;
   Free;
  end;
end;

procedure TFormSelectLabels.TableExLabelsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
function CheckImage(Value:Boolean):Integer;
begin
 if Value then Exit(18) else Exit(19);
end;
begin
 if not IndexInList(ARow, FLabelTypes.Count) then Exit;
 if ACol = 1 then
  with TableExLabels.Canvas do
   begin
    Brush.Color:=FLabelTypes[ARow].Color;
    Rect.Left:=Rect.Left+3;
    Rect.Width:=34;
    Rect.Inflate(0, -2);
    FillRect(Rect);
   end;
 if ACol = 0 then
  with TableExLabels.Canvas do
   begin                            //18 t 19 f
    FormMain.ImageList24.Draw(TableExLabels.Canvas,
     Rect.Left+(Rect.Width div 2-FormMain.ImageList24.Width div 2),
     Rect.Top+(Rect.Height div 2-FormMain.ImageList24.Height div 2),
     CheckImage(FLabelTypes.Checked[ARow]));
   end;
end;

procedure TFormSelectLabels.TableExLabelsGetData(FCol, FRow: Integer; var Value: string);
begin
 if not IndexInList(FRow, FLabelTypes.Count) then Exit;
 Value:='';
 case FCol of
  2:Value:=FLabelTypes[FRow].Name;
 end;
end;

procedure TFormSelectLabels.TableExLabelsItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
 if not IndexInList(TableExLabels.ItemIndex, FLabelTypes.Count) then Exit;
 case Index of
  0: FLabelTypes.Checked[TableExLabels.ItemIndex]:=not FLabelTypes.Checked[TableExLabels.ItemIndex];
 end;
end;

end.

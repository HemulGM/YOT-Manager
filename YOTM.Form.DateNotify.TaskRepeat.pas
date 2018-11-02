unit YOTM.Form.DateNotify.TaskRepeat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ExtCtrls,
  HGM.Button, Vcl.StdCtrls, sPanel, Vcl.ComCtrls;

type
  TFormTaskRepeat = class(TFormModalEdit)
    PageControl: TPageControl;
    TabSheetEmpty: TTabSheet;
    TabSheetDay: TTabSheet;
    Panel6: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    ButtonFlatRepNo: TButtonFlat;
    ButtonFlatRepDay: TButtonFlat;
    ButtonFlatRepWeek: TButtonFlat;
    ButtonFlatRepMonth: TButtonFlat;
    ButtonFlatRepYear: TButtonFlat;
    TabSheetWeek: TTabSheet;
    TabSheetMonth: TTabSheet;
    TabSheetYear: TTabSheet;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ButtonFlatRepYearClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetPage(Tab:TTabSheet);
  end;

var
  FormTaskRepeat: TFormTaskRepeat;

implementation
 uses YOTM.Main;

{$R *.dfm}

{ TFormTaskRepeat }

procedure TFormTaskRepeat.ButtonFlatRepYearClick(Sender: TObject);
begin
 case (Sender as TButtonFlat).Tag of
  0:SetPage(TabSheetEmpty);
  1:SetPage(TabSheetDay);
  2:SetPage(TabSheetWeek);
  3:SetPage(TabSheetMonth);
  4:SetPage(TabSheetYear);
 end;
end;

procedure TFormTaskRepeat.FormCreate(Sender: TObject);
begin
 inherited;
 SetPage(TabSheetEmpty);
end;

procedure TFormTaskRepeat.SetPage(Tab: TTabSheet);

procedure SetButtonCheck(Button:TButtonFlat; Value:Boolean);
begin
 if Value then Button.ImageIndex:=25
 else Button.ImageIndex:=24;
end;

begin
 SetButtonCheck(ButtonFlatRepNo, Tab = TabSheetEmpty);
 SetButtonCheck(ButtonFlatRepDay, Tab = TabSheetDay);
 SetButtonCheck(ButtonFlatRepWeek, Tab = TabSheetWeek);
 SetButtonCheck(ButtonFlatRepMonth, Tab = TabSheetMonth);
 SetButtonCheck(ButtonFlatRepYear, Tab = TabSheetYear);
 PageControl.ActivePage:=Tab;
end;

end.

unit YOTM.Form.OverlayTime;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form, HGM.Button, Vcl.StdCtrls,
  Vcl.ExtCtrls, sPanel, HGM.Controls.PanelExt;

type
  TChangeActive = procedure(Sender:TObject; State:Boolean) of object;
  TFormTimeOverlay = class(TFormCustom)
    LabelTime: TLabel;
    ButtonFlatSwitch: TButtonFlat;
    procedure FormCreate(Sender: TObject);
    procedure ButtonFlatSwitchClick(Sender: TObject);
    procedure LabelCaptionMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    FActiveWork: Boolean;
    FTime: string;
    FCallback: TChangeActive;
    procedure SetActiveWork(const Value: Boolean);
    procedure SetTime(const Value: string);
    procedure SetCallback(const Value: TChangeActive);
    { Private declarations }
  public
    property Time:string read FTime write SetTime;
    property ActiveWork:Boolean read FActiveWork write SetActiveWork;
    procedure SetActivateLow(Value:Boolean);
    procedure Pause;
    procedure Resume;
    property Callback:TChangeActive read FCallback write SetCallback;
  end;

var
  FormTimeOverlay: TFormTimeOverlay;

implementation

{$R *.dfm}

procedure TFormTimeOverlay.ButtonFlatSwitchClick(Sender: TObject);
begin
 ActiveWork:=not ActiveWork;
end;

procedure TFormTimeOverlay.FormCreate(Sender: TObject);
begin
 inherited;
 Top:=Screen.WorkAreaRect.Bottom - ClientHeight - 5;
 Left:=Screen.WorkAreaRect.Right - ClientWidth - 5;
end;

procedure TFormTimeOverlay.LabelCaptionMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 DragBarTop.DoDrag;
end;

procedure TFormTimeOverlay.Pause;
begin
 ActiveWork:=False;
end;

procedure TFormTimeOverlay.Resume;
begin
 ActiveWork:=True;
end;

procedure TFormTimeOverlay.SetActivateLow(Value: Boolean);
begin
 FActiveWork := Value;
 case Value of
  True: ButtonFlatSwitch.ImageIndex:=26;
  False:ButtonFlatSwitch.ImageIndex:=27;
 end;
end;

procedure TFormTimeOverlay.SetActiveWork(const Value: Boolean);
begin
 SetActivateLow(Value);
 if FActiveWork = Value then Exit;
 FActiveWork := Value;
 if Assigned(FCallback) then FCallback(Self, FActiveWork);
end;

procedure TFormTimeOverlay.SetCallback(const Value: TChangeActive);
begin
 FCallback := Value;
end;

procedure TFormTimeOverlay.SetTime(const Value: string);
begin
 FTime := Value;
 LabelTime.Caption:=FTime;
end;

end.

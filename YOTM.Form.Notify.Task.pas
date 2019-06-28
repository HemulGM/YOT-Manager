unit YOTM.Form.Notify.Task;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  YOTM.Form.Notify, HGM.Button, Vcl.StdCtrls, Vcl.ExtCtrls, YOTM.DB.Tasks,
  Vcl.Menus, HGM.Controls.PanelExt;

type
  TOnCloseAction = procedure(Task: Integer) of object;

  TFormNotifyTask = class(TFormNotify)
    Shape4: TShape;
    Panel1: TPanel;
    ButtonFlatHoldOverMore: TButtonFlat;
    ButtonFlatHoldOverDefault: TButtonFlat;
    ButtonFlatTaskState: TButtonFlat;
    EditTaskName: TEdit;
    PopupMenuHoldOver: TPopupMenu;
    MenuItemHO5: TMenuItem;
    MenuItemHO10: TMenuItem;
    MenuItemHO15: TMenuItem;
    MenuItemHO20: TMenuItem;
    MenuItemHO25: TMenuItem;
    LabelTime: TLabel;
    procedure ButtonFlatHoldOverMoreClick(Sender: TObject);
    procedure ButtonFlatCloseClick(Sender: TObject);
    procedure ButtonFlatTaskStateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure MenuItemHO5Click(Sender: TObject);
    procedure MenuItemHO10Click(Sender: TObject);
    procedure MenuItemHO15Click(Sender: TObject);
    procedure MenuItemHO20Click(Sender: TObject);
    procedure MenuItemHO25Click(Sender: TObject);
  private
    TaskID: Integer;
    Deadline: TDate;
  public
    //class var OnCloseAction:TOnCloseAction;
    class function Notify(Task: TTaskItem): TFormNotifyTask;
  end;

var
  FormNotifyTask: TFormNotifyTask;

implementation

uses
  YOTM.Main, HGM.Common.Utils, YOTM.Manager;

{$R *.dfm}

{ TFormNotifyTask }

procedure TFormNotifyTask.ButtonFlatCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormNotifyTask.ButtonFlatHoldOverMoreClick(Sender: TObject);
begin
  ButtonFlatHoldOverDefault.ShowPopup;
end;

procedure TFormNotifyTask.ButtonFlatTaskStateClick(Sender: TObject);
begin
  FormMain.SetTaskComplete(TaskID, Deadline, True);
  Close;
end;

procedure TFormNotifyTask.FormHide(Sender: TObject);
begin
  AnimateWindow(Handle, 500, AW_BLEND or AW_HIDE);
end;

procedure TFormNotifyTask.FormShow(Sender: TObject);
begin
  AnimateWindow(Handle, 500, AW_BLEND or AW_SLIDE);
end;

procedure TFormNotifyTask.MenuItemHO5Click(Sender: TObject);
begin
  Manager.AddNotifyWait(TaskID, Now + 1/24/60 * 5);
  Close;
end;

procedure TFormNotifyTask.MenuItemHO10Click(Sender: TObject);
begin
  Manager.AddNotifyWait(TaskID, Now + 1/24/60 * 10);
  Close;
end;

procedure TFormNotifyTask.MenuItemHO15Click(Sender: TObject);
begin
  Manager.AddNotifyWait(TaskID, Now + 1/24/60 * 15);
  Close;
end;

procedure TFormNotifyTask.MenuItemHO20Click(Sender: TObject);
begin
  Manager.AddNotifyWait(TaskID, Now + 1/24/60 * 20);
  Close;
end;

procedure TFormNotifyTask.MenuItemHO25Click(Sender: TObject);
begin
  Manager.AddNotifyWait(TaskID, Now + 1/24/60 * 25);
  Close;
end;

class function TFormNotifyTask.Notify(Task: TTaskItem): TFormNotifyTask;
begin
  Result := nil;
  if not Assigned(Task) then
    Exit;
  Result := TFormNotifyTask.Create(nil);
  with Result do
  try
    TaskID := Task.ID;
    Deadline := Task.DateDeadline;
    EditTaskName.Text := Task.Name;
    LabelTime.Caption := HumanDateTime(Task.DateDeadline + Task.TimeNotify, True, True);
    SetButtonCheck(ButtonFlatTaskState, Task.State);
    Left := Screen.WorkAreaRect.Right - (Width + 20);
    Top := Screen.WorkAreaRect.Top + 20;
    Show;
    BringToFront;
  except
    Free;
  end;
end;

end.


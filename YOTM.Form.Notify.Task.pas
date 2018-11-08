unit YOTM.Form.Notify.Task;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.Notify, HGM.Button,
  Vcl.StdCtrls, Vcl.ExtCtrls, sPanel, YOTM.DB.Tasks, Vcl.Menus;

type
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
    procedure ButtonFlatHoldOverMoreClick(Sender: TObject);
    procedure ButtonFlatCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ButtonFlatTaskStateClick(Sender: TObject);
  private
    TaskID:Integer;
  public
    class procedure Notify(Task:TTaskItem);
  end;

var
  FormNotifyTask: TFormNotifyTask;

implementation
 uses YOTM.Main;

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
 FormMain.SetTaskComplete(TaskID);
 Close;
end;

procedure TFormNotifyTask.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

class procedure TFormNotifyTask.Notify(Task: TTaskItem);
begin
 if not Assigned(Task) then Exit;
 with TFormNotifyTask.Create(nil) do
  try
   TaskID:=Task.ID;
   EditTaskName.Text:=Task.Name;
   SetButtonCheck(ButtonFlatTaskState, Task.State);
   Left:=Screen.WorkAreaRect.Right - (Width + 20);
   Top:=Screen.WorkAreaRect.Top + 20;
   Show;
  except
   Free;
  end;
end;

end.

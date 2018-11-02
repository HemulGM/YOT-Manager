unit YOTM.Form.Notify.Task;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.Notify, HGM.Button,
  Vcl.StdCtrls, Vcl.ExtCtrls, sPanel;

type
  TFormNotifyTask = class(TFormNotify)
    Shape4: TShape;
    Panel1: TPanel;
    ButtonFlat1: TButtonFlat;
    ButtonFlat2: TButtonFlat;
    ButtonFlatTaskState: TButtonFlat;
    EditTaskName: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotifyTask: TFormNotifyTask;

implementation
 uses YOTM.Main;

{$R *.dfm}

end.

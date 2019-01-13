unit YOTM.Form.Dialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ExtCtrls,
  HGM.Button, Vcl.StdCtrls, HGM.Controls.PanelExt;

type
  TFormAnswer = class(TFormModalEdit)
    LabelQuestion: TLabel;
  private
    { Private declarations }
  public
    class function GetAnswer(Question:string; NearMouse:Boolean = False):Boolean;
    class function ShowNeedAction(NeedAction:string; NearMouse:Boolean = False):Boolean;
  end;

var
  FormAnswer: TFormAnswer;
  function GetAnswer(Question:string; NearMouse:Boolean = False):Boolean;
  function ShowNeedAction(NeedAction:string; NearMouse:Boolean = False):Boolean;


implementation

{$R *.dfm}

function GetAnswer(Question:string; NearMouse:Boolean = False):Boolean;
begin
 Result:=TFormAnswer.GetAnswer(Question, NearMouse);
end;

function ShowNeedAction(NeedAction:string; NearMouse:Boolean = False):Boolean;
begin
 Result:=TFormAnswer.ShowNeedAction(NeedAction, NearMouse);
end;

{ TFormAnswer }

class function TFormAnswer.GetAnswer(Question: string; NearMouse:Boolean = False): Boolean;
begin
 with TFormAnswer.Create(nil) do
  begin
   Caption:='Вопрос';
   LabelQuestion.Caption:=Question;
   if NearMouse then
    begin
     Position:=poDesigned;
     Left:=Mouse.CursorPos.X - Width div 2;
     Top:=Mouse.CursorPos.Y - Height div 2;
    end
   else Position:=poMainFormCenter;
   Result:=ShowModal = mrOk;
   Free;
  end;
end;

class function TFormAnswer.ShowNeedAction(NeedAction: string; NearMouse:Boolean = False): Boolean;
begin
 with TFormAnswer.Create(nil) do
  begin
   Caption:='Внимание';
   LabelQuestion.Caption:=NeedAction;
   ButtonFlatOK.Caption:='Ок';
   ButtonFlatCancel.Hide;
   if NearMouse then
    begin
     Position:=poDesigned;
     Left:=Mouse.CursorPos.X - Width div 2;
     Top:=Mouse.CursorPos.Y - Height div 2;
    end
   else Position:=poMainFormCenter;
   ShowModal;
   Result:=True;
   Free;
  end;
end;

end.

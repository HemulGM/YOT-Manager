unit YOTM.Form.Dialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, Vcl.ExtCtrls,
  HGM.Button, Vcl.StdCtrls, sPanel;

type
  TFormAnswer = class(TFormModalEdit)
    LabelQuestion: TLabel;
  private
    { Private declarations }
  public
    class function GetAnswer(Question:string; NearMouse:Boolean = False):Boolean;
  end;

var
  FormAnswer: TFormAnswer;
  function GetAnswer(Question:string; NearMouse:Boolean = False):Boolean;


implementation

{$R *.dfm}

function GetAnswer(Question:string; NearMouse:Boolean = False):Boolean;
begin
 Result:=TFormAnswer.GetAnswer(Question, NearMouse);
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

end.

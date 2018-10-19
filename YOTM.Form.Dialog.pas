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
    class function GetAnswer(Question:string):Boolean;
  end;

var
  FormAnswer: TFormAnswer;

implementation

{$R *.dfm}

{ TFormAnswer }

class function TFormAnswer.GetAnswer(Question: string): Boolean;
begin
 with TFormAnswer.Create(nil) do
  begin
   Caption:='Вопрос';
   LabelQuestion.Caption:=Question;
   Result:=ShowModal = mrOk;
   Free;
  end;
end;

end.

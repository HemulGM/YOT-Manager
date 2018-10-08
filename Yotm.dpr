program Yotm;

uses
  Vcl.Forms,
  YOTM.Main in 'YOTM.Main.pas' {Form1},
  SQLite3 in '..\SQLite\SQLite3.pas',
  SQLiteTable3 in '..\SQLite\SQLiteTable3.pas',
  SQLLang in '..\SQLite\SQLLang.pas',
  YOTM.DB in 'YOTM.DB.pas',
  SQLiteHGM in '..\SQLite\SQLiteHGM.pas',
  YOTM.InputItem in 'YOTM.InputItem.pas' {FormInputText};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormInputText, FormInputText);
  Application.Run;
end.

program Yotm;

uses
  Vcl.Forms,
  YOTM.Main in 'YOTM.Main.pas' {FormMain},
  SQLite3 in '..\SQLite\SQLite3.pas',
  SQLiteTable3 in '..\SQLite\SQLiteTable3.pas',
  SQLLang in '..\SQLite\SQLLang.pas',
  YOTM.DB in 'YOTM.DB.pas',
  SQLiteHGM in '..\SQLite\SQLiteHGM.pas',
  YOTM.Form in 'YOTM.Form.pas' {FormCustom},
  YOTM.Form.ModalEdit in 'YOTM.Form.ModalEdit.pas' {FormModalEdit},
  YOTM.Form.EditTime in 'YOTM.Form.EditTime.pas' {FormEditTime},
  YOTM.Form.Dialog in 'YOTM.Form.Dialog.pas' {FormAnswer},
  YOTM.DB.Comments in 'YOTM.DB.Comments.pas',
  YOTM.DB.Labels in 'YOTM.DB.Labels.pas',
  YOTM.DB.LabelTypes in 'YOTM.DB.LabelTypes.pas',
  YOTM.Form.SelectLabels in 'YOTM.Form.SelectLabels.pas' {FormSelectLabels},
  YOTM.DB.Tasks in 'YOTM.DB.Tasks.pas',
  YOTM.DB.Times in 'YOTM.DB.Times.pas',
  YOTM.Form.DateNotify in 'YOTM.Form.DateNotify.pas' {FormDateAndNotify},
  YOTM.DB.Notes in 'YOTM.DB.Notes.pas',
  YOTM.Form.Notify in 'YOTM.Form.Notify.pas' {FormNotify},
  YOTM.Form.Notify.Task in 'YOTM.Form.Notify.Task.pas' {FormNotifyTask},
  YOTM.Manager in 'YOTM.Manager.pas',
  YOTM.Form.DateNotify.TaskRepeat in 'YOTM.Form.DateNotify.TaskRepeat.pas' {FormTaskRepeat},
  YOTM.Form.OverlayTime in 'YOTM.Form.OverlayTime.pas' {FormTimeOverlay},
  YOTM.DB.TaskRepeats in 'YOTM.DB.TaskRepeats.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'YOT Manager';
  Application.CreateForm(TFormMain, FormMain);
  FormMain.Initializate;
  Application.Run;
end.

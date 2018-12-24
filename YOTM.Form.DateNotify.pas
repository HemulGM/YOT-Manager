unit YOTM.Form.DateNotify;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, YOTM.Form.ModalEdit, HGM.Button,
  Vcl.StdCtrls, Vcl.ExtCtrls, sPanel, Vcl.WinXCalendars, YOTM.Main, YOTM.DB.Tasks,
  Vcl.Menus, HGM.Common.Utils, HGM.Controls.PanelExt;

type
  TDateNotifyData = record
   SelectDate:TDate;
   SelectedDate:Boolean;

   SelectTime:TTime;
   SelectedTime:Boolean;

   SelectRepeat:string;
   SelectRepeatType:TTaskType;
  end;

  TFormDateAndNotify = class(TFormModalEdit)
    CalendarView: TCalendarView;
    Panel1: TPanel;
    Panel2: TPanel;
    EditTime: TEdit;
    ButtonFlatSelectTime: TButtonFlat;
    ButtonFlatRepeat: TButtonFlat;
    PanelSelectTime: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    ButtonFlat1: TButtonFlat;
    ButtonFlat2: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    ButtonFlat4: TButtonFlat;
    ButtonFlat5: TButtonFlat;
    ButtonFlat6: TButtonFlat;
    ButtonFlat7: TButtonFlat;
    ButtonFlat8: TButtonFlat;
    ButtonFlat9: TButtonFlat;
    ButtonFlat10: TButtonFlat;
    ButtonFlat11: TButtonFlat;
    ButtonFlat22: TButtonFlat;
    ButtonFlat21: TButtonFlat;
    ButtonFlat20: TButtonFlat;
    ButtonFlat19: TButtonFlat;
    ButtonFlat18: TButtonFlat;
    ButtonFlat17: TButtonFlat;
    ButtonFlat16: TButtonFlat;
    ButtonFlat15: TButtonFlat;
    ButtonFlat14: TButtonFlat;
    ButtonFlat12: TButtonFlat;
    ButtonFlat13: TButtonFlat;
    ButtonFlat23: TButtonFlat;
    ButtonFlat24: TButtonFlat;
    procedure ButtonFlatSelectTimeClick(Sender: TObject);
    procedure PanelSelectTimeExit(Sender: TObject);
    procedure ButtonFlat11Click(Sender: TObject);
    procedure ButtonFlatOKClick(Sender: TObject);
    procedure EditTimeChange(Sender: TObject);
    procedure ButtonFlatRepeatClick(Sender: TObject);
  private
    FData:TDateNotifyData;
    procedure SetData(Data: TDateNotifyData);
    function GetData: Boolean;
    procedure UpdateRepeatButton;
  public
    class function Select(var Data:TDateNotifyData):Boolean;
  end;

var
  FormDateAndNotify: TFormDateAndNotify;

implementation
 uses YOTM.Form.DateNotify.TaskRepeat;

{$R *.dfm}

{ TFormDateAndNotify }

procedure TFormDateAndNotify.SetData(Data:TDateNotifyData);
begin
 FData:=Data;
 if FData.SelectedDate then
  CalendarView.Date:=FData.SelectDate
 else CalendarView.Date:=Now;
 if FData.SelectedTime then
  EditTime.Text:=FormatDateTime('HH:mm', FData.SelectTime)
 else EditTime.Text:='';
 UpdateRepeatButton;
 EditTimeChange(nil);
end;

procedure TFormDateAndNotify.UpdateRepeatButton;
begin
 case FData.SelectRepeatType of
  ttSimple: ButtonFlatRepeat.Caption:='Не повторять';
  ttRepeatInDay: ButtonFlatRepeat.Caption:='Ежедневно';
  ttRepeatInWeek: ButtonFlatRepeat.Caption:='Еженедельно';
  ttRepeatInMonth: ButtonFlatRepeat.Caption:='Ежемесячно';
  ttRepeatInYear: ButtonFlatRepeat.Caption:='Ежегодно';
 end;
end;

procedure TFormDateAndNotify.ButtonFlat11Click(Sender: TObject);
begin
 EditTime.Text:=(Sender as TButtonFlat).Caption;
 PanelSelectTime.Hide;
end;

procedure TFormDateAndNotify.ButtonFlatOKClick(Sender: TObject);
begin
 if GetData then ModalResult:=mrOk;
end;

procedure TFormDateAndNotify.ButtonFlatRepeatClick(Sender: TObject);
var RStr:string;
    RType:TTaskType;
begin
 RStr:=FData.SelectRepeat;
 RType:=FData.SelectRepeatType;
 if TFormTaskRepeat.Select(RStr, RType) then
  begin
   FData.SelectRepeat:=RStr;
   FData.SelectRepeatType:=RType;
   UpdateRepeatButton;
  end;
end;

procedure TFormDateAndNotify.ButtonFlatSelectTimeClick(Sender: TObject);
begin
 case ButtonFlatSelectTime.ImageIndex of
  0:
   begin
    EditTime.Text:='';
   end;
  10:
   begin
    if PanelSelectTime.Visible then PanelSelectTime.Hide
    else
     begin
      PanelSelectTime.Visible:=True;
      PanelSelectTime.BringToFront;
     end;
   end;
 end;
 EditTimeChange(nil);
end;

procedure TFormDateAndNotify.EditTimeChange(Sender: TObject);
begin
 if EditTime.Text = '' then ButtonFlatSelectTime.ImageIndex:=10
 else ButtonFlatSelectTime.ImageIndex:=0;
end;

function TFormDateAndNotify.GetData:Boolean;
begin
 Result:=False;
 FData.SelectDate:=CalendarView.Date;
 FData.SelectedDate:=True;
 EditTime.Text:=StringReplace(EditTime.Text, '.', FormatSettings.TimeSeparator, [rfReplaceAll]);
 EditTime.Text:=StringReplace(EditTime.Text, ':', FormatSettings.TimeSeparator, [rfReplaceAll]);
 if EditTime.Text <> '' then
  try
   FData.SelectTime:=StrToTime(EditTime.Text);
   FData.SelectedTime:=True;
  except
   begin
    FlashControl(EditTime);
    MessageBox(Handle, 'Не верно указано время напоминания!', 'Внимание', MB_OK or MB_ICONWARNING);
    Exit;
   end;
  end
 else FData.SelectedTime:=False;
 Result:=True;
end;

procedure TFormDateAndNotify.PanelSelectTimeExit(Sender: TObject);
begin
 PanelSelectTime.Hide;
 EditTimeChange(nil);
end;

class function TFormDateAndNotify.Select(var Data: TDateNotifyData): Boolean;
begin
 Result:=False;
 with TFormDateAndNotify.Create(nil) do
  begin
   SetData(Data);
   if ShowModal = mrOk then
    begin
     Data:=FData;
     Result:=True;
    end;
   Free;
  end;
end;

end.

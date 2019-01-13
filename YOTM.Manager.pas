unit YOTM.Manager;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Direct2D, D2D1, System.Generics.Collections,
  HGM.Controls.PanelExt, Vcl.ComCtrls, System.Types, Vcl.StdCtrls,
  HGM.Controls.SpinEdit, Vcl.Grids, HGM.Controls.VirtualTable, YOTM.DB,
  Vcl.AppEvnts, Vcl.Menus, YOTM.DB.Comments, YOTM.DB.Labels, YOTM.DB.Tasks,
  YOTM.DB.Times, HGM.Common.Utils, YOTM.DB.LabelTypes, sDialogs, YOTM.DB.Notes;

 type
  TTaskNotify = procedure(Task:TTaskItem) of object;
  TManager = class(TObject)
   private
    FDataBase: TDB;
    FTimerCheck:TTimer;
    FActivate: Boolean;
    FTasks:TTaskItems;
    FTimeNow:Integer;
    FOnWorkDayStarted: TNotifyEvent;
    FOnTaskNotify: TTaskNotify;
    procedure SetDataBase(const Value: TDB);
    procedure OnTimerCheck(Sender:TObject);
    procedure SetActivate(const Value: Boolean);
    procedure SetOnWorkDayStarted(const Value: TNotifyEvent);
    procedure SetOnTaskNotify(const Value: TTaskNotify);
   protected
    procedure Notify(Task:TTaskItem);
    procedure WorkDayStarted;
   public
    constructor Create(ADataBase: TDB);
    destructor Destroy; override;
    property DataBase:TDB read FDataBase write SetDataBase;
    property Activate:Boolean read FActivate write SetActivate;
    property OnWorkDayStarted:TNotifyEvent read FOnWorkDayStarted write SetOnWorkDayStarted;
    property OnTaskNotify:TTaskNotify read FOnTaskNotify write SetOnTaskNotify;
  end;

 var
  Manager:TManager;

implementation
 uses YOTM.Main;

{ TManager }

constructor TManager.Create(ADataBase: TDB);
begin
 FDataBase:=ADataBase;
 FTimerCheck:=TTimer.Create(nil);
 FTimerCheck.Enabled:=False;
 FTimerCheck.Interval:=MSecsPerSec * SecsPerMin;
 FTimerCheck.OnTimer:=OnTimerCheck;
 FTimeNow:=GetMins(Now);
 FTasks:=TTaskItems.Create(FDataBase, nil);
end;

destructor TManager.Destroy;
begin
 FTasks.Free;
 FTimerCheck.Free;
 inherited;
end;

procedure TManager.Notify(Task: TTaskItem);
begin
 if Assigned(FOnTaskNotify) then FOnTaskNotify(Task);
end;

procedure TManager.OnTimerCheck(Sender: TObject);
var i:Integer;
    TkTime:Integer;
    DT:TDateTime;
begin
 DT:=Now;
 TkTime:=GetMins(DT);
 FTimeNow:=TkTime;
 FTasks.ShowDate:=DT;
 FTasks.TaskFilter:=tkfDated;
 FTasks.Upcoming:=True;
 FTasks.Reload;
 for i:= 0 to FTasks.Count-1 do
  begin
   TkTime:=GetMins(FTasks[i].TimeNotify);
   if TkTime <= FTimeNow then Notify(FTasks[i]);
  end;
end;

procedure TManager.SetActivate(const Value: Boolean);
begin
 FActivate:=Value;
 FTimerCheck.Enabled:=Value;
 if Value then OnTimerCheck(nil);
end;

procedure TManager.SetDataBase(const Value: TDB);
begin
 FDataBase := Value;
end;

procedure TManager.SetOnTaskNotify(const Value: TTaskNotify);
begin
 FOnTaskNotify := Value;
end;

procedure TManager.SetOnWorkDayStarted(const Value: TNotifyEvent);
begin
 FOnWorkDayStarted := Value;
end;

procedure TManager.WorkDayStarted;
begin
 if Assigned(FOnWorkDayStarted) then FOnWorkDayStarted(Self);
end;

end.

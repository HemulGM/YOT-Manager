unit YOTM.DB.TaskRepeats;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections,
       HGM.Controls.VirtualTable, YOTM.DB;

  type
   //Комментарии к задаче
   TRepeatState = class;
   TRepeatStates = class;

   TRepeatState = class(TObject)
    private
     FOwner:TRepeatStates;
     FID:Integer;
     FTask: Integer;
     FDate: TDate;
     FDateDeadline: TDate;
     FNotifyComplete: Boolean;
     FState: Boolean;
     procedure SetOwner(const Value: TRepeatStates);
     procedure SetID(const Value: Integer);
     procedure SetDate(const Value: TDate);
     procedure SetTask(const Value: Integer);
     procedure SetDateDeadline(const Value: TDate);
     procedure SetNotifyComplete(const Value: Boolean);
     procedure SetState(const Value: Boolean);
    public
     constructor Create(AOwner: TRepeatStates);
     property Owner:TRepeatStates read FOwner write SetOwner;
     property DateDeadline:TDate read FDateDeadline write SetDateDeadline;
     property NotifyComplete:Boolean read FNotifyComplete write SetNotifyComplete;
     property DateChange:TDate read FDate write SetDate;
     property ID:Integer read FID write SetID;
     property Task:Integer read FTask write SetTask;
     property State:Boolean read FState write SetState;
   end;

   TRepeatStates = class(TTableData<TRepeatState>)
    const
     tnTable = 'RepeatStates';
     fnID = 'rsID';
     fnTask = 'rsTask';
     fnDeadline = 'rsDeadline';
     fnDateChange = 'rsDate';
     fnNotifyComplete = 'rsNotifyComplete';
     fnState = 'rsState';
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public
     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     function GetItem(Task: Integer; Date:TDate): TRepeatState;
     procedure Reload(TaskID:Integer);
     /// <summary>
     /// Обновить запись (добавить или изменить)
     /// </summary>
     procedure Update(Item: TRepeatState);
     /// <summary>
     /// Удалить запись
     /// </summary>
     procedure Delete(Index: Integer); override;
     /// <summary>
     /// Обновить все записи (добавить или изменить)
     /// </summary>
     procedure Save;
     procedure CompleteTask(TaskID:Integer; Date:TDate; State:Boolean);  
     procedure NotifyComplete(TaskID:Integer; Date:TDate);
     property DataBase:TDB read FDataBase write SetDataBase;
   end;

implementation
 uses System.SysUtils, DateUtils;

{ TRepeatState }

constructor TRepeatState.Create(AOwner: TRepeatStates);
begin
 inherited Create;
 FID:=-1;
 FTask:=-1;
 Owner:=AOwner;
end;

procedure TRepeatState.SetDate(const Value: TDate);
begin
 FDate := Value;
end;

procedure TRepeatState.SetDateDeadline(const Value: TDate);
begin
 FDateDeadline := Value;
end;

procedure TRepeatState.SetID(const Value: Integer);
begin
 FID := Value;
end;

procedure TRepeatState.SetNotifyComplete(const Value: Boolean);
begin
 FNotifyComplete := Value;
end;

procedure TRepeatState.SetOwner(const Value: TRepeatStates);
begin
 FOwner := Value;
end;

procedure TRepeatState.SetState(const Value: Boolean);
begin
 FState := Value;
end;

procedure TRepeatState.SetTask(const Value: Integer);
begin
 FTask := Value;
end;

{ TRepeatStates }

procedure TRepeatStates.CompleteTask(TaskID: Integer; Date: TDate; State:Boolean);
var Item:TRepeatState;
begin
 Item:=GetItem(TaskID, Date);
 if Assigned(Item) then
  begin
   Item.State:=State;
   Item.DateChange:=Now;
   Update(Item);
  end
 else
  begin 
   Item:=TRepeatState.Create(Self);
   Item.DateChange:=Now;
   Item.DateDeadline:=Date;
   Item.State:=State;
   Item.Task:=TaskID;
   Update(Item);
  end;
 Item.Free;
end;

constructor TRepeatStates.Create(ADataBase: TDB; ATableEx:TTableEx);
begin
 inherited Create(ATableEx);
 FDataBase:=ADataBase;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnTask, ftInteger);
    AddField(fnDeadline, ftDateTime);
    AddField(fnDateChange, ftDateTime);
    AddField(fnNotifyComplete, ftBoolean);
    AddField(fnState, ftBoolean);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TRepeatStates.Delete(Index: Integer);
begin
 with SQL.Delete(tnTable) do
  begin
   WhereFieldEqual(fnID, Items[Index].ID);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 inherited;
end;

function TRepeatStates.GetItem(Task: Integer; Date:TDate): TRepeatState;
var Table:TSQLiteTable; 
begin
 Result:=nil;
 try
  with SQL.Select(tnTable) do
   begin
    AddField(fnID);
    AddField(fnTask);
    AddField(fnDeadline);
    AddField(fnDateChange);
    AddField(fnNotifyComplete);
    AddField(fnState);
    WhereFieldEqual(fnTask, Task);
    WhereFieldEqual(fnDeadline, DateOf(Date));
    Table:=FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Table.MoveFirst;
    if Table.RowCount > 0 then
     begin
      Result:=TRepeatState.Create(Self);
      Result.ID:=Table.FieldAsInteger(0);
      Result.Task:=Table.FieldAsInteger(1);
      Result.DateDeadline:=Table.FieldAsDateTime(2);
      Result.DateChange:=Table.FieldAsDateTime(3);
      Result.NotifyComplete:=Table.FieldAsBoolean(4);
      Result.State:=Table.FieldAsBoolean(5);
     end;
    Table.Free;
   end;
 except

 end;
end;

procedure TRepeatStates.NotifyComplete(TaskID: Integer; Date: TDate);
var Item:TRepeatState;
begin
 Item:=GetItem(TaskID, Date);
 if Assigned(Item) then
  begin
   Item.NotifyComplete:=True;
   Item.DateChange:=Now;
   Update(Item);
  end
 else
  begin
   Item:=TRepeatState.Create(Self);
   Item.NotifyComplete:=True;
   Item.Task:=TaskID;
   Update(Item);
  end;
 Item.Free;
end;

procedure TRepeatStates.Reload;
var Table:TSQLiteTable;
    Item:TRepeatState;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(tnTable) do
   begin
    AddField(fnID);
    AddField(fnTask);
    AddField(fnDeadline);
    AddField(fnDateChange);
    AddField(fnNotifyComplete);
    AddField(fnState);
    WhereFieldEqual(fnTask, TaskID);
    Table:=FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TRepeatState.Create(Self);
      Item.ID:=Table.FieldAsInteger(0);
      Item.Task:=Table.FieldAsInteger(1);
      Item.DateDeadline:=Table.FieldAsDateTime(2);
      Item.DateChange:=Table.FieldAsDateTime(3);
      Item.NotifyComplete:=Table.FieldAsBoolean(4);
      Item.State:=Table.FieldAsBoolean(5);
      Add(Item);
      Table.Next;
     end;
    Table.Free;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TRepeatStates.Update(Item: TRepeatState);
begin
 if Item.ID < 0 then
  with SQL.InsertInto(tnTable) do
   begin
    AddValue(fnTask, Item.Task);
    AddValue(fnDeadline, DateOf(Item.DateDeadline));
    AddValue(fnDateChange, Item.DateChange);
    AddValue(fnNotifyComplete, Item.NotifyComplete);
    AddValue(fnState, Item.State);
    DataBase.DB.ExecSQL(GetSQL);
    Item.ID:=DataBase.DB.GetLastInsertRowID;
    EndCreate;
   end
 else
  with SQL.Update(tnTable) do
   begin
    AddValue(fnTask, Item.Task);
    AddValue(fnDeadline, DateOf(Item.DateDeadline));
    AddValue(fnDateChange, Item.DateChange);
    AddValue(fnNotifyComplete, Item.NotifyComplete);
    AddValue(fnState, Item.State);
    WhereFieldEqual(fnID, Item.ID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TRepeatStates.Save;
var i:Integer;
begin
 for i:= 0 to Count-1 do Update(Items[i]);
end;

procedure TRepeatStates.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
end;

end.

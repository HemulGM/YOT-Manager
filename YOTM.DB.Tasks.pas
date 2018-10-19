unit YOTM.DB.Tasks;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections,
       HGM.Controls.VirtualTable, YOTM.DB, YOTM.DB.Labels;

  type
   TTaskFilter = (tkfAll, tkfDated, tkfDeadlined, tkfNoDate);
   //«адачи
   TTaskItems = class;

   TTaskType = (ttSimple, ttRepeatInDay, ttRepeatInWeek, ttRepeatInMonth, ttRepeatInYear);

   TTaskRepeat = string; //“ут и часы {1..24} и дни недели {1..7} и дни мес€ца {1..31} и мес€цы {1..12}

   TTaskItem = class(TObject)
    private
     FName: string;
     FDateCreate: TDateTime;
     FDateNotify: TDateTime;
     FParent: Integer;
     FDeadline: Boolean;
     FOwner: TTaskItems;
     FNotifyComplete: Boolean;
     FDateDeadline: TDateTime;
     FID: Integer;
     FDescription: string;
     FTaskType: TTaskType;
     FTaskRepeat:string;
     FSaved:Boolean;
     FState: Boolean;
     FLabelItems:TLabelItems;
     function GetTaskRepeat(Index: Byte): Boolean;
     procedure SetDateCreate(const Value: TDateTime);
     procedure SetDateDeadline(const Value: TDateTime);
     procedure SetDateNotify(const Value: TDateTime);
     procedure SetDescription(const Value: string);
     procedure SetID(const Value: Integer);
     procedure SetName(const Value: string);
     procedure SetNotifyComplete(const Value: Boolean);
     procedure SetOwner(const Value: TTaskItems);
     procedure SetParent(const Value: Integer);
     procedure SetTaskRepeat(Index: Byte; const Value: Boolean);
     procedure SetTaskType(const Value: TTaskType);
     procedure SetDeadline(const Value: Boolean);
     procedure SetState(const Value: Boolean);
    procedure SetLabelItems(const Value: TLabelItems);
    public
     constructor Create(AOwner: TTaskItems);
     destructor Destroy;
     procedure Update;
     property Owner:TTaskItems read FOwner write SetOwner;
     property ID:Integer read FID write SetID;
     property Parent:Integer read FParent write SetParent;
     property Name:string read FName write SetName;
     property Description:string read FDescription write SetDescription;
     property DateCreate:TDateTime read FDateCreate write SetDateCreate;
     property TaskType:TTaskType read FTaskType write SetTaskType;
     property TaskRepeat[Index:Byte]:Boolean read GetTaskRepeat write SetTaskRepeat;
     property DateDeadline:TDateTime read FDateDeadline write SetDateDeadline;
     property DateNotify:TDateTime read FDateNotify write SetDateNotify;
     property NotifyComplete:Boolean read FNotifyComplete write SetNotifyComplete;
     property Deadline:Boolean read FDeadline write SetDeadline;
     property State:Boolean read FState write SetState;
     property LabelItems:TLabelItems read FLabelItems write SetLabelItems;
     property Saved:Boolean read FSaved;
   end;

   TTaskItems = class(TTableData<TTaskItem>)
    const
     tnTable = 'TaskItems';
     fnID = 'tkID';
     fnParent = 'tkParent';
     fnName = 'tkName';
     fnDesc = 'tkDesc';
     fnDateCreate = 'tkDateCreate';
     fnTaskType = 'tkTaskType';
     fnTaskRepeat = 'tkTaskRepeat';     //000000000000000000000000000000
     fnDateDeadline = 'tkDateDeadline';
     fnDateNotify = 'tkDateNotify';
     fnNotifyComplete = 'tkNotifyComplete';
     fnDeadline = 'tkDeadline';
     fnState = 'tkState';
    private
     FDataBase: TDB;
     FShowEndedTask: Boolean;
     FShowDate: TDate;
    FTaskFilter: TTaskFilter;
     procedure SetDataBase(const Value: TDB);
     procedure SetShowEndedTask(const Value: Boolean);
     procedure SetShowDate(const Value: TDate);
    procedure SetTaskFilter(const Value: TTaskFilter);
    public
     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     procedure Reload;
     function GetCount(Date:TDate = 0):Integer;
     function GetDeadlined(Date:TDate):Integer;
     procedure Update(Index: Integer);
     procedure Delete(Index: Integer); override;
     procedure Save;
     property ShowEndedTask:Boolean read FShowEndedTask write SetShowEndedTask;
     property ShowDate:TDate read FShowDate write SetShowDate;
     property DataBase:TDB read FDataBase write SetDataBase;
     property TaskFilter:TTaskFilter read FTaskFilter write SetTaskFilter;
   end;                                                                   //Ѕаза

implementation
 uses YOTM.DB.Comments;

{ TTaskItem }

constructor TTaskItem.Create(AOwner: TTaskItems);
begin
 inherited Create;
 FSaved:=False;
 FID:=-1;
 FState:=False;
 FParent:=-1;
 FDeadline:=False;
 FTaskRepeat:='0000000000000000000000000000000';
 Owner:=AOwner;
end;

destructor TTaskItem.Destroy;
begin
 FLabelItems.Free;
 inherited;
end;

function TTaskItem.GetTaskRepeat(Index: Byte): Boolean;
begin
 Result:=FTaskRepeat[Index] = '1';
end;

procedure TTaskItem.SetDateCreate(const Value: TDateTime);
begin
 FDateCreate:=Value;
end;

procedure TTaskItem.SetDateDeadline(const Value: TDateTime);
begin
 FDateDeadline:=Value;
end;

procedure TTaskItem.SetDateNotify(const Value: TDateTime);
begin
 FDateNotify:=Value;
end;

procedure TTaskItem.SetDeadline(const Value: Boolean);
begin
 FDeadline := Value;
end;

procedure TTaskItem.SetDescription(const Value: string);
begin
 FDescription:=Value;
end;

procedure TTaskItem.SetID(const Value: Integer);
begin
 FID:=Value;
end;

procedure TTaskItem.SetLabelItems(const Value: TLabelItems);
begin
 FLabelItems := Value;
end;

procedure TTaskItem.SetName(const Value: string);
begin
 FName:=Value;
end;

procedure TTaskItem.SetNotifyComplete(const Value: Boolean);
begin
 FNotifyComplete:=Value;
end;

procedure TTaskItem.SetOwner(const Value: TTaskItems);
begin
 FOwner:=Value;
end;

procedure TTaskItem.SetParent(const Value: Integer);
begin
 FParent:=Value;
end;

procedure TTaskItem.SetState(const Value: Boolean);
begin
 FState := Value;
end;

procedure TTaskItem.SetTaskRepeat(Index: Byte; const Value: Boolean);
begin
 if Value then FTaskRepeat[Index]:='1' else FTaskRepeat[Index]:='0';
end;

procedure TTaskItem.SetTaskType(const Value: TTaskType);
begin
 FTaskType:=Value;
end;

procedure TTaskItem.Update;
begin
 FSaved:=True;
end;

{ TTaskItems }

constructor TTaskItems.Create(ADataBase: TDB; ATableEx: TTableEx);
begin
 inherited Create(ATableEx);
 FDataBase:=ADataBase;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnParent, ftInteger);
    AddField(fnName, ftString);
    AddField(fnDesc, ftString);
    AddField(fnDateCreate, ftDateTime);
    AddField(fnTaskType, ftInteger);
    AddField(fnTaskRepeat, ftString);
    AddField(fnDateDeadline, ftDateTime);
    AddField(fnDateNotify, ftDateTime);
    AddField(fnNotifyComplete, ftBoolean);
    AddField(fnDeadline, ftBoolean);
    AddField(fnState, ftInteger);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTaskItems.Delete(Index: Integer);
var TaskID:Integer;
begin
 TaskID:=Items[Index].ID;
 with SQL.Delete(tnTable) do
  begin
   WhereFieldEqual(fnID, TaskID);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 with SQL.Delete(TCommentItems.tnTable) do
  begin
   WhereFieldEqual(TCommentItems.fnTask, TaskID);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 Items[Index].Free;
 inherited;
end;

function TTaskItems.GetCount(Date: TDate): Integer;
begin
 with SQL.Select(tnTable) do
  begin
   AddField('Count(*)');
   if Date <> 0 then
    begin
     WhereFieldEqual(fnDateCreate, Trunc(Date));
     WhereFieldEqual(fnDeadline, False);
    end
   else WhereFieldEqual(fnDeadline, False);
   WhereFieldEqual(fnState, False);
   Result:=FDataBase.DB.GetTableValue(GetSQL);
   EndCreate;
  end;
end;

function TTaskItems.GetDeadlined(Date:TDate): Integer;
begin
 with SQL.Select(tnTable) do
  begin
   AddField('Count(*)');
   WhereField(fnDateDeadline, '<', Date);
   WhereFieldEqual(fnDeadline, True);
   WhereFieldEqual(fnState, False);
   Result:=FDataBase.DB.GetTableValue(GetSQL);
   EndCreate;
  end;
end;

procedure TTaskItems.Reload;
var Table, Labels:TSQLiteTable;
    Item:TTaskItem;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(tnTable) do
   begin
    AddField(fnID);
    AddField(fnParent);
    AddField(fnName);
    AddField(fnDesc);
    AddField(fnDateCreate);
    AddField(fnTaskType);
    AddField(fnTaskRepeat);
    AddField(fnDateDeadline);
    AddField(fnDateNotify);
    AddField(fnNotifyComplete);
    AddField(fnDeadline);
    AddField(fnState);
    case FTaskFilter of
     tkfDated:
      begin
       WhereFieldEqual(fnDateCreate, Trunc(FShowDate));
       WhereFieldEqual(fnDeadline, True);
      end;
     tkfDeadlined:
      begin
       WhereField(fnDateDeadline, '<', FShowDate);
       WhereFieldEqual(fnDeadline, True);
      end;
     tkfNoDate: WhereFieldEqual(fnDeadline, False);
    end;

    if not FShowEndedTask then WhereFieldEqual(fnState, False)
    else OrderBy(fnState);
    OrderBy(fnDateCreate, True);
    Table:=FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TTaskItem.Create(Self);
      Item.ID:=Table.FieldAsInteger(0);
      Item.Parent:=Table.FieldAsInteger(1);
      Item.Name:=Table.FieldAsString(2);
      Item.Description:=Table.FieldAsString(3);
      Item.DateCreate:=Table.FieldAsDateTime(4);
      Item.TaskType:=TTaskType(Table.FieldAsInteger(5));
      Item.FTaskRepeat:=Table.FieldAsString(6);
      Item.DateDeadline:=Table.FieldAsDateTime(7);
      Item.DateNotify:=Table.FieldAsDateTime(8);
      Item.NotifyComplete:=Table.FieldAsBoolean(9);
      Item.Deadline:=Table.FieldAsBoolean(10);
      Item.State:=Table.FieldAsBoolean(11);
      Item.LabelItems:=TLabelItems.Create(FDataBase, nil);
      Item.LabelItems.Reload(Item.ID);
      Item.Update;
      Add(Item);
      Table.Next;
     end;
    Table.Free;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TTaskItems.Save;
var i:Integer;
begin
 for i := 0 to Count-1 do Update(i);
end;

procedure TTaskItems.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
end;

procedure TTaskItems.SetShowDate(const Value: TDate);
begin
  FShowDate := Value;
end;

procedure TTaskItems.SetShowEndedTask(const Value: Boolean);
begin
 FShowEndedTask := Value;
end;

procedure TTaskItems.SetTaskFilter(const Value: TTaskFilter);
begin
 FTaskFilter := Value;
end;

procedure TTaskItems.Update(Index: Integer);
begin
 if Items[Index].ID < 0 then
  with SQL.InsertInto(tnTable) do
   begin
    AddValue(fnParent, Items[Index].Parent);
    AddValue(fnName, Items[Index].Name);
    AddValue(fnDesc, Items[Index].Description);
    AddValue(fnDateCreate, Items[Index].DateCreate);
    AddValue(fnTaskType, Ord(Items[Index].TaskType));
    AddValue(fnTaskRepeat, Items[Index].FTaskRepeat);
    AddValue(fnDateDeadline, Items[Index].DateDeadline);
    AddValue(fnDateNotify, Items[Index].DateNotify);
    AddValue(fnNotifyComplete, Items[Index].NotifyComplete);
    AddValue(fnDeadline, Items[Index].Deadline);
    AddValue(fnState, Items[Index].State);
    DataBase.DB.ExecSQL(GetSQL);
    Items[Index].ID:=DataBase.DB.GetLastInsertRowID;
    EndCreate;
   end
 else
  with SQL.Update(tnTable) do
   begin
    AddValue(fnParent, Items[Index].Parent);
    AddValue(fnName, Items[Index].Name);
    AddValue(fnDesc, Items[Index].Description);
    AddValue(fnDateCreate, Items[Index].DateCreate);
    AddValue(fnTaskType, Ord(Items[Index].TaskType));
    AddValue(fnTaskRepeat, Items[Index].FTaskRepeat);
    AddValue(fnDateDeadline, Items[Index].DateDeadline);
    AddValue(fnDateNotify, Items[Index].DateNotify);
    AddValue(fnNotifyComplete, Items[Index].NotifyComplete);
    AddValue(fnDeadline, Items[Index].Deadline);
    AddValue(fnState, Items[Index].State);
    WhereFieldEqual(fnID, Items[Index].ID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
 Items[Index].Update;
end;

end.

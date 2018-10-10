unit YOTM.DB;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections, HGM.Controls.VirtualTable;

  type
   TDB = class
    private
     FDataBase:TSQLiteDatabase;
     FDataBaseName:string;
     FCreated:Boolean;
    public
     constructor Create(FileName:string);
     property DataBaseName:string read FDataBaseName;
     property DB:TSQLiteDatabase read FDataBase;
     property Created:Boolean read FCreated;
   end;

   TTimeItem = class;
   TTimeItems = class;

   TTimeItem = class(TObject)
    private
     FOwner:TTimeItems;
     FID:Integer;
     FDescription: string;
     FTimeTo: TTime;
     FTimeFrom: TTime;
     FDate: TDate;
     procedure SetOwner(const Value: TTimeItems);
     procedure SetDescription(const Value: string);
     procedure SetTimeFrom(const Value: TTime);
     procedure SetTimeTo(const Value: TTime);
     procedure SetID(const Value: Integer);
     procedure SetDate(const Value: TDate);
    public
     constructor Create(AOwner: TTimeItems);
     property Owner:TTimeItems read FOwner write SetOwner;
     property Description:string read FDescription write SetDescription;
     property TimeFrom:TTime read FTimeFrom write SetTimeFrom;
     property TimeTo:TTime read FTimeTo write SetTimeTo;
     property Date:TDate read FDate write SetDate;
     property ID:Integer read FID write SetID;
   end;

   TTimeItems = class(TTableData<TTimeItem>)
    const
     tnTable = 'TimeItems';
     fnID = 'tiID';
     fnDesc = 'tidesc';
     fnTimeFrom = 'tiTimeFrom';
     fnTimeTo = 'toTimeTo';
     fnDate = 'toDate';
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public
     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     procedure Reload(Date:TDate);
     procedure Update(Index: Integer);
     procedure Delete(Index: Integer); override;
     procedure Save;
     property DataBase:TDB read FDataBase write SetDataBase;
   end;

   TTaskItems = class;

   TTaskType = (ttSimple, ttRepeatInDay, ttRepeatInWeek, ttRepeatInMonth, ttRepeatInYear);

   TTaskRepeat = string; //“ут и часы {1..24} и дни недели {1..7} и дни мес€ца {1..31} и мес€цы {1..12}

   TTaskItem = class(TObject)
  private
    FName: string;
    FDateCreate: TDateTime;
    FDateNotify: TDateTime;
    FParent: Integer;
    FOwner: TTaskItems;
    FNotifyComplete: Boolean;
    FDateDeadline: TDateTime;
    FID: Integer;
    FDescription: string;
    FTaskType: TTaskType;
    FTaskRepeat:string;
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
    public
     constructor Create(AOwner: TTaskItems);
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
   end;
//000000000000000000000000000000
   TTaskItems = class(TTableData<TTaskItem>)
    const
     tnTable = 'TaskItems';
     fnID = 'tkID';
     fnParent = 'tkParent';
     fnName = 'tkName';
     fnDesc = 'tkDesc';
     fnDateCreate = 'tkDateCreate';
     fnTaskType = 'tkTaskType';
     fnTaskRepeat = 'tkTaskRepeat';
     fnDateDeadline = 'tkDateDeadline';
     fnDateNotify = 'tkDateNotify';
     fnNotifyComplete = 'tkNotifyComplete';
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public
     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     procedure Reload(Date:TDate);
     procedure Update(Index: Integer);
     procedure Delete(Index: Integer); override;
     procedure Save;
     property DataBase:TDB read FDataBase write SetDataBase;
   end;

implementation

{ TTimeItem }

constructor TTimeItem.Create(AOwner: TTimeItems);
begin
 inherited Create;
 FID:=-1;
 Owner:=AOwner;
end;

procedure TTimeItem.SetDate(const Value: TDate);
begin
 FDate := Value;
end;

procedure TTimeItem.SetDescription(const Value: string);
begin
 FDescription := Value;
end;

procedure TTimeItem.SetID(const Value: Integer);
begin
 FID := Value;
end;

procedure TTimeItem.SetOwner(const Value: TTimeItems);
begin
 FOwner:=Value;
end;

procedure TTimeItem.SetTimeFrom(const Value: TTime);
begin
  FTimeFrom := Value;
end;

procedure TTimeItem.SetTimeTo(const Value: TTime);
begin
  FTimeTo := Value;
end;

{ TDB }

constructor TDB.Create(FileName: string);
begin
 FCreated:=False;
 try
  FDataBase:=TSQLiteDatabase.Create(FileName);
  FCreated:=True;
 finally

 end;
end;

{ TTimeItems }

constructor TTimeItems.Create(ADataBase: TDB; ATableEx:TTableEx);
begin
 inherited Create(ATableEx);
 FDataBase:=ADataBase;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnDesc, ftString);
    AddField(fnTimeFrom, ftDateTime);
    AddField(fnTimeTo, ftDateTime);
    AddField(fnDate, ftDateTime);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TTimeItems.Delete(Index: Integer);
begin
 with SQL.Delete(tnTable) do
  begin
   WhereFieldEqual(fnID, Items[Index].ID);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 inherited;
end;

procedure TTimeItems.Reload;
var Table:TSQLiteTable;
    Item:TTimeItem;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(tnTable) do
   begin
    AddField(fnID);
    AddField(fnDesc);
    AddField(fnTimeFrom);
    AddField(fnTimeTo);
    AddField(fnDate);
    WhereFieldEqual(fnDate, Trunc(Date));
    OrderBy(fnTimeFrom, True);
    Table:=FDataBase.DB.GetTable(GetSQL);
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TTimeItem.Create(Self);
      Item.ID:=Table.FieldAsInteger(0);
      Item.Description:=Table.FieldAsString(1);
      Item.TimeFrom:=Frac(Table.FieldAsDateTime(2));
      Item.TimeTo:=Frac(Table.FieldAsDateTime(3));
      Item.Date:=Trunc(Table.FieldAsDateTime(4));
      Add(Item);
      Table.Next;
     end;
    EndCreate;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TTimeItems.Update(Index:Integer);
begin
 if Items[Index].ID < 0 then
  with SQL.InsertInto(tnTable) do
   begin
    AddValue(fnDesc, Items[Index].Description);
    AddValue(fnTimeFrom, Items[Index].TimeFrom);
    AddValue(fnTimeTo, Items[Index].TimeTo);
    AddValue(fnDate, Items[Index].Date);
    DataBase.DB.ExecSQL(GetSQL);
    Items[Index].ID:=DataBase.DB.GetLastInsertRowID;
    EndCreate;
   end
 else
  with SQL.Update(tnTable) do
   begin
    AddValue(fnDesc, Items[Index].Description);
    AddValue(fnTimeFrom, Items[Index].TimeFrom);
    AddValue(fnTimeTo, Items[Index].TimeTo);
    AddValue(fnDate, Items[Index].Date);
    WhereFieldEqual(fnID, Items[Index].ID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end
end;

procedure TTimeItems.Save;
var i:Integer;
begin
 for i := 0 to Count-1 do Update(i);
end;

procedure TTimeItems.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
end;

{ TTaskItem }

constructor TTaskItem.Create(AOwner: TTaskItems);
begin
 inherited Create;
 FID:=-1;
 FParent:=-1;
 Owner:=AOwner;
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

procedure TTaskItem.SetDescription(const Value: string);
begin
 FDescription:=Value;
end;

procedure TTaskItem.SetID(const Value: Integer);
begin
 FID:=Value;
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

procedure TTaskItem.SetTaskRepeat(Index: Byte; const Value: Boolean);
begin
 if Value then FTaskRepeat[Index]:='1' else FTaskRepeat[Index]:='0';
end;

procedure TTaskItem.SetTaskType(const Value: TTaskType);
begin
 FTaskType:=Value;
end;

{ TTaskItems }

constructor TTaskItems.Create(ADataBase: TDB; ATableEx: TTableEx);
begin
 inherited Create(ATableEx);
 FDataBase:=ADataBase;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin       {
    AddField(fnID, ftInteger, True, True);
    AddField(fnDesc, ftString);
    AddField(fnTimeFrom, ftDateTime);
    AddField(fnTimeTo, ftDateTime);
    AddField(fnDate, ftDateTime);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;  }
   end;
end;

procedure TTaskItems.Delete(Index: Integer);
begin
  inherited;

end;

procedure TTaskItems.Reload(Date: TDate);
begin

end;

procedure TTaskItems.Save;
begin

end;

procedure TTaskItems.SetDataBase(const Value: TDB);
begin

end;

procedure TTaskItems.Update(Index: Integer);
begin

end;

end.

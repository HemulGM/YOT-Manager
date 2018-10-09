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

end.

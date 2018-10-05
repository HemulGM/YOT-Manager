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
     procedure SetOwner(const Value: TTimeItems);
     procedure SetDescription(const Value: string);
     procedure SetTimeFrom(const Value: TTime);
     procedure SetTimeTo(const Value: TTime);
     procedure SetID(const Value: Integer);
    public
     constructor Create(AOwner: TTimeItems);
     property Owner:TTimeItems read FOwner write SetOwner;
     property Description:string read FDescription write SetDescription;
     property TimeFrom:TTime read FTimeFrom write SetTimeFrom;
     property TimeTo:TTime read FTimeTo write SetTimeTo;
     property ID:Integer read FID write SetID;
   end;

   TTimeItems = class(TTableData<TTimeItem>)
    const
     tnTable = 'TimeItems';
     fnID = 'tiID';
     fnDesc = 'tidesc';
     fnTimeFrom = 'tiTimeFrom';
     fnTimeTo = 'toTimeTo';
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public

     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     procedure Reload;
     property DataBase:TDB read FDataBase write SetDataBase;
   end;

implementation

{ TTimeItem }

constructor TTimeItem.Create(AOwner: TTimeItems);
begin
 inherited Create;
 Owner:=AOwner;
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
    Table:=FDataBase.DB.GetTable(GetSQL);
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TTimeItem.Create(Self);
      Item.ID:=Table.FieldAsInteger(0);
      Item.Description:=Table.FieldAsString(1);
      Item.TimeFrom:=Table.FieldAsDateTime(2);
      Item.TimeTo:=Table.FieldAsDateTime(3);
      Add(Item);
     end;
    EndCreate;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TTimeItems.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
 Reload;
end;

end.

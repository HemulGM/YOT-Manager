unit YOTM.DB.Labels;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections,
       HGM.Controls.VirtualTable, YOTM.DB, Vcl.Graphics, YOTM.DB.LabelTypes;

  type
   //Метки задач
   TLabelItem = class;
   TLabelItems = class;

   TLabelItem = class(TObject)
    private
     FTypeID:Integer;
     FTask: Integer;
     FName: string;
     FColor:TColor;
     procedure SetName(const Value: string);
     procedure SetTypeID(const Value: Integer);
     procedure SetTask(const Value: Integer);
    procedure SetColor(const Value: TColor);
    public
     constructor Create(ALableType:TLabelType);
     property Name:string read FName write SetName;
     property TypeID:Integer read FTypeID write SetTypeID;
     property Task:Integer read FTask write SetTask;
     property Color:TColor read FColor write SetColor;
   end;

   TLabelItems = class(TTableData<TLabelItem>)
    const
     tnTable = 'LabelItems';
     fnTypeID = 'liID';
     fnTask = 'liTask';
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public
     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     procedure Reload(TaskID:Integer);
     function New(Item:TLabelItem):Integer;
     procedure Drop(Index: Integer);
     property DataBase:TDB read FDataBase write SetDataBase;
   end;

implementation

{ TTimeItem }

constructor TLabelItem.Create(ALableType:TLabelType);
begin
 inherited Create;
 if Assigned(ALableType) then
  begin
   FTypeID:=ALableType.ID;
   FName:=ALableType.Name;
   FColor:=ALableType.Color;
  end
 else
  begin
   FTypeID:=-1;
   FName:='';
  end;
 FTask:=-1;
end;

procedure TLabelItem.SetColor(const Value: TColor);
begin
  FColor := Value;
end;

procedure TLabelItem.SetName(const Value: string);
begin
 FName := Value;
end;

procedure TLabelItem.SetTypeID(const Value: Integer);
begin
 FTypeID := Value;
end;

procedure TLabelItem.SetTask(const Value: Integer);
begin
 FTask := Value;
end;

{ TLabelItems }

constructor TLabelItems.Create(ADataBase: TDB; ATableEx:TTableEx);
begin
 inherited Create(ATableEx);
 FDataBase:=ADataBase;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin
    AddField(fnTask, ftInteger);
    AddField(fnTypeID, ftInteger);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TLabelItems.Drop(Index: Integer);
begin
 with SQL.Delete(tnTable) do
  begin
   WhereFieldEqual(fnTypeID, Items[Index].TypeID);
   WhereFieldEqual(fnTask, Items[Index].Task);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 inherited;
end;

function TLabelItems.New(Item: TLabelItem): Integer;
begin
 with SQL.InsertInto(tnTable) do
  begin
   AddValue(fnTask, Item.Task);
   AddValue(fnTypeID, Item.TypeID);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 Result:=Add(Item);
end;

procedure TLabelItems.Reload;
var Table, TableTypes:TSQLiteTable;
    Item:TLabelItem;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(tnTable) do
   begin
    AddField(fnTask);
    AddField(fnTypeID);
    WhereFieldEqual(fnTask, TaskID);
    OrderBy(fnTypeID);
    Table:=FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TLabelItem.Create(nil);
      Item.Task:=Table.FieldAsInteger(0);
      Item.TypeID:=Table.FieldAsInteger(1);
      with SQL.Select(TLabelTypes.tnTable) do
       begin
        AddField(TLabelTypes.fnName);
        AddField(TLabelTypes.fnColor);
        WhereFieldEqual(TLabelTypes.fnID, Item.TypeID);
        TableTypes:=FDataBase.DB.GetTable(GetSQL);
        if TableTypes.RowCount > 0 then
         begin
          Item.Name:=TableTypes.FieldAsString(0);
          Item.Color:=TableTypes.FieldAsInteger(1);
         end;
        TableTypes.Free;
        EndCreate;
       end;
      Add(Item);
      Table.Next;
     end;
    Table.Free;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TLabelItems.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
end;

end.

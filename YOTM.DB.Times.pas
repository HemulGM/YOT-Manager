unit YOTM.DB.Times;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections,
       HGM.Controls.VirtualTable, YOTM.DB, Vcl.Graphics;

  type
   //Время работы
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
     FTask: Integer;
     FColor: TColor;
     FDateEnd: TDate;
     procedure SetOwner(const Value: TTimeItems);
     procedure SetDescription(const Value: string);
     procedure SetTimeFrom(const Value: TTime);
     procedure SetTimeTo(const Value: TTime);
     procedure SetID(const Value: Integer);
     procedure SetDate(const Value: TDate);
     procedure SetTask(const Value: Integer);
     procedure SetColor(const Value: TColor);
     procedure SetDateEnd(const Value: TDate);
    public
     constructor Create(AOwner: TTimeItems);
     property Owner:TTimeItems read FOwner write SetOwner;
     property Description:string read FDescription write SetDescription;
     property TimeFrom:TTime read FTimeFrom write SetTimeFrom;
     property TimeTo:TTime read FTimeTo write SetTimeTo;
     property Date:TDate read FDate write SetDate;
     property DateEnd:TDate read FDateEnd write SetDateEnd;
     property Color:TColor read FColor write SetColor;
     property ID:Integer read FID write SetID;
     property Task:Integer read FTask write SetTask;
   end;

   TTimeItems = class(TTableData<TTimeItem>)
    const
     tnTable = 'TimeItems';
     fnID = 'tiID';
     fnTask = 'tiTask';
     fnDesc = 'tiDesc';
     fnTimeFrom = 'tiTimeFrom';
     fnTimeTo = 'tiTimeTo';
     fnDate = 'tiDate';
     fnDateEnd = 'tiDateEnd';
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
 uses YOTM.DB.Tasks;

{ TTimeItem }

constructor TTimeItem.Create(AOwner: TTimeItems);
begin
 inherited Create;
 FID:=-1;
 FTask:=-1;
 FColor:=clNone;
 Owner:=AOwner;
end;

procedure TTimeItem.SetColor(const Value: TColor);
begin
 FColor := Value;
end;

procedure TTimeItem.SetDate(const Value: TDate);
begin
 FDate := Value;
end;

procedure TTimeItem.SetDateEnd(const Value: TDate);
begin
 FDateEnd := Value;
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

procedure TTimeItem.SetTask(const Value: Integer);
begin
 FTask := Value;
end;

procedure TTimeItem.SetTimeFrom(const Value: TTime);
begin
  FTimeFrom := Value;
end;

procedure TTimeItem.SetTimeTo(const Value: TTime);
begin
  FTimeTo := Value;
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
    AddField(fnDateEnd, ftDateTime);
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
    AddField(fnTask);
    AddField(fnDesc);
    AddField(fnTimeFrom);
    AddField(fnTimeTo);
    AddField(fnDate);
    AddField('IFNULL('+TTaskItems.fnColor+', 536870911)');
    AddField(fnDateEnd);
    if Date <> 0 then
     begin
      WhereField(fnDate, ' >= ', Trunc(Date));
      WhereField(fnDateEnd, '<=', Trunc(Date));
     end;
    OrderBy(fnTimeFrom, True);
    LeftJoin(TTaskItems.tnTable, fnTask, TTaskItems.fnID);
    Table:=FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TTimeItem.Create(Self);
      Item.ID:=Table.FieldAsInteger(0);
      Item.Task:=Table.FieldAsInteger(1);
      Item.Description:=Table.FieldAsString(2);
      Item.TimeFrom:=Frac(Table.FieldAsDateTime(3));
      Item.TimeTo:=Frac(Table.FieldAsDateTime(4));
      Item.Date:=Trunc(Table.FieldAsDateTime(5));
      Item.Color:=TColor(Table.FieldAsInteger(6));
      Item.DateEnd:=Table.FieldAsDateTime(7);
      Add(Item);
      Table.Next;
     end;
    Table.Free;
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
    AddValue(fnTask, Items[Index].Task);
    AddValue(fnDesc, Items[Index].Description);
    AddValue(fnTimeFrom, Items[Index].TimeFrom);
    AddValue(fnTimeTo, Items[Index].TimeTo);
    AddValue(fnDate, Items[Index].Date);
    AddValue(fnDateEnd, Items[Index].DateEnd);
    DataBase.DB.ExecSQL(GetSQL);
    Items[Index].ID:=DataBase.DB.GetLastInsertRowID;
    EndCreate;
   end
 else
  with SQL.Update(tnTable) do
   begin
    AddValue(fnTask, Items[Index].Task);
    AddValue(fnDesc, Items[Index].Description);
    AddValue(fnTimeFrom, Items[Index].TimeFrom);
    AddValue(fnTimeTo, Items[Index].TimeTo);
    AddValue(fnDate, Items[Index].Date);
    AddValue(fnDateEnd, Items[Index].DateEnd);
    WhereFieldEqual(fnID, Items[Index].ID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
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

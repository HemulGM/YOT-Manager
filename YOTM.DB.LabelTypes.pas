unit YOTM.DB.LabelTypes;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections,
       HGM.Controls.VirtualTable, YOTM.DB, Vcl.Graphics;

  type
   //Метки
   TLabelType = class;
   TLabelTypes = class;

   TLabelType = class(TObject)
    private
     FOwner:TLabelTypes;
     FID:Integer;
     FName: string;
     FColor:TColor;
     procedure SetOwner(const Value: TLabelTypes);
     procedure SetName(const Value: string);
     procedure SetID(const Value: Integer);
    procedure SetColor(const Value: TColor);
    public
     constructor Create(AOwner: TLabelTypes);
     property Owner:TLabelTypes read FOwner write SetOwner;
     property Name:string read FName write SetName;
     property ID:Integer read FID write SetID;
     property Color:TColor read FColor write SetColor;
   end;

   TLabelTypes = class(TTableData<TLabelType>)
    const
     tnTable = 'LabelTypes';
     fnID = 'ltID';
     fnName = 'ltName';
     fnColor = 'ltColor';
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public
     constructor Create(ADataBase:TDB; ATableEx:TTableEx);
     procedure Reload;
     procedure Update(Index: Integer);
     procedure Delete(Index: Integer); override;
     procedure Save;
     property DataBase:TDB read FDataBase write SetDataBase;
   end;

implementation

{ TTimeItem }

constructor TLabelType.Create(AOwner: TLabelTypes);
begin
 inherited Create;
 FID:=-1;
 Owner:=AOwner;
end;

procedure TLabelType.SetColor(const Value: TColor);
begin
  FColor := Value;
end;

procedure TLabelType.SetName(const Value: string);
begin
 FName := Value;
end;

procedure TLabelType.SetID(const Value: Integer);
begin
 FID := Value;
end;

procedure TLabelType.SetOwner(const Value: TLabelTypes);
begin
 FOwner:=Value;
end;

{ TLabelTypes }

constructor TLabelTypes.Create(ADataBase: TDB; ATableEx:TTableEx);
begin
 inherited Create(ATableEx);
 FDataBase:=ADataBase;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnName, ftString);
    AddField(fnColor, ftInteger);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TLabelTypes.Delete(Index: Integer);
begin
 with SQL.Delete(tnTable) do
  begin
   WhereFieldEqual(fnID, Items[Index].ID);
   DataBase.DB.ExecSQL(GetSQL);
   EndCreate;
  end;
 inherited;
end;

procedure TLabelTypes.Reload;
var Table:TSQLiteTable;
    Item:TLabelType;
begin
 BeginUpdate;
 Clear;
 try
  with SQL.Select(tnTable) do
   begin
    AddField(fnID);
    AddField(fnName);
    AddField(fnColor);
    Table:=FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Table.MoveFirst;
    while not Table.EOF do
     begin
      Item:=TLabelType.Create(Self);
      Item.ID:=Table.FieldAsInteger(0);
      Item.Name:=Table.FieldAsString(1);
      Item.Color:=Table.FieldAsInteger(2);
      Add(Item);
      Table.Next;
     end;
    Table.Free;
   end;
 finally
  EndUpdate;
 end;
end;

procedure TLabelTypes.Update(Index:Integer);
begin
 if Items[Index].ID < 0 then
  with SQL.InsertInto(tnTable) do
   begin
    AddValue(fnName, Items[Index].Name);
    AddValue(fnColor, Items[Index].Color);
    DataBase.DB.ExecSQL(GetSQL);
    Items[Index].ID:=DataBase.DB.GetLastInsertRowID;
    EndCreate;
   end
 else
  with SQL.Update(tnTable) do
   begin
    AddValue(fnName, Items[Index].Name);
    AddValue(fnColor, Items[Index].Color);
    WhereFieldEqual(fnID, Items[Index].ID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
end;

procedure TLabelTypes.Save;
var i:Integer;
begin
 for i := 0 to Count-1 do Update(i);
end;

procedure TLabelTypes.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
end;

end.

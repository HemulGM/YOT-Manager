unit YOTM.DB.Comments;

interface

uses
  HGM.SQLang, HGM.SQLite, System.Generics.Collections, HGM.Controls.VirtualTable,
  YOTM.DB;

type
   //Комментарии к задаче
  TCommentItem = class;

  TCommentItems = class;

  TCommentItem = class(TObject)
  private
    FOwner: TCommentItems;
    FID: Integer;
    FTask: Integer;
    FText: string;
    FDate: TDate;
    procedure SetOwner(const Value: TCommentItems);
    procedure SetText(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetDate(const Value: TDate);
    procedure SetTask(const Value: Integer);
  public
    constructor Create(AOwner: TCommentItems);
    property Owner: TCommentItems read FOwner write SetOwner;
    property Text: string read FText write SetText;
    property Date: TDate read FDate write SetDate;
    property ID: Integer read FID write SetID;
    property Task: Integer read FTask write SetTask;
  end;

  TCommentItems = class(TTableData<TCommentItem>)
    const
      tnTable = 'CommentItems';
      fnID = 'cmID';
      fnTask = 'cmTask';
      fnText = 'cmText';
      fnDate = 'cmDate';
  private
    FDataBase: TDB;
    procedure SetDataBase(const Value: TDB);
  public
    constructor Create(ADataBase: TDB; ATableEx: TTableEx);
    procedure Reload(TaskID: Integer);
    procedure Update(Index: Integer);
    procedure Delete(Index: Integer); override;
    procedure Save;
    procedure Clear; override;
    property DataBase: TDB read FDataBase write SetDataBase;
  end;

implementation

{ TTimeItem }

constructor TCommentItem.Create(AOwner: TCommentItems);
begin
  inherited Create;
  FID := -1;
  FTask := -1;
  Owner := AOwner;
end;

procedure TCommentItem.SetDate(const Value: TDate);
begin
  FDate := Value;
end;

procedure TCommentItem.SetText(const Value: string);
begin
  FText := Value;
end;

procedure TCommentItem.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TCommentItem.SetOwner(const Value: TCommentItems);
begin
  FOwner := Value;
end;

procedure TCommentItem.SetTask(const Value: Integer);
begin
  FTask := Value;
end;

{ TTimeItems }

procedure TCommentItems.Clear;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  inherited;
end;

constructor TCommentItems.Create(ADataBase: TDB; ATableEx: TTableEx);
begin
  inherited Create(ATableEx);
  FDataBase := ADataBase;
  if not FDataBase.DB.TableExists(tnTable) then
    with SQL.CreateTable(tnTable) do
    begin
      AddField(fnID, ftInteger, True, True);
      AddField(fnTask, ftInteger);
      AddField(fnText, ftString);
      AddField(fnDate, ftDateTime);
      FDataBase.DB.ExecSQL(GetSQL);
      EndCreate;
    end;
end;

procedure TCommentItems.Delete(Index: Integer);
begin
  with SQL.Delete(tnTable) do
  begin
    WhereFieldEqual(fnID, Items[Index].ID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
  end;
  Items[Index].Free;
  inherited;
end;

procedure TCommentItems.Reload;
var
  Table: TSQLiteTable;
  Item: TCommentItem;
begin
  BeginUpdate;
  Clear;
  try
    with SQL.Select(tnTable) do
    begin
      AddField(fnID);
      AddField(fnTask);
      AddField(fnText);
      AddField(fnDate);
      WhereFieldEqual(fnTask, TaskID);
      Table := FDataBase.DB.GetTable(GetSQL);
      EndCreate;
      Table.MoveFirst;
      while not Table.EOF do
      begin
        Item := TCommentItem.Create(Self);
        Item.ID := Table.FieldAsInteger(0);
        Item.Task := Table.FieldAsInteger(1);
        Item.Text := Table.FieldAsString(2);
        Item.Date := Table.FieldAsDateTime(3);
        Add(Item);
        Table.Next;
      end;
      Table.Free;
    end;
  finally
    EndUpdate;
  end;
end;

procedure TCommentItems.Update(Index: Integer);
begin
  if Items[Index].ID < 0 then
    with SQL.InsertInto(tnTable) do
    begin
      AddValue(fnTask, Items[Index].Task);
      AddValue(fnText, Items[Index].Text);
      AddValue(fnDate, Items[Index].Date);
      DataBase.DB.ExecSQL(GetSQL);
      Items[Index].ID := DataBase.DB.LastInsertRowID;
      EndCreate;
    end
  else
    with SQL.Update(tnTable) do
    begin
      AddValue(fnTask, Items[Index].Task);
      AddValue(fnText, Items[Index].Text);
      AddValue(fnDate, Items[Index].Date);
      WhereFieldEqual(fnID, Items[Index].ID);
      DataBase.DB.ExecSQL(GetSQL);
      EndCreate;
    end;
end;

procedure TCommentItems.Save;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Update(i);
end;

procedure TCommentItems.SetDataBase(const Value: TDB);
begin
  FDataBase := Value;
end;

end.


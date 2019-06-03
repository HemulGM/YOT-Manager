unit YOTM.DB.Notes;

interface

uses
  SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections, SysUtils,
  System.Classes, HGM.Controls.VirtualTable, YOTM.DB, Vcl.Graphics;

type
   //Метки задач
  TNoteItem = class;

  TNoteItem = class(TObject)
    const
      tnTable = 'NoteItems';
      fnID = 'niID';
      fnText = 'niText';
      fnDate = 'niDate';
      fnModify = 'niModify';
  private
    FID: Integer;
    FLoaded: Boolean;
    FText: TStringStream;
    FDateModify: TDateTime;
    FDate: TDate;
    FDataBase: TDB;
    procedure SetText(const Value: TStringStream);
    procedure SetID(const Value: Integer);
    procedure SetDateModify(const Value: TDateTime);
    procedure SetDate(const Value: TDate);
    procedure SetDataBase(const Value: TDB);
  public
    constructor Create(ADataBase: TDB);
    destructor Destroy; override;
    procedure Load(ADate: TDate);
    procedure Save;
    property ID: Integer read FID write SetID;
    property Text: TStringStream read FText write SetText;
    property Date: TDate read FDate write SetDate;
    property DateModify: TDateTime read FDateModify write SetDateModify;
    property DataBase: TDB read FDataBase write SetDataBase;
    property Loaded: Boolean read FLoaded;
  end;

implementation

uses
  DateUtils;

{ TNoteItem }

constructor TNoteItem.Create;
begin
  inherited Create;
  FDataBase := ADataBase;
  FLoaded := False;
  if not FDataBase.DB.TableExists(tnTable) then
    with SQL.CreateTable(tnTable) do
    begin
      AddField(fnID, ftInteger, True, True);
      AddField(fnText, ftBlob);
      AddField(fnDate, ftDateTime);
      AddField(fnModify, ftDateTime);
      FDataBase.DB.ExecSQL(GetSQL);
      EndCreate;
    end;
  FID := -1;
  FText := TStringStream.Create;
  FDateModify := Now;
  FDate := DateOf(Now);
end;

destructor TNoteItem.Destroy;
begin
  FText.Free;
  inherited;
end;

procedure TNoteItem.Load(ADate: TDate);
var
  Table: TSQLiteTable;
begin
  with SQL.Select(tnTable) do
  begin
    AddField(fnID);
    AddField(fnText);
    AddField(fnDate);
    AddField(fnModify);
    WhereFieldEqual(fnDate, DateOf(ADate));
    Table := FDataBase.DB.GetTable(GetSQL);
    EndCreate;
    Text.Clear;
    if Table.RowCount > 0 then
    begin
      ID := Table.FieldAsInteger(0);
      if Assigned(Table.FieldAsBlob(1)) then
        Text.LoadFromStream(Table.FieldAsBlob(1));
      Date := Table.FieldAsDateTime(2);
      DateModify := Table.FieldAsDateTime(3);
      FLoaded := True;
    end
    else
    begin
      with SQL.InsertInto(tnTable) do
      begin
        Date := DateOf(ADate);
        DateModify := Now;
        AddValue(fnDate, Date);
        AddValue(fnModify, DateModify);
        AddValue(fnText, '');
        FDataBase.DB.ExecSQL(GetSQL);
        ID := FDataBase.DB.GetLastInsertRowID;
        FLoaded := True;
        EndCreate;
      end;
    end; 
    Table.Free;
  end;
end;

procedure TNoteItem.Save;
begin
  if FLoaded then
  begin
    with SQL.Update(tnTable) do
    begin
      DateModify := Now;
      AddValue(fnModify, DateModify);
      WhereFieldEqual(fnID, ID);
      FDataBase.DB.ExecSQL(GetSQL);
      EndCreate;
    end;
    Text.Position := 0;
    with SQL.UpdateBlob(tnTable) do
    begin
      BlobField := fnText;
      WhereFieldEqual(fnID, ID);
      FDataBase.DB.UpdateBlob(GetSQL, Text);
      EndCreate;
    end;
  end;
end;

procedure TNoteItem.SetDataBase(const Value: TDB);
begin
  FDataBase := Value;
end;

procedure TNoteItem.SetDate(const Value: TDate);
begin
  FDate := Value;
end;

procedure TNoteItem.SetDateModify(const Value: TDateTime);
begin
  FDateModify := Value;
end;

procedure TNoteItem.SetText(const Value: TStringStream);
begin
  FText := Value;
end;

procedure TNoteItem.SetID(const Value: Integer);
begin
  FID := Value;
end;

end.


unit YOTM.DB.Notes;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections, SysUtils,
       HGM.Controls.VirtualTable, YOTM.DB, Vcl.Graphics;

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
     FID:Integer;
     FLoaded:Boolean;
     FText: string;
     FDateModify: TDateTime;
     FDate: TDate;
     FDataBase: TDB;
     procedure SetText(const Value: string);
     procedure SetID(const Value: Integer);
     procedure SetDateModify(const Value: TDateTime);
     procedure SetDate(const Value: TDate);
     procedure SetDataBase(const Value: TDB);
    public
     constructor Create(ADataBase:TDB);
     procedure Load(ADate:TDate);
     procedure Save;
     property ID:Integer read FID write SetID;
     property Text:string read FText write SetText;
     property Date:TDate read FDate write SetDate;
     property DateModify:TDateTime read FDateModify write SetDateModify;
     property DataBase:TDB read FDataBase write SetDataBase;
     property Loaded:Boolean read FLoaded;
   end;

implementation
 uses DateUtils;

{ TTimeItem }

constructor TNoteItem.Create;
begin
 inherited Create;
 FDataBase:=ADataBase;
 FLoaded:=False;
 if not FDataBase.DB.TableExists(tnTable) then
  with SQL.CreateTable(tnTable) do
   begin
    AddField(fnID, ftInteger, True, True);
    AddField(fnText, ftString);
    AddField(fnDate, ftDateTime);
    AddField(fnModify, ftDateTime);
    FDataBase.DB.ExecSQL(GetSQL);
    EndCreate;
   end;
 FID:=-1;
 FText:='';
 FDateModify:=Now;
 FDate:=DateOf(Now);
end;

procedure TNoteItem.Load(ADate: TDate);
var Table:TSQLiteTable;
begin
 with SQL.Select(tnTable) do
  begin
   AddField(fnID);
   AddField(fnText);
   AddField(fnDate);
   AddField(fnModify);
   WhereFieldEqual(fnDate, DateOf(ADate));
   Table:=FDataBase.DB.GetTable(GetSQL);
   EndCreate;
   if Table.RowCount > 0 then
    begin
     ID:=Table.FieldAsInteger(0);
     Text:=Table.FieldAsString(1);
     Date:=Table.FieldAsDateTime(2);
     DateModify:=Table.FieldAsDateTime(3);
     FLoaded:=True;
    end
   else
    begin
     with SQL.InsertInto(tnTable) do
      begin
       Text:='';
       Date:=DateOf(ADate);
       DateModify:=Now;

       AddValue(fnDate, Date);
       AddValue(fnModify, DateModify);
       AddValue(fnText, Text);

       FDataBase.DB.ExecSQL(GetSQL);
       ID:=FDataBase.DB.GetLastInsertRowID;
       FLoaded:=True;
       EndCreate;
      end;
    end;
  end;
end;

procedure TNoteItem.Save;
begin
 if FLoaded then
  begin
   with SQL.Update(tnTable) do
    begin
     DateModify:=Now;
     AddValue(fnModify, DateModify);
     AddValue(fnText, Text);
     WhereFieldEqual(fnID, ID);
     FDataBase.DB.ExecSQL(GetSQL);
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

procedure TNoteItem.SetText(const Value: string);
begin
 FText := Value;
end;

procedure TNoteItem.SetID(const Value: Integer);
begin
 FID := Value;
end;

end.

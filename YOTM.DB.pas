unit YOTM.DB;

interface
  uses SQLite3, SQLLang, SQLiteTable3, System.Generics.Collections;

  type
   TDB = class
    private
     FDataBase:TSQLiteDatabase;
     FDataBaseName:string;
     FCreated:Boolean;
    public
     constructor Create(FileName:string);
     property DataBaseName:string read FDataBaseName;
     property Created:Boolean read FCreated;
   end;

   TTimeItem = class;
   TTimeItems = class;

   TTimeItem = class(TObject)
    private
     FOwner:TTimeItems;
     procedure SetOwner(const Value: TTimeItems);
    public
     constructor Create(AOwner: TTimeItems);
     property Owner:TTimeItems read FOwner write SetOwner;
   end;

   TTimeItems = class(TList<TTimeItem>)
    private
     FDataBase: TDB;
     procedure SetDataBase(const Value: TDB);
    public

    constructor Create(ADataBase:TDB);
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

procedure TTimeItem.SetOwner(const Value: TTimeItems);
begin
 FOwner:=Value;
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

constructor TTimeItems.Create(ADataBase: TDB);
begin
 FDataBase:=ADataBase;
end;

procedure TTimeItems.Reload;
begin
// with SQL.Select()

end;

procedure TTimeItems.SetDataBase(const Value: TDB);
begin
 FDataBase:=Value;
 Reload;
end;

end.

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

 var
   FDB:TDB;                                                                     //База

implementation
 uses YOTM.DB.Comments;

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

end.

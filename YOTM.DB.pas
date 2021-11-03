unit YOTM.DB;

interface

uses
  HGM.SQLite, HGM.SQLang, System.Generics.Collections,
  HGM.Controls.VirtualTable;

type
  TOnLogEvent = procedure(Text: string) of object;

  TDB = class
  private
    FDataBase: TSQLiteDatabase;
    FDataBaseName: string;
    FCreated: Boolean;
    FOnLog: TOnLogEvent;
    procedure DoLog(Text: string);
    procedure SetOnLog(const Value: TOnLogEvent);
    procedure OnQuery(Sender: TObject; SQL: string);
  public
    constructor Create(FileName: string);
    destructor Destroy; override;
    procedure Log(Text: string);
    property DataBaseName: string read FDataBaseName;
    property DB: TSQLiteDatabase read FDataBase;
    property Created: Boolean read FCreated;
    property OnLog: TOnLogEvent read FOnLog write SetOnLog;
  end;

var
  FDB: TDB;                                                                     //База

implementation

{ TDB }

constructor TDB.Create(FileName: string);
begin
  FCreated := False;
  FDataBase := TSQLiteDatabase.Create(FileName);
  FDataBase.OnQuery := OnQuery;
  FCreated := True;
end;

destructor TDB.Destroy;
begin
  FDataBase.Free;
  inherited;
end;

procedure TDB.DoLog(Text: string);
begin
  if Assigned(FOnLog) then
    FOnLog(Text);
end;

procedure TDB.Log(Text: string);
begin
  DoLog(Text);
end;

procedure TDB.OnQuery(Sender: TObject; SQL: string);
begin
  DoLog(SQL);
end;

procedure TDB.SetOnLog(const Value: TOnLogEvent);
begin
  FOnLog := Value;
end;

end.


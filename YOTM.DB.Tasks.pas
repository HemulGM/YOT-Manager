unit YOTM.DB.Tasks;

interface

uses
  HGM.SQLite, HGM.SQLang, System.Generics.Collections, System.SysUtils,
  Vcl.Graphics, Vcl.Dialogs, HGM.Controls.VirtualTable, YOTM.DB, YOTM.DB.Labels,
  HGM.Common.DateUtils, YOTM.DB.TaskRepeats;

type
  TTaskFilter = (tkfAll, tkfDated, tkfDeadlined, tkfNoDate, tkLabel);
   //������

  TTaskItems = class;

  TTaskType = (ttSimple, ttRepeatInDay, ttRepeatInWeek, ttRepeatInMonth, ttRepeatInYear);

  TTaskRepeat = string; //��� � ��� ������ {1..7} � ��� {1..31} � ������ {1..12}

  TTaskItem = class(TObject)
  private
    FName: string;
    FDateCreate: TDateTime;
    FDateNotify: TTime;
    FParent: Integer;
    FDeadline: Boolean;
    FOwner: TTaskItems;
    FNotifyComplete: Boolean;
    FDateDeadline: TDateTime;
    FID: Integer;
    FDescription: string;
    FTaskType: TTaskType;
    FTaskRepeat: string;
    FState: Boolean;
    FLabelItems: TLabelItems;
    FNotify: Boolean;
    FColor: TColor;
    FSaved: Boolean;
    function GetTaskRepeat(Index: Byte): Boolean;
    procedure SetDateDeadline(const Value: TDateTime);
    procedure SetDateNotify(const Value: TTime);
    procedure SetDescription(const Value: string);
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: string);
    procedure SetNotifyComplete(const Value: Boolean);
    procedure SetOwner(const Value: TTaskItems);
    procedure SetParent(const Value: Integer);
    procedure SetTaskRepeat(Index: Byte; const Value: Boolean);
    procedure SetTaskType(const Value: TTaskType);
    procedure SetDeadline(const Value: Boolean);
    procedure SetState(const Value: Boolean);
    procedure SetLabelItems(const Value: TLabelItems);
    procedure SetNotify(const Value: Boolean);
    procedure SetColor(const Value: TColor);
    function GetIsOftenRepeat: Boolean;
  public
    constructor Create(AOwner: TTaskItems);
    destructor Destroy; override;
    procedure SaveIt;
    procedure DropLabels;
    property Owner: TTaskItems read FOwner write SetOwner;
    property ID: Integer read FID write SetID;
    property Parent: Integer read FParent write SetParent;
     /// <summary>
     /// ������� �������� ������
     /// �������� ������������ ����. ��� ���� ������ ������� �� �������
     /// </summary>
    property Name: string read FName write SetName;
     /// <summary>
     /// ������ �������� ������ (�� �����������)
     /// </summary>
    property Description: string read FDescription write SetDescription;
     /// <summary>
     /// ���� �������� ������ (�������������� ����). ������ ��� ������.
     /// </summary>
    property DateCreate: TDateTime read FDateCreate;
     /// <summary>
     /// ��� ������ (������� ��� ��� ����������� ������)
     /// </summary>
    property TaskType: TTaskType read FTaskType write SetTaskType;
     /// <summary>
     /// ������ ����������� ������ (�������� ��� ������, ������)
     /// </summary>
    property TaskRepeat[Index: Byte]: Boolean read GetTaskRepeat write SetTaskRepeat;
     /// <summary>
     /// ���� ������ (� �����, ���� �����������).
     /// ����� �� �����������, ���� Deadline = True, ����� ������ ����� �� ��������
     /// </summary>
    property DateDeadline: TDateTime read FDateDeadline write SetDateDeadline;
     /// <summary>
     /// ����� �����������. ����� �� �����������,
     /// ����� ����������� � ������ �������� ��� ��� �������, ���� ��� ��� ���. ����
     /// </summary>
    property TimeNotify: TTime read FDateNotify write SetDateNotify;
     /// <summary>
     /// ����������� ���� � ������ �� ����� ����������
     /// </summary>
    property NotifyComplete: Boolean read FNotifyComplete write SetNotifyComplete;
     /// <summary>
     /// ����������, ���� �� � ������ ���� ����������� (���� ����������)
     /// ���� ���, �� ������ �� ��������
     /// </summary>
    property Deadline: Boolean read FDeadline write SetDeadline;
     /// <summary>
     /// ��������� �� ������ ��� ���
     /// </summary>
    property State: Boolean read FState write SetState;
     /// <summary>
     /// ����� �� ���������� � ������ � ��������� ����� ��� ���
     /// </summary>
    property Notify: Boolean read FNotify write SetNotify;
     /// <summary>
     /// ������ ����������� ������ (�������� ��� ������, ������) � ������ ����
     /// </summary>
    property TaskRepeatData: string read FTaskRepeat write FTaskRepeat;
     /// <summary>
     /// ����� ������ (������������ ������)
     /// </summary>
    property LabelItems: TLabelItems read FLabelItems write SetLabelItems;
     /// <summary>
     /// ���� ������ (���� ���), �������� ����� ����� ��� �����
     /// </summary>
    property Color: TColor read FColor write SetColor;
     /// <summary>
     /// ��������� ������ ������ (�������� � �� ��� ���)
     /// </summary>
    property Saved: Boolean read FSaved;
     /// <summary>
     /// ������ �� ����������� ������ ��� ��� (4 � ����� ��� � ������)
     /// </summary>
    property IsOftenRepeat: Boolean read GetIsOftenRepeat;
  end;

  TTaskItems = class(TTableData<TTaskItem>)
    const
      tnTable = 'TaskItems';
      fnID = 'tkID';
      fnParent = 'tkParent';
      fnName = 'tkName';
      fnDesc = 'tkDesc';
      fnDateCreate = 'tkDateCreate';
      fnTaskType = 'tkTaskType';
      fnTaskRepeat = 'tkTaskRepeat';     //000000000000000000000000000000
      fnDateDeadline = 'tkDateDeadline';
      fnTimeNotify = 'tkDateNotify';
      fnNotifyComplete = 'tkNotifyComplete';
      fnNotify = 'tkNotify';
      fnDeadline = 'tkDeadline';
      fnState = 'tkState';
      fnColor = 'tkColor';
  private
    FDataBase: TDB;
    FShowEndedTask: Boolean;
    FShowDate: TDate;
    FDatePeriod: TDatePeriod;
    FTaskFilter: TTaskFilter;
    FUpcoming: Boolean;
    FUseDatePeriod: Boolean;
    FCalcOftenRepeat: Boolean;
    FRepeatStates: TRepeatStates;
    FFilterLabelTypeID: Integer;
    procedure SetDataBase(const Value: TDB);
    procedure SetShowEndedTask(const Value: Boolean);
    procedure SetShowDate(const Value: TDate);
    procedure SetTaskFilter(const Value: TTaskFilter);
    procedure SetUpcoming(const Value: Boolean);
    procedure SetUseDatePeriod(const Value: Boolean);
    procedure SetDatePeriod(const Value: TDatePeriod);
    procedure GetRepeatedTasks;
    procedure SetCalcOftenRepeat(const Value: Boolean);
    procedure SetFilterLabelTypeID(const Value: Integer);
  public
    constructor Create(ADataBase: TDB; ATableEx: TTableEx);
    destructor Destroy; override;
    procedure Reload;
    procedure Clear; override;
    function GetCount(Date: TDate = 0): Integer;
    function GetDeadlined(Date: TDate): Integer;
    function GetItem(ID: Integer): TTaskItem;
    procedure Update(Task: TTaskItem); overload;
    procedure Update(Index: Integer); overload;
    procedure Delete(Index: Integer); override;
    procedure Save;
    function RepeatTaskState(Task: Integer; Date: TDate): Boolean;
    function ThisTaskInThisDate(Task: TTaskItem; Date: TDate; var FDate: TDate): Boolean;
    function ListCount(Date: TDate; var Actual, NotActual, Deadlined, Repeated: Integer): Integer;
    property ShowEndedTask: Boolean read FShowEndedTask write SetShowEndedTask default False;
    property ShowDate: TDate read FShowDate write SetShowDate;
    property DataBase: TDB read FDataBase write SetDataBase;
    property TaskFilter: TTaskFilter read FTaskFilter write SetTaskFilter default tkfAll;
    property Upcoming: Boolean read FUpcoming write SetUpcoming default False;
    property UseDatePeriod: Boolean read FUseDatePeriod write SetUseDatePeriod default False;
    property DatePeriod: TDatePeriod read FDatePeriod write SetDatePeriod;
    property CalcOftenRepeat: Boolean read FCalcOftenRepeat write SetCalcOftenRepeat default False;
    property FilterLabelTypeID: Integer read FFilterLabelTypeID write SetFilterLabelTypeID;
  end;

implementation

uses
  YOTM.DB.Comments, DateUtils, Math;

{ TTaskItem }

constructor TTaskItem.Create(AOwner: TTaskItems);
begin
  inherited Create;
  FSaved := False;
  FColor := clNone;
  FID := -1;
  FState := False;
  FParent := -1;
  FDeadline := False;
  FLabelItems := TLabelItems.Create(AOwner.DataBase, nil);
  FTaskRepeat := '0000000000000000000000000000000';
  Owner := AOwner;
end;

destructor TTaskItem.Destroy;
begin
  FLabelItems.Clear;
  FLabelItems.Free;
  inherited;
end;

procedure TTaskItem.DropLabels;
begin
  with SQL.Delete(TLabelItems.tnTable) do
  begin
    WhereFieldEqual(TLabelItems.fnTask, ID);
    FDB.DB.ExecSQL(GetSQL);
    EndCreate;
  end;
end;

function CntChRepeat(InputStr: string; InputSubStr: Char): integer;
var
  i: integer;
begin
  Result := 0;
  for i := 1 to InputStr.Length do
    if InputStr[i] = InputSubStr then
      Inc(result);
end;

function TTaskItem.GetIsOftenRepeat: Boolean;
begin
  Result := False;
  if TaskType = ttSimple then
    Exit;
  if TaskType = ttRepeatInDay then
    Exit(True);
  if TaskType = ttRepeatInWeek then
  begin
    if CntChRepeat(Copy(FTaskRepeat, 1, 7), '1') >= 4 then
      Exit(True);
  end;
end;

function TTaskItem.GetTaskRepeat(Index: Byte): Boolean;
begin
  if Index > FTaskRepeat.Length then
    Exit(False);
  Result := FTaskRepeat[Index] = '1';
end;

procedure TTaskItem.SetColor(const Value: TColor);
begin
  if FColor = Value then
    Exit;
  FColor := Value;
  FSaved := False;
end;

procedure TTaskItem.SetDateDeadline(const Value: TDateTime);
begin
  if FDateDeadline = Value then
    Exit;
  FDateDeadline := Value;
  FSaved := False;
end;

procedure TTaskItem.SetDateNotify(const Value: TTime);
begin
  if FDateNotify = Value then
    Exit;
  FDateNotify := Value;
  FSaved := False;
end;

procedure TTaskItem.SetDeadline(const Value: Boolean);
begin
  if FDeadline = Value then
    Exit;
  FDeadline := Value;
  FSaved := False;
end;

procedure TTaskItem.SetDescription(const Value: string);
begin
  if FDescription = Value then
    Exit;
  FDescription := Value;
  FSaved := False;
end;

procedure TTaskItem.SetID(const Value: Integer);
begin
  if FID = Value then
    Exit;
  FID := Value;
  FSaved := False;
end;

procedure TTaskItem.SetLabelItems(const Value: TLabelItems);
begin
  if FLabelItems = Value then
    Exit;
  FLabelItems := Value;
  FSaved := False;
end;

procedure TTaskItem.SetName(const Value: string);
begin
  if FName = Value then
    Exit;
  FName := Value;
  FSaved := False;
end;

procedure TTaskItem.SetNotify(const Value: Boolean);
begin
  if FNotify = Value then
    Exit;
  FNotify := Value;
  FSaved := False;
end;

procedure TTaskItem.SetNotifyComplete(const Value: Boolean);
begin
  if FNotifyComplete = Value then
    Exit;
  FNotifyComplete := Value;
  FSaved := False;
end;

procedure TTaskItem.SetOwner(const Value: TTaskItems);
begin
  if FOwner = Value then
    Exit;
  FOwner := Value;
  FSaved := False;
end;

procedure TTaskItem.SetParent(const Value: Integer);
begin
  if FParent = Value then
    Exit;
  FParent := Value;
  FSaved := False;
end;

procedure TTaskItem.SetState(const Value: Boolean);
begin
  if FState = Value then
    Exit;
  FState := Value;
  FSaved := False;
end;

procedure TTaskItem.SetTaskRepeat(Index: Byte; const Value: Boolean);
begin
  if Value then
    FTaskRepeat[Index] := '1'
  else
    FTaskRepeat[Index] := '0';
  FSaved := False;
end;

procedure TTaskItem.SetTaskType(const Value: TTaskType);
begin
  if FTaskType = Value then
    Exit;
  FTaskType := Value;
  FSaved := False;
end;

procedure TTaskItem.SaveIt;
begin
  FSaved := True;
end;

{ TTaskItems }

procedure TTaskItems.Clear;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  inherited;
end;

constructor TTaskItems.Create(ADataBase: TDB; ATableEx: TTableEx);
begin
  inherited Create(ATableEx);
  FDataBase := ADataBase;
  FRepeatStates := TRepeatStates.Create(ADataBase, nil);
  FShowEndedTask := False;
  FUpcoming := False;
  FTaskFilter := tkfAll;
  FCalcOftenRepeat := False;
  if not FDataBase.DB.TableExists(tnTable) then
    with SQL.CreateTable(tnTable) do
    begin
      AddField(fnID, ftInteger, True, True);
      AddField(fnParent, ftInteger);
      AddField(fnName, ftString);
      AddField(fnDesc, ftString);
      AddField(fnDateCreate, ftDateTime);
      AddField(fnTaskType, ftInteger);
      AddField(fnTaskRepeat, ftString);
      AddField(fnDateDeadline, ftDateTime);
      AddField(fnTimeNotify, ftDateTime);
      AddField(fnNotifyComplete, ftBoolean);
      AddField(fnNotify, ftBoolean);
      AddField(fnDeadline, ftBoolean);
      AddField(fnState, ftInteger);
      AddField(fnColor, ftInteger);
      FDataBase.DB.ExecSQL(GetSQL);
      EndCreate;
    end;
end;

procedure TTaskItems.Delete(Index: Integer);
var
  TaskID: Integer;
begin
  TaskID := Items[Index].ID;
  with SQL.Delete(tnTable) do
  begin
    WhereFieldEqual(fnID, TaskID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
  end;
  with SQL.Delete(TCommentItems.tnTable) do
  begin
    WhereFieldEqual(TCommentItems.fnTask, TaskID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
  end;
  with SQL.Delete(TLabelItems.tnTable) do
  begin
    WhereFieldEqual(TLabelItems.fnTask, TaskID);
    DataBase.DB.ExecSQL(GetSQL);
    EndCreate;
  end;
  Items[Index].Free;
  inherited;
end;

destructor TTaskItems.Destroy;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Items[i].Free;
  FRepeatStates.Clear;
  FRepeatStates.Free;
  inherited;
end;

function TTaskItems.GetCount(Date: TDate): Integer;
begin
  with SQL.Select(tnTable) do
  begin
    AddField('Count(*)');
    if Date <> 0 then
    begin
      WhereFieldEqual(fnDateDeadline, Trunc(Date));
      WhereFieldEqual(fnDeadline, True);
    end
    else
      WhereFieldEqual(fnDeadline, False);
   //if not ShowEndedTask then
    WhereFieldEqual(fnState, False);
    WhereFieldEqual(fnTaskType, Ord(ttSimple));
    Result := FDataBase.DB.GetTableValue(GetSQL);
    EndCreate;
  end;
end;

function TTaskItems.GetDeadlined(Date: TDate): Integer;
begin
  with SQL.Select(tnTable) do
  begin
    AddField('Count(*)');

    WhereParenthesesOpen;
      WhereParenthesesOpen;
        WhereParenthesesOpen;
          WhereFieldEqual(fnNotify, True);
          WhereField(fnTimeNotify, ' < ', TimeOf(Date));
        WhereParenthesesClose;
        WhereField(fnDateDeadline, ' = ', DateOf(Date));
      WhereParenthesesClose;
      WhereField(fnDateDeadline, '<', DateOf(Date), wuOR);
    WhereParenthesesClose;

    WhereNotFieldEqual(fnNotifyComplete, True);
    WhereFieldEqual(fnDeadline, True);
    WhereFieldEqual(fnState, False);
    //WhereFieldEqual(fnTaskType, Ord(ttSimple));
    Result := FDataBase.DB.GetTableValue(GetSQL);
    EndCreate;
  end;
end;

function TTaskItems.GetItem(ID: Integer): TTaskItem;
var
  Table: TSQLiteTable;
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do
  begin
    if Items[i].ID = ID then
      Exit(Items[i]);
  end;
  try
    with SQL.Select(tnTable) do
    begin
      AddField(fnID);
      AddField(fnParent);
      AddField(fnName);
      AddField(fnDesc);
      AddField(fnDateCreate);
      AddField(fnTaskType);
      AddField(fnTaskRepeat);
      AddField(fnDateDeadline);
      AddField(fnTimeNotify);
      AddField(fnNotifyComplete);
      AddField(fnDeadline);
      AddField(fnState);
      AddField(fnNotify);
      AddField(fnColor);
      WhereFieldEqual(fnID, ID);
      Table := FDataBase.DB.GetTable(GetSQL);
      EndCreate;
      Table.MoveFirst;
      if Table.RowCount > 0 then
      begin
        Result := TTaskItem.Create(Self);
        Result.ID := Table.FieldAsInteger(0);
        Result.Parent := Table.FieldAsInteger(1);
        Result.Name := Table.FieldAsString(2);
        Result.Description := Table.FieldAsString(3);
        Result.FDateCreate := Table.FieldAsDateTime(4);
        Result.TaskType := TTaskType(Table.FieldAsInteger(5));
        Result.FTaskRepeat := Table.FieldAsString(6);
        Result.DateDeadline := Table.FieldAsDateTime(7);
        Result.TimeNotify := Frac(Table.FieldAsDateTime(8));
        Result.NotifyComplete := Table.FieldAsBoolean(9);
        Result.Deadline := Table.FieldAsBoolean(10);
        Result.State := Table.FieldAsBoolean(11);
        Result.Notify := Table.FieldAsBoolean(12);
        Result.Color := TColor(Table.FieldAsInteger(13));
        Result.LabelItems.Reload(Result.ID);
        Result.SaveIt;
      end;
      Table.Free;
    end;
  except

  end;
end;

function TTaskItems.ThisTaskInThisDate(Task: TTaskItem; Date: TDate; var FDate: TDate): Boolean;
begin
  Result := False;
  case Task.TaskType of
    ttRepeatInDay:
      begin
        FDate := DateOf(Date);
        Exit(True);
      end;
    ttRepeatInWeek:
      begin
        if Task.TaskRepeat[DayOfTheWeek(Date)] then
        begin
          FDate := DateOf(Date); //not RepeatTaskState(Task.ID, FDate)
          Exit(True);
        end;
      end;
    ttRepeatInMonth:
      begin
        if (DayOf(Date) = DayOf(Task.DateDeadline)) and (Task.TaskRepeat[MonthOf(Date)]) then
        begin
          FDate := DateOf(Date);
          Exit(True);
        end;
      end;
    ttRepeatInYear:
      begin
        if (DayOf(Date) = DayOf(Task.DateDeadline)) and (MonthOf(Date) = MonthOf(Task.DateDeadline)) then
        begin
          FDate := DateOf(Date);
          Exit(True);
        end;
      end;
  end;
end;

procedure TTaskItems.Update(Index: Integer);
begin
  Update(Items[Index]);
end;

function TTaskItems.ListCount(Date: TDate; var Actual, NotActual, Deadlined, Repeated: Integer): Integer;
var
  i: Integer;
begin
  Result := 0;
  Actual := 0;
  NotActual := 0;
  Deadlined := 0;
  Repeated := 0;
  for i := 0 to Count - 1 do
    if Items[i].Deadline then
    begin
      if Items[i].TaskType = ttSimple then
      begin
        if SameDate(Items[i].DateDeadline, Date) then
        begin
          if Items[i].State then
            Inc(NotActual)
          else
          begin
            Inc(Actual);
            if DateOf(Date) < DateOf(Now) then
              Inc(Deadlined)
          end;
        end;
        Inc(Result);
      end
      else
      begin
        if (not Items[i].IsOftenRepeat) or FCalcOftenRepeat then
          if (SameDate(Items[i].DateDeadline, Date)) then
            if Items[i].State then
              Inc(NotActual)
            else
            begin
              Inc(Actual);
              if DateOf(Date) < DateOf(Now) then
                Inc(Deadlined)
            end;
      end;
    end;
end;

procedure TTaskItems.GetRepeatedTasks;
var
  Table: TSQLiteTable;
  Item: TTaskItem;
  D1, D2, FDate, ND: TDate;
begin
  try
    if FUseDatePeriod then
    begin
      D1 := DateOf(FDatePeriod.DateBegin);
      D2 := DateOf(FDatePeriod.DateEnd);
    end
    else
    begin
      D1 := DateOf(FShowDate);
      D2 := DateOf(FShowDate);
    end;
    with SQL.Select(tnTable) do
    begin
      AddField(fnID);
      AddField(fnParent);
      AddField(fnName);
      AddField(fnDesc);
      AddField(fnDateCreate);
      AddField(fnTaskType);
      AddField(fnTaskRepeat);
      AddField(fnDateDeadline);
      AddField(fnTimeNotify);
      AddField(fnNotifyComplete);
      AddField(fnDeadline);
      AddField(fnState);
      AddField(fnNotify);
      AddField(fnColor);
      if TaskFilter = tkLabel then
        WhereExists('select null from labelitems where labelitems.liTask = taskitems.tkID and labelitems.liID = ' + IntToStr(Ord(FFilterLabelTypeID)) + '');
      WhereNotFieldEqual(fnTaskType, Ord(ttSimple));
      OrderBy(fnState);
      OrderBy(fnDateCreate, True);
      Table := FDataBase.DB.GetTable(GetSQL);
      EndCreate;
      Table.MoveFirst;
      while not Table.EOF do
      begin
        ND := D1;
        while ND <= D2 do
        begin
          Item := TTaskItem.Create(Self);
          Item.ID := Table.FieldAsInteger(0);
          Item.Parent := Table.FieldAsInteger(1);
          Item.Name := Table.FieldAsString(2);
          Item.Description := Table.FieldAsString(3);
          Item.FDateCreate := Table.FieldAsDateTime(4);
          Item.TaskType := TTaskType(Table.FieldAsInteger(5));
          Item.FTaskRepeat := Table.FieldAsString(6);
          Item.DateDeadline := Table.FieldAsDateTime(7);
          Item.TimeNotify := TimeOf(Table.FieldAsDateTime(8));
          Item.NotifyComplete := Table.FieldAsBoolean(9);
          Item.Deadline := Table.FieldAsBoolean(10);
          Item.State := RepeatTaskState(Item.ID, ND);
          Item.Notify := Table.FieldAsBoolean(12);
          Item.Color := Table.FieldAsInteger(13);
          Item.LabelItems.Reload(Item.ID);

          if ((ShowEndedTask or (not Item.State)) and (ThisTaskInThisDate(Item, ND, FDate)) and (FDate >= DateOf(Now - 14))) or (TaskFilter = tkLabel) then
          begin
            if TaskFilter <> tkLabel then
              Item.DateDeadline := FDate;
            Item.SaveIt;
            Add(Item);
          end
          else
            Item.Free;
          ND := ND + 1;
        end;
        Table.Next;
      end;
      Table.Free;
    end;
  finally

  end;
end;

procedure TTaskItems.Reload;
var
  Table: TSQLiteTable;
  Item: TTaskItem;
  LoadRepeat: Boolean;
begin
  BeginUpdate;
  Clear;
  LoadRepeat := False;
  try
    with SQL.Select(tnTable) do
    begin
      AddField(fnID);
      AddField(fnParent);
      AddField(fnName);
      AddField(fnDesc);
      AddField(fnDateCreate);
      AddField(fnTaskType);
      AddField(fnTaskRepeat);
      AddField(fnDateDeadline);
      AddField(fnTimeNotify);
      AddField(fnNotifyComplete);
      AddField(fnDeadline);
      AddField(fnState);
      AddField(fnNotify);
      AddField(fnColor);
      case FTaskFilter of
        tkfDated:
          begin
            LoadRepeat := True;
            if UseDatePeriod then
              WhereFieldBetween(fnDateDeadline, DateOf(FDatePeriod.DateBegin), DateOf(FDatePeriod.DateEnd))
            else
              WhereFieldEqual(fnDateDeadline, DateOf(FShowDate));
            WhereFieldEqual(fnDeadline, True);
            if not ShowEndedTask then
              WhereFieldEqual(fnState, False);
          end;
        tkfDeadlined:
          begin
            LoadRepeat := True;
            WhereParenthesesOpen;
            WhereParenthesesOpen;
            WhereParenthesesOpen;
            WhereFieldEqual(fnNotify, True);
            WhereField(fnTimeNotify, ' < ', TimeOf(FShowDate));
            WhereParenthesesClose;
            WhereField(fnDateDeadline, ' = ', DateOf(FShowDate));
            WhereParenthesesClose;
            WhereField(fnDateDeadline, '<', DateOf(FShowDate), wuOR);
            WhereParenthesesClose;

            WhereNotFieldEqual(fnNotifyComplete, True);
            WhereFieldEqual(fnDeadline, True);
            WhereFieldEqual(fnState, False);
          end;
        tkfNoDate:
          begin
            LoadRepeat := False;
            WhereFieldEqual(fnDeadline, False);
            if not ShowEndedTask then
              WhereFieldEqual(fnState, False);
          end;
        tkLabel:
          begin
            LoadRepeat := True;
            WhereExists('select null from labelitems where labelitems.liTask = taskitems.tkID and labelitems.liID = ' + IntToStr(Ord(FFilterLabelTypeID)) + '');
            if not ShowEndedTask then
              WhereFieldEqual(fnState, False);
          end;
      end;
      if Upcoming then
      begin
        WhereFieldEqual(fnNotifyComplete, False);
        WhereFieldEqual(fnNotify, True);
      end;
      WhereFieldEqual(fnTaskType, Ord(ttSimple));
      OrderBy(fnState);
      OrderBy(fnDateCreate, True);
      Table := FDataBase.DB.GetTable(GetSQL);
      EndCreate;
      Table.MoveFirst;
      while not Table.EOF do
      begin
        Item := TTaskItem.Create(Self);
        Item.ID := Table.FieldAsInteger(0);
        Item.Parent := Table.FieldAsInteger(1);
        Item.Name := Table.FieldAsString(2);
        Item.Description := Table.FieldAsString(3);
        Item.FDateCreate := Table.FieldAsDateTime(4);
        Item.TaskType := TTaskType(Table.FieldAsInteger(5));
        Item.FTaskRepeat := Table.FieldAsString(6);
        Item.DateDeadline := Table.FieldAsDateTime(7);
        Item.TimeNotify := TimeOf(Table.FieldAsDateTime(8));
        Item.NotifyComplete := Table.FieldAsBoolean(9);
        Item.Deadline := Table.FieldAsBoolean(10);
        Item.State := Table.FieldAsBoolean(11);
        Item.Notify := Table.FieldAsBoolean(12);
        Item.Color := Table.FieldAsInteger(13);
        Item.LabelItems.Reload(Item.ID);
        Item.SaveIt;
        Add(Item);
        Table.Next;
      end;
      Table.Free;
    end;
    if LoadRepeat then
      GetRepeatedTasks;
  finally
    EndUpdate;
  end;
end;

function TTaskItems.RepeatTaskState(Task: Integer; Date: TDate): Boolean;
var
  State: TRepeatState;
begin
  Result := False;
  State := FRepeatStates.GetItem(Task, Date);
  if Assigned(State) then
  begin
    Result := State.State;
    State.Free;
  end;
end;

procedure TTaskItems.Save;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Update(Items[i]);
end;

procedure TTaskItems.SetCalcOftenRepeat(const Value: Boolean);
begin
  FCalcOftenRepeat := Value;
end;

procedure TTaskItems.SetDataBase(const Value: TDB);
begin
  FDataBase := Value;
end;

procedure TTaskItems.SetDatePeriod(const Value: TDatePeriod);
begin
  FDatePeriod := Value;
end;

procedure TTaskItems.SetFilterLabelTypeID(const Value: Integer);
begin
  FFilterLabelTypeID := Value;
end;

procedure TTaskItems.SetUpcoming(const Value: Boolean);
begin
  FUpcoming := Value;
end;

procedure TTaskItems.SetUseDatePeriod(const Value: Boolean);
begin
  FUseDatePeriod := Value;
end;

procedure TTaskItems.SetShowDate(const Value: TDate);
begin
  FShowDate := Value;
end;

procedure TTaskItems.SetShowEndedTask(const Value: Boolean);
begin
  FShowEndedTask := Value;
end;

procedure TTaskItems.SetTaskFilter(const Value: TTaskFilter);
begin
  FTaskFilter := Value;
end;

procedure TTaskItems.Update(Task: TTaskItem);
begin
  if Task.ID < 0 then
    with SQL.InsertInto(tnTable) do
    begin
      AddValue(fnParent, Task.Parent);
      AddValue(fnName, Task.Name);
      AddValue(fnDesc, Task.Description);
      AddValue(fnDateCreate, Now);
      AddValue(fnTaskType, Ord(Task.TaskType));
      AddValue(fnTaskRepeat, Task.FTaskRepeat);
      AddValue(fnDateDeadline, DateOf(Task.DateDeadline));
      AddValue(fnTimeNotify, Task.TimeNotify);
      AddValue(fnNotifyComplete, Task.NotifyComplete);
      AddValue(fnDeadline, Task.Deadline);
      AddValue(fnState, Task.State);
      AddValue(fnNotify, Task.Notify);
      AddValue(fnColor, Task.Color);
      DataBase.DB.ExecSQL(GetSQL);
      Task.ID := DataBase.DB.LastInsertRowID;
      EndCreate;
    end
  else
    with SQL.Update(tnTable) do
    begin
      AddValue(fnParent, Task.Parent);
      AddValue(fnName, Task.Name);
      AddValue(fnDesc, Task.Description);
      AddValue(fnTaskType, Ord(Task.TaskType));
      AddValue(fnTaskRepeat, Task.FTaskRepeat);
      AddValue(fnDateDeadline, DateOf(Task.DateDeadline));
      AddValue(fnTimeNotify, Task.TimeNotify);
      AddValue(fnNotifyComplete, Task.NotifyComplete);
      AddValue(fnDeadline, Task.Deadline);
      AddValue(fnState, Task.State);
      AddValue(fnNotify, Task.Notify);
      AddValue(fnColor, Task.Color);
      WhereFieldEqual(fnID, Task.ID);
      DataBase.DB.ExecSQL(GetSQL);
      EndCreate;
    end;
  Task.SaveIt;
  UpdateTable;
end;

end.


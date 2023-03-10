unit uItemStock.Model.ClassItem;

interface

uses
  uItemStock.Dao.Interfaces,
  uItemStock.Dao.DataModule, FireDAC.Comp.Client;

type
  TItem = class
  private
    FContainer: Integer;
    FPicturePath: String;
    FTypeItem: String;
    FState: String;
    FID: Integer;
    FDescription: String;
    FItem: String;
    FDAOItens : IDaoInstruction;
    procedure SetContainer(const Value: Integer);
    procedure SetDescription(const Value: String);
    procedure SetID(const Value: Integer);
    procedure SetItem(const Value: String);
    procedure SetPicturePath(const Value: String);
    procedure SetState(const Value: String);
    procedure SetTypeItem(const Value: String);
  public
    constructor Create;
    destructor Destroy; override;
    function GetValuesByID(_ID: Integer): TItemValues;
    function GetQuery: TFDQuery; overload;
    function GetQuery(SearchItem: String): TFDQuery; overload;
    property ID: Integer read FID write SetID;
    property Item: String read FItem write SetItem;
    property Description: String read FDescription write SetDescription;
    property PicturePath: String read FPicturePath write SetPicturePath;
    property TypeItem: String read FTypeItem write SetTypeItem;
    property State: String read FState write SetState;
    property Container: Integer read FContainer write SetContainer;
    procedure Insert;
    procedure Delete;
    procedure Update;
  end;

implementation

uses
  FMX.Dialogs, uItemStock.Dao.Instruction, System.SysUtils;

{ TItem }
constructor TItem.Create;
begin
FDAOItens := TDaoIntructions.Create(Self);
end;

procedure TItem.Delete;
begin
  FDAOItens.DeleteItem;
end;

destructor TItem.Destroy;
begin
  inherited;
end;

function TItem.GetQuery(SearchItem: String): TFDQuery;
begin
 Result := FDAOItens.GetQuery(SearchItem);
end;

function TItem.GetQuery: TFDQuery;
begin
 Result := FDAOItens.GetQuery;
end;

function TItem.GetValuesByID(_ID: Integer): TItemValues;
begin
  Result := FDAOItens.GetValuesByID(_ID);
end;

procedure TItem.Insert;
begin
  FDAOItens.InsertItem;
end;

procedure TItem.SetContainer(const Value: Integer);
begin
  if Value <> 0 then
    FContainer := Value
  else
    raise Exception.Create('O Container n?o Pode Ser vazio');
end;

procedure TItem.SetDescription(const Value: String);
begin
  FDescription := Value;
end;

procedure TItem.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TItem.SetItem(const Value: String);
begin
  if Value <> '' then
    FItem := Value
  else
    raise Exception.Create('O campo Nome do Item n?o pode estar vazio!');
end;

procedure TItem.SetPicturePath(const Value: String);
begin
  FPicturePath := Value;
end;

procedure TItem.SetState(const Value: String);
begin
  FState := Value;
end;

procedure TItem.SetTypeItem(const Value: String);
begin
  FTypeItem := Value;
end;

procedure TItem.Update;
begin
  FDAOItens.UpdateItem;
end;

end.

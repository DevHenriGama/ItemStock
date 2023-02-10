unit uItemStock.Controller.ControllViewData;

interface

uses
  FireDAC.Comp.Client, uItemStock.Dao.DataModule, uItemStock.Dao.Instruction,
  uItemStock.Controller.Interfaces, uItemStock.Utils.SysUtils, System.JSON,
  uItemStock.Dao.Interfaces, System.Classes;

type
  TControllViewData = class(TInterfacedObject, IViewData)
  private
    _Dataset: TFDQuery;
    Dao: TDaoIntructions;
    DataModule: TdmDados;
  public
    constructor Create;
    destructor Destroy; override;
    function GetDataSet: TFDQuery;
    procedure SerchToIndex(_Value: String; _Index: Integer);
    procedure SearchToTName(_Value, TableName: String);
    procedure ListAll;
  end;

implementation

{ TControllViewData }
constructor TControllViewData.Create;
begin
  Dao := TDaoIntructions.Create;
  DataModule := TdmDados.Create(nil);
end;

destructor TControllViewData.Destroy;
begin
  Dao.Free;
  DataModule.Free;
  inherited;
end;

function TControllViewData.GetDataSet: TFDQuery;
begin
  _Dataset := Dao.PersitentData;
  Result := _Dataset;
end;

procedure TControllViewData.ListAll;
begin
  Dao.ListAll;
end;

procedure TControllViewData.SearchToTName(_Value, TableName: String);
begin
  Dao.SerchInDatabase(_Value, TableName);
end;

procedure TControllViewData.SerchToIndex(_Value: String; _Index: Integer);
begin
  // DAO.SerchInDatabase(_Value,TUtils.IndexToSr(_Index));
end;

end.

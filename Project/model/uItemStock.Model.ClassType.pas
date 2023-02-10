unit uItemStock.Model.ClassType;

interface

uses uItemStock.Model.Interfaces, uItemStock.Dao.Interfaces,
  FireDAC.Comp.Client;

  type
    TTypesModel = class(TInterfacedObject,iTypesModel)

    private
      FID : Integer;
      FType : String;
      DataAccess : IDAOTypesInstruction;
    public
      class function New : iTypesModel;
      function SetID(_Value : Integer) : iTypesModel;
      function SetTypes(_Value : String) : iTypesModel;
      function GetID : Integer;
      function GetTypes : String;
      procedure Insert;
      procedure Update;
      procedure Delete;
      constructor Create;
      destructor Destroy; Override;

    end;

implementation

uses
  uItemStock.Dao.TypeInstuction;

{ TTypesModel }

constructor TTypesModel.Create;
begin
 DataAccess := TDAOTypesInstructon.Create(Self);
end;

procedure TTypesModel.Delete;
begin
 DataAccess.DeleteType;
end;

destructor TTypesModel.Destroy;
begin

  inherited;
end;

function TTypesModel.GetID: Integer;
begin
  Result := FID;
end;

function TTypesModel.GetTypes: String;
begin
 Result := FType;
end;


procedure TTypesModel.Insert;
begin
DataAccess.NewType;
end;

function TTypesModel.SetID(_Value: Integer): iTypesModel;
begin
  Result := Self;
  FID := _Value;
end;

class function TTypesModel.New: iTypesModel;
begin
   Result := Self.Create;

end;

function TTypesModel.SetTypes(_Value: String): iTypesModel;
begin
  Result := Self;
  FType := _Value;
end;

procedure TTypesModel.Update;
begin
  DataAccess.EditType;
end;

end.

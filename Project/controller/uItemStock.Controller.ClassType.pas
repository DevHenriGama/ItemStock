unit uItemStock.Controller.ClassType;

interface

uses uItemStock.Controller.Interfaces;

type
  TControllTypes = class

  private
    FTypes: String;
    FID: Integer;
    procedure SetID(const Value: Integer);
    procedure SetTypes(const Value: String);

  public
    property ID : Integer read FID write SetID;
    property Types : String read FTypes write SetTypes;
    procedure New;
    procedure Edit;
    procedure Delete;
  end;

implementation

{ TControllTypes }

uses uItemStock.Model.ClassType;

procedure TControllTypes.Delete;
begin
TTypesModel.New.SetID(FID).SetTypes(FTypes).Delete;
end;

procedure TControllTypes.Edit;
begin
TTypesModel.New.SetID(FID).SetTypes(FTypes).Update;
end;

procedure TControllTypes.New;
begin
TTypesModel.New.SetID(FID).SetTypes(FTypes).Insert;
end;

procedure TControllTypes.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TControllTypes.SetTypes(const Value: String);
begin
  FTypes := Value;
end;

end.

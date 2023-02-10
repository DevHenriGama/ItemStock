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
        procedure SetContainer(const Value: Integer);
        procedure SetDescription(const Value: String);
        procedure SetID(const Value: Integer);
        procedure SetItem(const Value: String);
        procedure SetPicturePath(const Value: String);
        procedure SetState(const Value: String);
        procedure SetTypeItem(const Value: String);
      public
        constructor Create;
        destructor Destroy;override;
        property ID : Integer read FID write SetID;
        property Item : String read FItem write SetItem;
        property Description : String read FDescription write SetDescription;
        property PicturePath : String read FPicturePath write SetPicturePath;
        property TypeItem : String read FTypeItem write SetTypeItem;
        property State : String read FState write SetState;
        property Container : Integer read FContainer write SetContainer;
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

end;

procedure TItem.Delete;
begin
TDaoIntructions.NewInstruction(Self).DeleteItem;
end;

destructor TItem.Destroy;
begin

  inherited;
end;



procedure TItem.Insert;
begin
 TDaoIntructions.NewInstruction(Self).InsertItem;
end;

procedure TItem.SetContainer(const Value: Integer);
begin
 if Value <> 0 then
  FContainer := Value
  else
    raise Exception.Create('O Container não Pode Ser vazio');

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
  raise Exception.Create('O campo Nome do Item não pode estar vazio!');
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
  TDaoIntructions.NewInstruction(Self).UpdateItem;
end;

end.

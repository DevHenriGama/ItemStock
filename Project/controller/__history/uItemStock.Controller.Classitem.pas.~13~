unit uItemStock.Controller.Classitem;

interface

uses uItemStock.Controller.Interfaces, uItemStock.Model.Interfaces,
   uItemStock.Model.ClassItem;

  type
    TControllerItem = class(TInterfacedObject, IControllerItem)

      private
         FID : Integer;
         FItem : String;
         FState : String;
         FDescription : String;
         FPicturePath : String;
         FContainer : Integer;
         FStockItem : TItem;
         FTypeItem : String;
      public
        constructor Create;
        destructor Destroy;override;
        class function New : IControllerItem;
          function ID( IDvalue : Integer) : IControllerItem;
          function Item( ItemName : String) : IControllerItem;
          function State(ItemState : String) : IControllerItem;
          function Description(Des_Item : String) : IControllerItem;
          function PicturePath( Path : String) : IControllerItem;
          function Container( NumContainer : Integer) : IControllerItem;
          function TypeItem(_TypeItem  : String) : IControllerItem;
          procedure Add;
          procedure Edit;
          procedure Remove;
          procedure Search(_Value ,SB_BY : String);
    end;

implementation

{ TControllerItem }

function TControllerItem.Container(NumContainer: Integer): IControllerItem;
begin
  Result := Self;
  FContainer := NumContainer;
end;

constructor TControllerItem.Create;
begin
 FStockItem := TItem.Create;
end;

function TControllerItem.Description(Des_Item: String): IControllerItem;
begin
   Result := Self;
   FDescription := Des_Item;
end;

destructor TControllerItem.Destroy;
begin
  FStockItem.Free;
  inherited;
end;

procedure TControllerItem.Edit;
begin
 with FStockItem do begin
   ID := FID;
   Item := FItem;
   Description := FDescription;
   PicturePath := FPicturePath;
   State := FState;
   Container := FContainer;
   Update;
 end;
end;

function TControllerItem.ID(IDvalue: Integer): IControllerItem;
begin
 Result := Self;
 FID := IDvalue;
end;

procedure TControllerItem.Add;
begin
 with FStockItem do begin
   ID := FID;
   Item := FItem;
   Description := FDescription;
   PicturePath := FPicturePath;
   State := FState;
   Container := FContainer;
   Insert;
 end;
end;

function TControllerItem.Item(ItemName: String): IControllerItem;
begin
 Result := Self;
 FItem := ItemName;
end;

class function TControllerItem.New: IControllerItem;
begin
Result := Self.Create;
end;

function TControllerItem.PicturePath(Path: String): IControllerItem;
begin
Result := Self;
FPicturePath := Path;
end;

procedure TControllerItem.Remove;
begin
 with FStockItem do begin
   ID := FID;
   Item := FItem;
   Description := FDescription;
   PicturePath := FPicturePath;
   State := FState;
   Container := FContainer;
   Delete;
 end;

end;

procedure TControllerItem.Search(_Value, SB_BY: String);
begin
FStockItem.Search(_Value,SB_BY);
end;

function TControllerItem.State(ItemState: String): IControllerItem;
begin
Result := Self;
FState := ItemState;
end;

function TControllerItem.TypeItem(_TypeItem: String): IControllerItem;
begin
 Result := Self;
 FTypeItem := _TypeItem;
end;

end.

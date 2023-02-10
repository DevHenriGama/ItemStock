unit uItemStock.Controller.ClassStock;

interface

uses
  uItemStock.Controller.Interfaces, uItemStock.Controller.Classitem;

  type
    TControllerStock = class(TInterfacedObject , IControllerStock)

      public
        function StockItem : IControllerItem;
    end;

implementation

{ TControllerStock }


function TControllerStock.StockItem: IControllerItem;
begin
  Result :=  TControllerItem.New;
end;

end.

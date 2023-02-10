unit uItemStock.Controller.Interfaces;
interface
uses
  FireDAC.Comp.Client, System.JSON;
  type
    IControllerItem = Interface;
    IControllerStock = interface
    ['{70F6AB0F-CB46-4D13-8D6E-8CBBB65CD156}']
      function StockItem : IControllerItem;
    end;
    IControllerItem = interface
      ['{787BB1A4-764C-4CC5-866A-842DCE88E4F4}']
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
    end;
    IViewData = interface
      ['{4435EDC4-6D4A-4FAB-AE98-AFCC91D793FA}']
      function GetDataSet : TFDQuery;
      procedure SerchToIndex(_Value :String;_Index : Integer);
      procedure SearchToTName(_Value, TableName : String);
      procedure ListAll;
    end;
    IControllSettings = interface
      ['{0C258709-5843-4BD8-931E-57A9597DA366}']
    procedure SetPortAPI(Value : String);
    function GetPortAPI : String;
    procedure SetStarOnSys(Value : Boolean);
    function GetStartOnSys : Boolean;
    procedure SetStartMinimized(Value : Boolean);
    function GetStartMinimized : Boolean;
    procedure SetAutoStartAPI(Value : Boolean);
    function GetAutoStartAPI : Boolean;
    end;
implementation
end.

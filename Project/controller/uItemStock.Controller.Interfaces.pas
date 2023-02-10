unit uItemStock.Controller.Interfaces;

interface

uses
  FireDAC.Comp.Client, System.JSON, System.Classes, uItemStock.Dao.Interfaces;

type
  IControllerItem = interface
    ['{787BB1A4-764C-4CC5-866A-842DCE88E4F4}']
    function GetValuesByID(_ID: Integer): TItemValues;
    function GetQuery: TFDQuery; overload;
    function GetQuery(SearchItem: String): TFDQuery; overload;
    function ID(IDvalue: Integer): IControllerItem;
    function Item(ItemName: String): IControllerItem;
    function State(ItemState: String): IControllerItem;
    function Description(Des_Item: String): IControllerItem;
    function PicturePath(Path: String): IControllerItem;
    function Container(NumContainer: Integer): IControllerItem;
    function TypeItem(_TypeItem: String): IControllerItem;
    procedure Add;
    procedure Edit;
    procedure Remove;
  end;

implementation

end.

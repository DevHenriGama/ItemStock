unit uItemStock.Dao.Interfaces;
interface
uses
  FireDAC.Comp.Client, System.JSON, System.Classes;

  type

    TItemValues = Record
    ID , Container : Integer;
    ItemName, State , Description, TypeItem : String;
  End;

  IDaoInstruction = interface
    ['{9346DA1C-07D5-4528-AA77-E9B53CA0405D}']
    procedure InsertItem;
    procedure UpdateItem;
    procedure DeleteItem;
    function GetValuesByID(_ID: Integer): TItemValues;
    function GetQuery : TFDQuery; overload;
    function GetQuery(SearchItem : String) : TFDQuery;overload;

  end;

implementation

end.

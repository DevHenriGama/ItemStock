unit uItemStock.Model.Interfaces;

interface

  type
    iTypesModel = interface
      ['{755F5741-3F2A-4F41-9ED2-9294019DA518}']
      function SetID(_Value : Integer) : iTypesModel;
      function SetTypes(_Value : String) : iTypesModel;
      function GetID : Integer;
      function GetTypes : String;
      procedure Insert;
      procedure Update;
      procedure Delete;
    end;

implementation

end.

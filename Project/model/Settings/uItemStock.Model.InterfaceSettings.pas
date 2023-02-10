unit uItemStock.Model.InterfaceSettings;

interface

  type
    IModelSettings = interface
      ['{254FC6C6-E8CE-4BAD-B22A-E185303AD33D}']
      function StartOnSys : Boolean; overload;
      procedure StartOnSys(_Start : Boolean); overload;
      function StartMinimized : Boolean;
      procedure StartMinimize(_Start : Boolean);
      function PortAPI : String; Overload;
      procedure PortAPI(_ValuePort : String);Overload;
      function StartAutoAPI : Boolean; overload;
      procedure StartAutoAPI(_Start : Boolean);overload;

    end;

implementation

end.

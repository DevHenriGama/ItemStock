unit uItemStock.Controller.Settings;

interface
   uses uItemStock.Controller.Interfaces;

  type
  TControllSettings = class(TInterfacedObject,IControllSettings)

    private

    public
      constructor Create;
      destructor Destroy;override;
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

  uses uItemStock.Model.ClassSettings, uItemStock.Model.InterfaceSettings;

  var
    FModelSettings : IModelSettings;

{ TControllSettings }


{ TControllSettings }

constructor TControllSettings.Create;
begin
 FModelSettings := TModelSettings.Create;
end;

destructor TControllSettings.Destroy;
begin

  inherited;
end;

function TControllSettings.GetAutoStartAPI: Boolean;
begin
 Result := FModelSettings.StartAutoAPI;
end;

function TControllSettings.GetPortAPI: String;
begin
 Result := FModelSettings.PortAPI;
end;

function TControllSettings.GetStartMinimized: Boolean;
begin
 Result := FModelSettings.StartMinimized;
end;

function TControllSettings.GetStartOnSys: Boolean;
begin
Result := FModelSettings.StartOnSys;
end;

procedure TControllSettings.SetAutoStartAPI(Value: Boolean);
begin
FModelSettings.StartAutoAPI(Value);
end;

procedure TControllSettings.SetPortAPI(Value: String);
begin
FModelSettings.PortAPI(Value);
end;

procedure TControllSettings.SetStarOnSys(Value: Boolean);
begin
FModelSettings.StartOnSys(Value);
end;

procedure TControllSettings.SetStartMinimized(Value: Boolean);
begin
FModelSettings.StartMinimize(Value);
end;

{ TControllSettings }



end.

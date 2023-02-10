unit uItemStock.Controller.Settings;

interface
   uses uItemStock.Controller.Interfaces, uItemStock.View.Settings;

  type
  TControllSettings = class(TInterfacedObject,IControllSettings)
    private
       FStartOnSys : Boolean;
       FStartMinimized : Boolean;
       FPort : String;
       FStartAPI : Boolean;
       FViewSettings : TfrmSettings;
    public
    constructor Create(ViewForm : TfrmSettings);
    destructor Destroy;override;

  end;

implementation

  uses uItemStock.Model.ClassSettings, uItemStock.Model.InterfaceSettings;

  var
    FModelSettings : IModelSettings;

{ TControllSettings }


{ TControllSettings }

constructor TControllSettings.Create(ViewForm: TfrmSettings);
begin
 FViewSettings := ViewForm;
 FModelSettings := TModelSettings.Create;
end;

destructor TControllSettings.Destroy;
begin

  inherited;
end;

{ TControllSettings }



end.

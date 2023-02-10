unit uItemStock.Controll.APISource;

interface

uses
  System.SysUtils, System.Classes,UDWDataModule, uDWAbout, uRESTDWServerEvents,
  uDWJSONObject;

type
  TApiData = class(TServerMethodDataModule)
    EventsMain: TDWServerEvents;
    procedure EventsMainEventsstatusReplyEvent(var Params: TDWParams;
      var Result: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApiData: TApiData;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TApiData.EventsMainEventsstatusReplyEvent(var Params: TDWParams;
  var Result: string);
begin
 Result := '{"status":OK}';
end;

end.

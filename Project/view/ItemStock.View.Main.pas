unit ItemStock.View.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Layouts, ItemStock.View.Stock, FMX.Controls.Presentation,
  FMX.StdCtrls, System.Math.Vectors, FMX.Controls3D, FMX.Objects3D;

type
  TfrmMain = class(TForm)
    recMenu: TRectangle;
    recTop_bar: TRectangle;
    imgLogo: TImage;
    imgHome: TImage;
    imgStock: TImage;
    imgClose: TImage;
    tabForms: TTabControl;
    tabHome: TTabItem;
    tabStock: TTabItem;
    StyleBook1: TStyleBook;
    recBackground1: TRectangle;
    ltStockForm: TLayout;
    Rectangle1: TRectangle;
    Timer1: TTimer;
    tabHomeContent: TTabControl;
    tabLoading: TTabItem;
    TabContent: TTabItem;
    lblTime: TLabel;
    Layout1: TLayout;
    lblApresentation: TLabel;
    Image1: TImage;
    lblDescription: TLabel;
    AniIndicator1: TAniIndicator;
    procedure imgCloseClick(Sender: TObject);
    procedure recTop_barMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormCreate(Sender: TObject);
    procedure imgStockClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imgHomeClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations
    }
    Stock : TfrmStock;
    procedure FreeStockForm;
    procedure Initialize;
  public
    { Public declarations }
  end;

  {
  colors:
  695FFC - More Purple
  5248E3 - Minus Purple
  283142 - More Deep Blue
  1F2534 - Minus Deep Blue

  }

var
  frmMain: TfrmMain;

implementation

{$R *.fmx}

procedure TfrmMain.FormCreate(Sender: TObject);
begin
ReportMemoryLeaksOnShutdown := True;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
FreeStockForm;
tabForms.TabIndex := 0;
end;

procedure TfrmMain.FreeStockForm;
begin
  if Assigned(Stock) then
    FreeAndNil(Stock);
end;

procedure TfrmMain.imgCloseClick(Sender: TObject);
begin
 FreeStockForm;
Application.Terminate;
end;

procedure TfrmMain.imgHomeClick(Sender: TObject);
begin
 FreeStockForm;
tabForms.TabIndex := 0;
end;

procedure TfrmMain.imgStockClick(Sender: TObject);
begin
  tabForms.TabIndex := 1;
  if not Assigned(Stock) then
  begin
    Stock := TfrmStock.Create(nil);
    Stock.ltForm.Parent := ltStockForm;
    Stock.Show;
  end;
end;

procedure TfrmMain.Initialize;
begin

end;

procedure TfrmMain.recTop_barMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
Self.StartWindowDrag;
end;

procedure TfrmMain.Timer1Timer(Sender: TObject);
begin
lblTime.Text := FormatDateTime('hh:mm',Now);
end;

end.

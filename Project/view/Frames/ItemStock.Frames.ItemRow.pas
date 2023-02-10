unit ItemStock.Frames.ItemRow;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation;

type

  TEventClick = procedure(ID: Integer) of object;

  TframeRow = class(TFrame)
    recContent: TRectangle;
    ItemName: TLabel;
    NumBox: TLabel;
    recBaseType: TRectangle;
    ItemType: TLabel;
    recBaseState: TRectangle;
    ItemState: TLabel;
    clState: TCircle;
    procedure FramePaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure recContentDblClick(Sender: TObject);
  private
    FItemID: Integer;
    FEventDBClick: TEventClick;
    { Private declarations }
    procedure AutoAjustItensSpacement;
    procedure SetItemID(const Value: Integer);
    procedure SetEventDBClick(const Value: TEventClick);
  public
    { Public declarations }
    property EventDBClick: TEventClick read FEventDBClick write SetEventDBClick;
    property ItemID: Integer read FItemID write SetItemID;

  end;

implementation

{$R *.fmx}
{ TframeRow }

procedure TframeRow.AutoAjustItensSpacement;
var
  NewWidht, TypeLimiter: Single;
begin
  NewWidht := recContent.Width / 4;
  ItemName.Width := NewWidht;
  NumBox.Width := NewWidht;
  recBaseState.Width := NewWidht;

  with recBaseType do
  begin
    Width := NewWidht / 2;
  end;

  if recContent.Width < 900 then
    recBaseState.Margins.Left := 40
  else
    recBaseState.Margins.Left := 80;

end;

procedure TframeRow.FramePaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  AutoAjustItensSpacement;
end;

procedure TframeRow.recContentDblClick(Sender: TObject);
begin
  EventDBClick(ItemID);
end;

procedure TframeRow.SetEventDBClick(const Value: TEventClick);
begin
  FEventDBClick := Value;
end;

procedure TframeRow.SetItemID(const Value: Integer);
begin
  FItemID := Value;
end;

end.

unit uBuyOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ComCtrls, ExtCtrls, Menus;

type
  TfrmBuyOrder = class(TForm)
    DBGridBuyList: TDBGrid;
    OrderGroupBox: TGroupBox;
    DBGridBuyOrder: TDBGrid;
    edClient: TDBLookupComboBox;
    lbledClient: TLabel;
    edOrderNumber: TDBEdit;
    lbledOrderNumber: TLabel;
    DBNavigatorBuyOrder: TDBNavigator;
    DBNavigatorBuyList: TDBNavigator;
    edOrderCost: TEdit;
    lbledOrderCost: TLabel;
    edDiscount: TEdit;
    lbledDiscount: TLabel;
    edTotal: TEdit;
    lbledTotal: TLabel;
    GoodsGroupBox: TGroupBox;
    edGoods: TDBLookupComboBox;
    edQuantity: TDBEdit;
    lbledQuantity: TLabel;
    lbledGoods: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  end;

var
  frmBuyOrder: TfrmBuyOrder;

implementation
 Uses uData,uMain;

{$R *.dfm}

procedure TfrmBuyOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frmData.qDicClient.Close;
 frmData.qDicGoods.Close;
 frmData.qBuyOrder.Close;
 frmData.qBuyList.Close;
end;

procedure TfrmBuyOrder.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_ESCAPE then Close;
end;

procedure TfrmBuyOrder.FormShow(Sender: TObject);
begin
 Left := frmMain.Left + (frmMain.Width-Width) shr 1;
 Top := frmMain.Top + (frmMain.Height-Height) shr 1;
 frmData.qDicClient.Open;
 frmData.qDicGoods.Open;
 frmData.qBuyOrder.Open;
 frmData.qBuyList.Open;
end;

end.

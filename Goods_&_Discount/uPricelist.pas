unit uPricelist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TfrmPriceList = class(TForm)
    DBGridPriceList: TDBGrid;
    GroupBox: TGroupBox;
    edGoods: TDBLookupComboBox;
    lbledGoods: TLabel;
    edDate: TDBEdit;
    edPrice: TDBEdit;
    lbledPrice: TLabel;
    lbledDate: TLabel;
    DBNavigatorPriceList: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  end;

var
  frmPriceList: TfrmPriceList;

implementation
 Uses uData,uMain;

{$R *.dfm}

procedure TfrmPriceList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frmData.qDicGoods.Close;
 frmData.qPriceList.Close;
end;

procedure TfrmPriceList.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_ESCAPE then Close;
end;

procedure TfrmPriceList.FormShow(Sender: TObject);
begin
 Left := frmMain.Left + (frmMain.Width-Width) shr 1;
 Top := frmMain.Top + (frmMain.Height-Height) shr 1;

 frmData.qDicGoods.Open;
 frmData.qPriceList.Open;
end;

end.

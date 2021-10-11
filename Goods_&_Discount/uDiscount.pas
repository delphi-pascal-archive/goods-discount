unit uDiscount;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, XPMan, DBCtrls, Mask, ComCtrls, ExtCtrls;

type
  TfrmDiscount = class(TForm)
    DBGridDiscount: TDBGrid;
    GroupBox: TGroupBox;
    edGoods: TDBLookupComboBox;
    edDiscountType: TDBLookupComboBox;
    lbledGoods: TLabel;
    edSumm: TDBEdit;
    lbledSumm: TLabel;
    lbledDiscountType: TLabel;
    edQuantity: TDBEdit;
    lbledQuantity: TLabel;
    edDiscount: TDBEdit;
    lbledDiscount: TLabel;
    DBNavigatorDiscount: TDBNavigator;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  end;

var
  frmDiscount: TfrmDiscount;

implementation
 Uses uData,uMain;
{$R *.dfm}

procedure TfrmDiscount.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frmData.qDicDiscountType.Close;
 frmData.qDicGoods.Close;
 frmData.qDiscount.Close;
end;

procedure TfrmDiscount.FormShow(Sender: TObject);
begin
 Left := frmMain.Left + (frmMain.Width-Width) shr 1;
 Top := frmMain.Top + (frmMain.Height-Height) shr 1;

 frmData.qDicDiscountType.Open;
 frmData.qDicGoods.Open;
 frmData.qDiscount.Open;

 ComboBox1.Items.Clear;
 ComboBox1.Items.Add('<Все>');
 while not frmData.qDicDiscountType.Eof
 do begin
    ComboBox1.Items.Add(frmData.qDicDiscountType.FieldValues['Context']);
    frmData.qDicDiscountType.Next;
    end;
 ComboBox1.ItemIndex := 0;
end;

end.

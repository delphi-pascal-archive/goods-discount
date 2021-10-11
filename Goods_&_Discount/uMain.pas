unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, ImgList, acPNG, ExtCtrls;

type
  TfrmMain = class(TForm)
    MainMenu: TMainMenu;
    mnuDictionary: TMenuItem;
    cmdDicGoods: TMenuItem;
    cmdDicDiscount: TMenuItem;
    ActionManager1: TActionManager;
    actDicGoods: TAction;
    actDicDiscountType: TAction;
    mnuSettings: TMenuItem;
    mnuReference: TMenuItem;
    cmdDiscount: TMenuItem;
    actRefDiscount: TAction;
    actClient: TAction;
    N1: TMenuItem;
    actPriceList: TAction;
    N2: TMenuItem;
    ImageList: TImageList;
    actBuyOrder: TAction;
    N3: TMenuItem;
    Image1: TImage;
    procedure actDicGoodsExecute(Sender: TObject);
    procedure actDicDiscountTypeExecute(Sender: TObject);
    procedure actRefDiscountExecute(Sender: TObject);
    procedure actClientExecute(Sender: TObject);
    procedure actPriceListExecute(Sender: TObject);
    procedure actBuyOrderExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation
 Uses uData,uDictionary,uDiscount,uPriceList,uBuyOrder, uAbout;

{$R *.dfm}

procedure TfrmMain.actBuyOrderExecute(Sender: TObject);
begin
 frmBuyOrder.ShowModal;
end;

procedure TfrmMain.actClientExecute(Sender: TObject);
begin
 frmDictionary.DicName := 'Клиент';
 frmDictionary.ShowModal;
end;

procedure TfrmMain.actDicDiscountTypeExecute(Sender: TObject);
begin
 frmDictionary.DicName := 'Скидка';
 frmDictionary.ShowModal;
end;

procedure TfrmMain.actDicGoodsExecute(Sender: TObject);
begin
 frmDictionary.DicName := 'Товар';
 frmDictionary.ShowModal;
end;

procedure TfrmMain.actPriceListExecute(Sender: TObject);
begin
 frmPriceList.ShowModal;
end;

procedure TfrmMain.actRefDiscountExecute(Sender: TObject);
begin
 frmDiscount.ShowModal;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
 frmAbout.ShowModal;
end;

end.

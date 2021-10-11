program Diplom;

uses
  Forms,
  uMain in 'uMain.pas' {frmMain},
  uData in 'uData.pas' {frmData: TDataModule},
  uDictionary in 'uDictionary.pas' {frmDictionary},
  uDiscount in 'uDiscount.pas' {frmDiscount},
  uPricelist in 'uPricelist.pas' {frmPriceList},
  uBuyOrder in 'uBuyOrder.pas' {frmBuyOrder},
  uAbout in 'uAbout.pas' {frmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmData, frmData);
  Application.CreateForm(TfrmDictionary, frmDictionary);
  Application.CreateForm(TfrmDiscount, frmDiscount);
  Application.CreateForm(TfrmPriceList, frmPriceList);
  Application.CreateForm(TfrmBuyOrder, frmBuyOrder);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.Run;
end.

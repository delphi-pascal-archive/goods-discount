unit uData;

interface

uses
  SysUtils, Classes, DB, ADODB, DBClient;

type
  TfrmData = class(TDataModule)
    AppDB: TADOConnection;
    qDiscount: TADOQuery;
    dsDiscount: TDataSource;
    qDicGoods: TADOQuery;
    qDicDiscountType: TADOQuery;
    dsDicGoods: TDataSource;
    dsDicDiscountType: TDataSource;
    qDiscountID: TAutoIncField;
    qDiscountDiscountTypeID: TIntegerField;
    qDiscountSumm: TFMTBCDField;
    qDiscountDiscount: TFloatField;
    qDiscountGoodsID: TIntegerField;
    qDiscountQuantity: TIntegerField;
    qDiscountDicGoodsContext: TStringField;
    qDiscountDicDiscountTypeContext: TStringField;
    qDictionary: TADOQuery;
    dsDictionary: TDataSource;
    qDiscountStartDate: TDateTimeField;
    qDiscountFinishDate: TDateTimeField;
    qPriceList: TADOQuery;
    dsPriceList: TDataSource;
    qPriceListID: TAutoIncField;
    qPriceListGoodsID: TIntegerField;
    qPriceListPrice: TFMTBCDField;
    qPriceListPriceDate: TDateTimeField;
    qPriceListDicGoodsContext: TStringField;
    qBuyOrder: TADOQuery;
    dsBuyOrder: TDataSource;
    qBuyList: TADOQuery;
    dsBuyList: TDataSource;
    qBuyOrderID: TAutoIncField;
    qBuyOrderNumber: TWideStringField;
    qBuyOrderClientID: TIntegerField;
    qDicClient: TADOQuery;
    dsDicClient: TDataSource;
    qBuyOrderDicClientContext: TStringField;
    qBuyListID: TAutoIncField;
    qBuyListBuyOrderID: TIntegerField;
    qBuyListGoodsID: TIntegerField;
    qBuyListQuantity: TIntegerField;
    qBuyListDicGoodsContext: TStringField;
    qDictionaryID: TAutoIncField;
    qDictionaryContext: TWideStringField;
    qDictionaryDictionary: TWideStringField;
    qBuyListTotalPrice: TCurrencyField;
    qBuyListGoodsDiscount: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qDiscountAfterScroll(DataSet: TDataSet);
    procedure qDictionaryBeforePost(DataSet: TDataSet);
    procedure qBuyListCalcFields(DataSet: TDataSet);
    procedure qBuyListEndOfRecordset(DataSet: TCustomADODataSet; var MoreData: WordBool; var EventStatus: TEventStatus);
  end;

var
  frmData: TfrmData;

implementation

Uses Forms,Dialogs,uDiscount,uDictionary,uBuyOrder;
{$R *.dfm}

procedure TfrmData.DataModuleCreate(Sender: TObject);
begin
 AppDB.Close;
 AppDB.ConnectionString := Format('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=%s',[ExtractFilePath(Application.ExeName)+'Database.mdb']);
 try
  AppDB.Open;
 except
  ShowMessage('Ошибка подключения к БД. Продолжение невозможно.');
  Halt;
 end;
end;

procedure TfrmData.qBuyListCalcFields(DataSet: TDataSet);
Var Q: TAdoQuery;
begin
 Q := TAdoQuery.Create(nil);
 Q.Connection := AppDB;
 // Считаем стоимость товара при заданом количестве
 Q.SQL.Text := 'select Price from PriceList where GoodsID=:GoodsID';
 Q.Parameters.ParamValues['GoodsID'] := DataSet.FieldValues['GoodsID'];
 Q.Open;
 if not Q.IsEmpty
 then DataSet.FieldValues['GoodsCost'] := Q.FieldValues['Price'] * DataSet.FieldByName('Quantity').AsInteger;
 // Считаем скидку на количество товара одного наименования
 Q.SQL.Text := 'select top 1 Discount.Discount from Discount inner join Dictionary '+
               'on Discount.DiscountTypeID=Dictionary.ID where Discount.GoodsID=:GoodsID '+
               'and Dictionary.Context="Товар" and Discount.Quantity<=:Quantity '+
               'order by Discount.Discount desc';
 Q.Parameters.ParamValues['GoodsID'] := DataSet.FieldValues['GoodsID'];
 Q.Parameters.ParamValues['Quantity'] := DataSet.FieldValues['Quantity'];
 Q.Open;
 if not Q.IsEmpty
 then DataSet.FieldValues['GoodsDiscount'] := DataSet.FieldValues['GoodsCost']/100*Q.FieldValues['Discount']
 else DataSet.FieldValues['GoodsDiscount'] := 0;
end;

procedure TfrmData.qBuyListEndOfRecordset(DataSet: TCustomADODataSet; var MoreData: WordBool; var EventStatus: TEventStatus);
Var Q: TAdoQuery;
begin
 Q := TAdoQuery.Create(nil);
 Q.Connection := AppDB;
 // Считаем итоговую сумму стоимости заказа
 Q.SQL.Text := 'select Sum(Quantity*Price) as OrderCost from BuyList as BL '+
               'inner join PriceList as PL on BL.GoodsID = PL.GoodsID where BL.BuyOrderID=:BuyOrderID';
 Q.Parameters.ParamValues['BuyOrderID'] := qBuyOrder.FieldValues['BuyOrderID'];
 Q.Open;
 if not Q.IsEmpty
 then frmBuyOrder.edOrderCost.Text := Format('%8.2f',[Q.FieldByName('OrderCost').AsFloat])
 else frmBuyOrder.edOrderCost.Text := '0.00';
 // Считаем итоговую скидку на заказ по наименованиям
 Q.SQL.Text := 'select Sum([BuyList.Quantity]*[PriceList.Price]/100*(select top 1 Discount.Discount '+
               'from Discount inner join Dictionary on Discount.DiscountTypeID = Dictionary.ID '+
               'where (((Discount.GoodsID)=BuyList.GoodsID) and ((Dictionary.Context)="Товар") '+
               'and ((Discount.Quantity)<=BuyList.Quantity)) '+
               'order by Discount.Discount DESC)) as DiscountCost '+
               'from BuyList inner join PriceList on BuyList.GoodsID = PriceList.GoodsID '+
               'where (((BuyList.BuyOrderID)=:BuyOrderID))';
 Q.Parameters.ParamValues['BuyOrderID'] := qBuyOrder.FieldValues['BuyOrderID'];
 Q.Open;
 if not Q.IsEmpty
 then frmBuyOrder.edDiscount.Text := Format('%8.2f',[Q.FieldByName('DiscountCost').AsFloat])
 else frmBuyOrder.edDiscount.Text := '0.00';
 // Считаем итоговую скидку на заказ по сумме
 Q.SQL.Text := 'select top 1 Discount.Discount from Discount inner join Dictionary '+
               'on Discount.DiscountTypeID = Dictionary.ID where '+
               '(((Dictionary.Context)="Сумма") and ((Discount.Summ)<=:OrderCost)) '+
               'order by Discount.Discount desc';
 Q.Parameters.ParamValues['OrderCost'] := StrToFloat(frmBuyOrder.edOrderCost.Text);
 Q.Open;
 if not Q.IsEmpty
 then frmBuyOrder.edDiscount.Text := Format('%8.2f',[StrToFloat(frmBuyOrder.edDiscount.Text)+
                                                     StrToFloat(frmBuyOrder.edOrderCost.Text)/100*
                                                     Q.FieldByName('Discount').AsFloat]);

 frmBuyOrder.edTotal.Text := Format('%8.2f',[StrToFloat(frmBuyOrder.edOrderCost.Text)-StrToFloat(frmBuyOrder.edDiscount.Text)]);
end;

procedure TfrmData.qDictionaryBeforePost(DataSet: TDataSet);
begin
 qDictionary.FieldValues['Dictionary'] := frmDictionary.DicName;
end;

procedure TfrmData.qDiscountAfterScroll(DataSet: TDataSet);
begin
// frmDiscount.edGoods.Enabled := frmDiscount.edDiscountType.KeyValue = 10;
// frmDiscount.edQuantity.Enabled := frmDiscount.edDiscountType.KeyValue = 10;
// frmDiscount.edSumm.Enabled := frmDiscount.edDiscountType.KeyValue = 11;
end;

end.

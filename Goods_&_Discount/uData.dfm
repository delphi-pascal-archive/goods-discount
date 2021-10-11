object frmData: TfrmData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 313
  Width = 465
  object AppDB: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Diplom1\Database' +
      '.mdb;Persist Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object qDiscount: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    AfterScroll = qDiscountAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from Discount')
    Left = 104
    Top = 16
    object qDiscountID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDiscountDiscountTypeID: TIntegerField
      FieldName = 'DiscountTypeID'
    end
    object qDiscountSumm: TFMTBCDField
      FieldName = 'Summ'
      currency = True
      Precision = 19
      Size = 4
    end
    object qDiscountDiscount: TFloatField
      FieldName = 'Discount'
      DisplayFormat = '0.00'
      Precision = 2
    end
    object qDiscountGoodsID: TIntegerField
      FieldName = 'GoodsID'
    end
    object qDiscountQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object qDiscountDicGoodsContext: TStringField
      FieldKind = fkLookup
      FieldName = 'DicGoodsContext'
      LookupDataSet = qDicGoods
      LookupKeyFields = 'ID'
      LookupResultField = 'Context'
      KeyFields = 'GoodsID'
      Size = 100
      Lookup = True
    end
    object qDiscountDicDiscountTypeContext: TStringField
      FieldKind = fkLookup
      FieldName = 'DicDiscountTypeContext'
      LookupDataSet = qDicDiscountType
      LookupKeyFields = 'ID'
      LookupResultField = 'Context'
      KeyFields = 'DiscountTypeID'
      Size = 50
      Lookup = True
    end
    object qDiscountStartDate: TDateTimeField
      FieldName = 'StartDate'
    end
    object qDiscountFinishDate: TDateTimeField
      FieldName = 'FinishDate'
    end
  end
  object dsDiscount: TDataSource
    DataSet = qDiscount
    Left = 104
    Top = 64
  end
  object qDicGoods: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Dictionary.ID, Dictionary.Context FROM Dictionary '
      'WHERE Dictionary.Dictionary="'#1058#1086#1074#1072#1088'" '
      'ORDER BY Dictionary.Context; ')
    Left = 192
    Top = 16
  end
  object qDicDiscountType: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Dictionary.ID, Dictionary.Context FROM Dictionary '
      'WHERE Dictionary.Dictionary="'#1057#1082#1080#1076#1082#1072'" '
      'ORDER BY Dictionary.Context; ')
    Left = 280
    Top = 16
  end
  object dsDicGoods: TDataSource
    DataSet = qDicGoods
    Left = 192
    Top = 64
  end
  object dsDicDiscountType: TDataSource
    DataSet = qDicDiscountType
    Left = 280
    Top = 64
  end
  object qDictionary: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    BeforePost = qDictionaryBeforePost
    Parameters = <>
    SQL.Strings = (
      'select * from Dictionary')
    Left = 104
    Top = 120
    object qDictionaryID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDictionaryContext: TWideStringField
      FieldName = 'Context'
      Size = 200
    end
    object qDictionaryDictionary: TWideStringField
      FieldName = 'Dictionary'
      Size = 50
    end
  end
  object dsDictionary: TDataSource
    DataSet = qDictionary
    Left = 104
    Top = 168
  end
  object qPriceList: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from PriceList')
    Left = 192
    Top = 120
    object qPriceListID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qPriceListGoodsID: TIntegerField
      FieldName = 'GoodsID'
    end
    object qPriceListPrice: TFMTBCDField
      FieldName = 'Price'
      currency = True
      Precision = 19
      Size = 4
    end
    object qPriceListPriceDate: TDateTimeField
      FieldName = 'PriceDate'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object qPriceListDicGoodsContext: TStringField
      FieldKind = fkLookup
      FieldName = 'DicGoodsContext'
      LookupDataSet = qDicGoods
      LookupKeyFields = 'ID'
      LookupResultField = 'Context'
      KeyFields = 'GoodsID'
      Size = 100
      Lookup = True
    end
  end
  object dsPriceList: TDataSource
    DataSet = qPriceList
    Left = 192
    Top = 168
  end
  object qBuyOrder: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from BuyOrder')
    Left = 280
    Top = 120
    object qBuyOrderID: TAutoIncField
      FieldName = 'BuyOrderID'
      ReadOnly = True
      Visible = False
    end
    object qBuyOrderNumber: TWideStringField
      FieldName = 'Number'
      Size = 10
    end
    object qBuyOrderClientID: TIntegerField
      FieldName = 'ClientID'
    end
    object qBuyOrderDicClientContext: TStringField
      FieldKind = fkLookup
      FieldName = 'DicClientContext'
      LookupDataSet = qDicClient
      LookupKeyFields = 'ID'
      LookupResultField = 'Context'
      KeyFields = 'ClientID'
      Size = 100
      Lookup = True
    end
  end
  object dsBuyOrder: TDataSource
    DataSet = qBuyOrder
    Left = 280
    Top = 168
  end
  object qBuyList: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    OnCalcFields = qBuyListCalcFields
    OnEndOfRecordset = qBuyListEndOfRecordset
    DataSource = dsBuyOrder
    Parameters = <
      item
        Name = 'BuyOrderID'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from BuyList where BuyOrderID=:BuyOrderID')
    Left = 352
    Top = 120
    object qBuyListID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qBuyListBuyOrderID: TIntegerField
      FieldName = 'BuyOrderID'
    end
    object qBuyListGoodsID: TIntegerField
      FieldName = 'GoodsID'
    end
    object qBuyListQuantity: TIntegerField
      FieldName = 'Quantity'
    end
    object qBuyListDicGoodsContext: TStringField
      FieldKind = fkLookup
      FieldName = 'DicGoodsContext'
      LookupDataSet = qDicGoods
      LookupKeyFields = 'ID'
      LookupResultField = 'Context'
      KeyFields = 'GoodsID'
      Size = 100
      Lookup = True
    end
    object qBuyListTotalPrice: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'GoodsCost'
      DisplayFormat = '0.00'
      currency = False
      Calculated = True
    end
    object qBuyListGoodsDiscount: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GoodsDiscount'
      DisplayFormat = '0.00'
      Calculated = True
    end
  end
  object dsBuyList: TDataSource
    DataSet = qBuyList
    Left = 352
    Top = 168
  end
  object qDicClient: TADOQuery
    Connection = AppDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Dictionary.ID, Dictionary.Context FROM Dictionary '
      'WHERE Dictionary.Dictionary="'#1050#1083#1080#1077#1085#1090'" '
      'ORDER BY Dictionary.Context; ')
    Left = 280
    Top = 216
  end
  object dsDicClient: TDataSource
    DataSet = qDicClient
    Left = 280
    Top = 264
  end
end

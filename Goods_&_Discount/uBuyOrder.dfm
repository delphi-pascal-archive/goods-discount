object frmBuyOrder: TfrmBuyOrder
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1082#1072#1079#1099
  ClientHeight = 356
  ClientWidth = 698
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridBuyList: TDBGrid
    Left = 271
    Top = 123
    Width = 419
    Height = 208
    DataSource = frmData.dsBuyList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = FormKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'DicGoodsContext'
        Title.Alignment = taCenter
        Title.Caption = #1058#1086#1074#1072#1088
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 253
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantity'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'GoodsID'
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'BuyOrderID'
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'GoodsCost'
        Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GoodsDiscount'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1080#1076#1082#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 42
        Visible = True
      end>
  end
  object OrderGroupBox: TGroupBox
    Left = 271
    Top = 8
    Width = 419
    Height = 61
    TabOrder = 1
    object lbledClient: TLabel
      Left = 111
      Top = 10
      Width = 40
      Height = 14
      Caption = #1050#1083#1080#1077#1085#1090':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbledOrderNumber: TLabel
      Left = 9
      Top = 10
      Width = 49
      Height = 14
      Caption = #1047#1072#1082#1072#1079' '#8470':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbledOrderCost: TLabel
      Left = 9
      Top = 36
      Width = 98
      Height = 14
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1082#1072#1079#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbledDiscount: TLabel
      Left = 184
      Top = 36
      Width = 41
      Height = 14
      Caption = #1057#1082#1080#1076#1082#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbledTotal: TLabel
      Left = 303
      Top = 36
      Width = 34
      Height = 14
      Caption = #1048#1090#1086#1075#1086':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object edClient: TDBLookupComboBox
      Left = 156
      Top = 7
      Width = 254
      Height = 22
      DataField = 'ClientID'
      DataSource = frmData.dsBuyOrder
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'Context'
      ListSource = frmData.dsDicClient
      ParentFont = False
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object edOrderNumber: TDBEdit
      Left = 64
      Top = 7
      Width = 42
      Height = 22
      DataField = 'Number'
      DataSource = frmData.dsBuyOrder
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object edOrderCost: TEdit
      Left = 111
      Top = 33
      Width = 65
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 2
      Text = '0,00'
    end
    object edDiscount: TEdit
      Left = 229
      Top = 33
      Width = 65
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      Text = '0,00'
    end
    object edTotal: TEdit
      Left = 342
      Top = 33
      Width = 68
      Height = 21
      TabStop = False
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 4
      Text = '0,00'
    end
  end
  object DBGridBuyOrder: TDBGrid
    Left = 8
    Top = 8
    Width = 257
    Height = 323
    DataSource = frmData.dsBuyOrder
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyDown = FormKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'BuyOrderID'
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Number'
        Title.Alignment = taCenter
        Title.Caption = #1047#1072#1082#1072#1079
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ClientID'
        Title.Alignment = taCenter
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'DicClientContext'
        Title.Alignment = taCenter
        Title.Caption = #1050#1083#1080#1077#1085#1090
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 191
        Visible = True
      end>
  end
  object DBNavigatorBuyOrder: TDBNavigator
    Left = 8
    Top = 333
    Width = 160
    Height = 18
    DataSource = frmData.dsBuyOrder
    VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 3
  end
  object DBNavigatorBuyList: TDBNavigator
    Left = 271
    Top = 333
    Width = 160
    Height = 18
    DataSource = frmData.dsBuyList
    VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 4
  end
  object GoodsGroupBox: TGroupBox
    Left = 272
    Top = 73
    Width = 418
    Height = 45
    TabOrder = 5
    object lbledQuantity: TLabel
      Left = 364
      Top = 3
      Width = 37
      Height = 14
      Caption = #1050#1086#1083'-'#1074#1086
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object lbledGoods: TLabel
      Left = 8
      Top = 3
      Width = 32
      Height = 14
      Caption = #1058#1086#1074#1072#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object edGoods: TDBLookupComboBox
      Left = 8
      Top = 16
      Width = 349
      Height = 22
      DataField = 'GoodsID'
      DataSource = frmData.dsBuyList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      KeyField = 'ID'
      ListField = 'Context'
      ListSource = frmData.dsDicGoods
      ParentFont = False
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object edQuantity: TDBEdit
      Left = 363
      Top = 16
      Width = 46
      Height = 22
      DataField = 'Quantity'
      DataSource = frmData.dsBuyList
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
  end
end

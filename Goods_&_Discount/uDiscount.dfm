object frmDiscount: TfrmDiscount
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1082#1080#1076#1082#1080
  ClientHeight = 280
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 174
    Top = 256
    Width = 36
    Height = 13
    Caption = #1060#1080#1083#1100#1088':'
    Visible = False
  end
  object DBGridDiscount: TDBGrid
    Left = 7
    Top = 76
    Width = 619
    Height = 176
    DataSource = frmData.dsDiscount
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
    Columns = <
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
        FieldName = 'DicDiscountTypeContext'
        Title.Alignment = taCenter
        Title.Caption = #1042#1080#1076' '#1089#1082#1080#1076#1082#1080
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DiscountTypeID'
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
        FieldName = 'Summ'
        Title.Alignment = taCenter
        Title.Caption = #1057#1091#1084#1084#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Discount'
        Title.Alignment = taCenter
        Title.Caption = #1057#1082#1080#1076#1082#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
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
        Width = 346
        Visible = True
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
        FieldName = 'Quantity'
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 45
        Visible = True
      end>
  end
  object GroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 619
    Height = 62
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbledGoods: TLabel
      Left = 9
      Top = 37
      Width = 35
      Height = 14
      Caption = #1058#1086#1074#1072#1088':'
      FocusControl = edGoods
    end
    object lbledSumm: TLabel
      Left = 235
      Top = 10
      Width = 37
      Height = 14
      Caption = #1057#1091#1084#1084#1072':'
    end
    object lbledDiscountType: TLabel
      Left = 9
      Top = 9
      Width = 62
      Height = 14
      Caption = #1042#1080#1076' '#1089#1082#1080#1076#1082#1080':'
    end
    object lbledQuantity: TLabel
      Left = 359
      Top = 9
      Width = 65
      Height = 14
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      FocusControl = edQuantity
    end
    object lbledDiscount: TLabel
      Left = 500
      Top = 9
      Width = 41
      Height = 14
      Caption = #1057#1082#1080#1076#1082#1072':'
      FocusControl = edDiscount
    end
    object edGoods: TDBLookupComboBox
      Left = 51
      Top = 33
      Width = 562
      Height = 22
      DataField = 'GoodsID'
      DataSource = frmData.dsDiscount
      KeyField = 'ID'
      ListField = 'Context'
      ListSource = frmData.dsDicGoods
      TabOrder = 4
    end
    object edDiscountType: TDBLookupComboBox
      Left = 77
      Top = 7
      Width = 150
      Height = 22
      DataField = 'DiscountTypeID'
      DataSource = frmData.dsDiscount
      KeyField = 'ID'
      ListField = 'Context'
      ListSource = frmData.dsDicDiscountType
      TabOrder = 0
    end
    object edSumm: TDBEdit
      Left = 276
      Top = 6
      Width = 75
      Height = 22
      DataField = 'Summ'
      DataSource = frmData.dsDiscount
      TabOrder = 1
    end
    object edQuantity: TDBEdit
      Left = 428
      Top = 6
      Width = 66
      Height = 22
      DataField = 'Quantity'
      DataSource = frmData.dsDiscount
      TabOrder = 2
    end
    object edDiscount: TDBEdit
      Left = 547
      Top = 6
      Width = 66
      Height = 22
      DataField = 'Discount'
      DataSource = frmData.dsDiscount
      TabOrder = 3
    end
  end
  object DBNavigatorDiscount: TDBNavigator
    Left = 8
    Top = 255
    Width = 160
    Height = 18
    DataSource = frmData.dsDiscount
    VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 215
    Top = 253
    Width = 102
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Visible = False
  end
end

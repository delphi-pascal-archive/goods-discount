object frmPriceList: TfrmPriceList
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1077#1081#1089#1082#1091#1088#1072#1085#1090
  ClientHeight = 356
  ClientWidth = 635
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
  object DBGridPriceList: TDBGrid
    Left = 8
    Top = 77
    Width = 619
    Height = 254
    DataSource = frmData.dsPriceList
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'ID'
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
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
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
        Width = 530
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Price'
        Title.Alignment = taCenter
        Title.Caption = #1062#1077#1085#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PriceDate'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = False
      end>
  end
  object GroupBox: TGroupBox
    Left = 8
    Top = 8
    Width = 619
    Height = 63
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbledGoods: TLabel
      Left = 9
      Top = 10
      Width = 35
      Height = 14
      Caption = #1058#1086#1074#1072#1088':'
      FocusControl = edGoods
    end
    object lbledPrice: TLabel
      Left = 9
      Top = 36
      Width = 31
      Height = 14
      Caption = #1062#1077#1085#1072':'
    end
    object lbledDate: TLabel
      Left = 143
      Top = 36
      Width = 30
      Height = 14
      Caption = #1044#1072#1090#1072':'
      Visible = False
    end
    object edGoods: TDBLookupComboBox
      Left = 49
      Top = 7
      Width = 563
      Height = 22
      DataField = 'GoodsID'
      DataSource = frmData.dsPriceList
      KeyField = 'ID'
      ListField = 'Context'
      ListSource = frmData.dsDicGoods
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object edDate: TDBEdit
      Left = 179
      Top = 33
      Width = 65
      Height = 22
      DataField = 'PriceDate'
      DataSource = frmData.dsPriceList
      TabOrder = 2
      Visible = False
      OnKeyDown = FormKeyDown
    end
    object edPrice: TDBEdit
      Left = 49
      Top = 33
      Width = 80
      Height = 22
      DataField = 'Price'
      DataSource = frmData.dsPriceList
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
  end
  object DBNavigatorPriceList: TDBNavigator
    Left = 8
    Top = 333
    Width = 160
    Height = 18
    DataSource = frmData.dsPriceList
    VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
  end
end

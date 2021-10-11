object frmDictionary: TfrmDictionary
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1083#1086#1074#1072#1088#1100
  ClientHeight = 306
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridDictionary: TDBGrid
    Left = 8
    Top = 49
    Width = 433
    Height = 232
    DataSource = frmData.dsDictionary
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
        FieldName = 'Context'
        Title.Alignment = taCenter
        Title.Caption = #1055#1086#1085#1103#1090#1080#1077
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Dictionary'
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
    Width = 433
    Height = 36
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lbledDicContext: TLabel
      Left = 9
      Top = 10
      Width = 47
      Height = 14
      Caption = #1055#1086#1085#1103#1090#1080#1077':'
    end
    object edDicContext: TDBEdit
      Left = 61
      Top = 7
      Width = 364
      Height = 22
      DataField = 'Context'
      DataSource = frmData.dsDictionary
      TabOrder = 0
    end
  end
  object DBNavigatorDictionary: TDBNavigator
    Left = 8
    Top = 284
    Width = 160
    Height = 18
    DataSource = frmData.dsDictionary
    VisibleButtons = [nbFirst, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 2
  end
end

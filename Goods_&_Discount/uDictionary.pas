unit uDictionary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, StdCtrls, Mask, DBCtrls, ExtCtrls;

type
  TfrmDictionary = class(TForm)
    DBGridDictionary: TDBGrid;
    GroupBox: TGroupBox;
    edDicContext: TDBEdit;
    lbledDicContext: TLabel;
    DBNavigatorDictionary: TDBNavigator;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  public
    DicName: String;
  end;

var
  frmDictionary: TfrmDictionary;

implementation
 Uses uData,uMain;
{$R *.dfm}

procedure TfrmDictionary.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if Key = VK_ESCAPE then Close;
end;

procedure TfrmDictionary.FormShow(Sender: TObject);
begin
 Left := frmMain.Left + (frmMain.Width-Width) shr 1;
 Top := frmMain.Top + (frmMain.Height-Height) shr 1;

 frmData.qDictionary.SQL.Text := Format('select * from Dictionary where Dictionary=:Dictionary',[DicName]);
 frmData.qDictionary.Parameters.ParamValues['Dictionary'] := DicName;
 DBGridDictionary.Columns.Items[1].Title.Caption := DicName;
 frmData.qDictionary.Open;
end;

end.

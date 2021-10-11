unit uAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, acPNG, ExtCtrls, StdCtrls;

type
  TfrmAbout = class(TForm)
    btnClose: TButton;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation
 Uses uMain;

{$R *.dfm}

procedure TfrmAbout.FormShow(Sender: TObject);
begin
 Left := frmMain.Left + (frmMain.Width-Width) shr 1;
 Top := frmMain.Top + (frmMain.Height-Height) shr 1;
end;

end.

////////////////////////////////////////////////////////////////////////////////
//
// Example of how to use FILE_CRYPT_START and FILE_CRYPT_END macros
//
// Version        : PELock v2.0
// Language       : Delphi/Pascal
// Author         : Bartosz W�jcik (support@pelock.com)
// Web page       : https://www.pelock.com
//
////////////////////////////////////////////////////////////////////////////////

//
// in order to use PELock unit and PELock macros you need to copy its files to
// the application directory or you can add unit and macro's path to the:
//
// Menu -> Tools -> Environment Options -> Library -> Library path
//
unit gui;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TfrmMain = class(TForm)
    lblInfo: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.DFM}

procedure TfrmMain.Button1Click(Sender: TObject);
begin

  frmMain.Close;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin

  // code between FILE_CRYPT_START and FILE_CRYPT_END will be encrypted
  // in protected file (external file is used as an encryption key)
  {$I FILE_CRYPT_START.INC}

  lblInfo.Caption := 'Hello world from encrypted code';

  {$I FILE_CRYPT_END.INC}

end;

end.

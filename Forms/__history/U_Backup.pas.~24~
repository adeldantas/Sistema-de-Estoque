unit U_Backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao_backup_Restore,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFm_Backup = class(TFm_padrao_backup_Restore)
    procedure bt_backupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_Backup: TFm_Backup;

implementation

{$R *.dfm}

uses U_DM;

procedure TFm_Backup.bt_backupClick(Sender: TObject);
begin
  try
  // REALIZA O BACKUP
  Backup.DriverLink:=dm.FDPhysFBDriverLink1;
  Backup.UserName:='SYSDBA';
  Backup.Password:='masterkey';
  Backup.Host:='servidor';
  Backup.Protocol:=iplocal;
  Backup.Database:=ed_origem.Text;
  Backup.BackupFiles.Clear;
  Backup.BackupFiles.Add(ed_destino.Text);
  Backup.Backup;
  Messagedlg('Backup Realizado com sucesso!',mtInformation,[mbOk],0);

  except
    Messagedlg('Falha ao realizar o backup!',MtError,[mbOk],0);
  end;
end;

end.

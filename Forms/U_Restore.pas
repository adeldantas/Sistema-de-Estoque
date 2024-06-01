unit U_Restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao_backup_Restore,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFm_Restore = class(TFm_padrao_backup_Restore)
    procedure bt_backupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_Restore: TFm_Restore;

implementation

{$R *.dfm}

uses U_DM;

procedure TFm_Restore.bt_backupClick(Sender: TObject);
begin
  try
  // REALIZA A RESTAURAÇÃO
  Restore.DriverLink:=dm.FDPhysFBDriverLink1;
   Restore.UserName:='SYSDBA';
   Restore.Password:='masterkey';
   Restore.Host:='servidor';
   Restore.Protocol:=iplocal;
   Restore.Database:=ed_origem.Text;
   Restore.BackupFiles.Clear;
   Restore.BackupFiles.Add(ed_destino.Text);
   Restore.Restore;
  Messagedlg('Restauração Realizada com sucesso!',mtInformation,[mbOk],0);

  except
    Messagedlg('Falha ao realizar a Restauração!',MtError,[mbOk],0);
  end;

end;

end.

unit U_padrao_backup_Restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys;

type
  TFm_padrao_backup_Restore = class(TForm)
    Panel1: TPanel;
    ed_origem: TEdit;
    ed_destino: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    bt_otigem: TBitBtn;
    bt_destino: TBitBtn;
    bt_backup: TBitBtn;
    bt_sair: TBitBtn;
    Status: TMemo;
    OpenDialog1: TOpenDialog;
    Backup: TFDIBBackup;
    Restore: TFDIBRestore;
    procedure bt_otigemClick(Sender: TObject);
    procedure bt_destinoClick(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
    procedure BackupProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure BackupError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure RestoreProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure RestoreError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fm_padrao_backup_Restore: TFm_padrao_backup_Restore;

implementation

{$R *.dfm}

procedure TFm_padrao_backup_Restore.BackupError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
 // SE DER CERTO
   status.Lines.Add('Falha');
   Status.Lines.Add(AException.Message);
end;

procedure TFm_padrao_backup_Restore.BackupProgress(
  ASender: TFDPhysDriverService; const AMessage: string);
begin
   // SE DER CERTO
   status.Lines.Add('TUDO CERTO');
   Status.Lines.Add(Amessage);
end;

procedure TFm_padrao_backup_Restore.bt_destinoClick(Sender: TObject);
begin
// localiza o local onde será o backup
 if OpenDialog1.Execute then
    begin
      ed_destino.Text:=OpenDialog1.FileName;
    end
    else
    abort;
end;

procedure TFm_padrao_backup_Restore.bt_otigemClick(Sender: TObject);
begin
 // localiza o local de origem do banco de dados
 if OpenDialog1.Execute then
    begin
      ed_origem.Text:=OpenDialog1.FileName;
    end
    else
    abort;
end;

procedure TFm_padrao_backup_Restore.bt_sairClick(Sender: TObject);
begin
 // fechar a tela
 close;
end;

procedure TFm_padrao_backup_Restore.RestoreError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
 // SE DER falha
   status.Lines.Add('Falha');
   Status.Lines.Add(AException.Message);
end;

procedure TFm_padrao_backup_Restore.RestoreProgress(
  ASender: TFDPhysDriverService; const AMessage: string);
begin
 // SE DER CERTO
   status.Lines.Add('TUDO CERTO');
   Status.Lines.Add(Amessage);
end;

end.

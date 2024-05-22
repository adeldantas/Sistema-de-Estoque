unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_novo: TBitBtn;
    bt_Deletar: TBitBtn;
    bt_Editar: TBitBtn;
    bt_Gravar: TBitBtn;
    bt_Cancelar: TBitBtn;
    bt_Atualizar: TBitBtn;
    bt_Pesquisar: TBitBtn;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    bt_Sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_DeletarClick(Sender: TObject);
    procedure bt_EditarClick(Sender: TObject);
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure bt_AtualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure bt_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao: TFrm_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_padrao.bt_AtualizarClick(Sender: TObject);
begin
 // atualiza o registro
 try
 Tratabotoes;
 Q_padrao.Refresh;
 Messagedlg('Registro atualizado com sucesso!',mtInformation,[mbOk],0);
  Except
  ShowMessage('Erro na atualiza��o do registro,verifique!');
 end;
end;

procedure TFrm_padrao.bt_CancelarClick(Sender: TObject);
begin
// cancela a a��o
 Tratabotoes;
 Q_padrao.Cancel;
 Messagedlg('A��o cancelada pelo usu�rio!',mtInformation,[mbOk],0);
end;

procedure TFrm_padrao.bt_DeletarClick(Sender: TObject);
begin
//deleta o reigstro
Tratabotoes;
try
 if messagedlg('Deseja deletar este registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      Q_padrao.Delete;
      Messagedlg('Registro deletado com sucesso!',mtInformation,[mbOk],0);
      Tratabotoes;
    end
    else
    Tratabotoes;
    abort;
Except
ShowMessage('Erro na exclus�o dos dados,verifique!');

end;
end;

procedure TFrm_padrao.bt_EditarClick(Sender: TObject);
begin
// abri para edi��o
Tratabotoes;
 if messagedlg('Deseja editar este registro?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      Q_padrao.edit;
    end
    else
    Tratabotoes;
    abort;
end;

procedure TFrm_padrao.bt_GravarClick(Sender: TObject);
begin
//salava o registro
try
 Q_padrao.Post;
 Messagedlg('Registro salvo com sucesso!',mtInformation,[mbOk],0);
  Tratabotoes;
 except
 ShowMessage('Erro nas grava��o dos dados,verifique!');
end;
end;

procedure TFrm_padrao.bt_novoClick(Sender: TObject);
begin
//cria um nmovo registro
Tratabotoes;
Q_padrao.Open;
q_padrao.Append;
end;

procedure TFrm_padrao.bt_SairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_padrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_padrao.Close;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // faz a fun��o da tecla da tab
 if key=#13 then
   begin
     Key:=#0;
     Perform(wm_nextDlgCtl,0,0);
   end;
end;

procedure TFrm_padrao.Tratabotoes;
begin
//Habilita e desabilita os botoes
 bt_novo.Enabled:=not bt_novo.Enabled;
 bt_deletar.Enabled:=not bt_deletar.Enabled;
 bt_editar.Enabled:=not bt_editar.Enabled;
 bt_gravar.Enabled:=not bt_gravar.Enabled;
 bt_atualizar.Enabled:=not bt_atualizar.Enabled;
end;

end.

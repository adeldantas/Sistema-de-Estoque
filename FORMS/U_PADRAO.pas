unit U_PADRAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask;

type
  TFrm_padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_Novo: TBitBtn;
    bt_Deletar: TBitBtn;
    bt_Editar: TBitBtn;
    bt_Gravar: TBitBtn;
    bt_Cancelar: TBitBtn;
    bt_Atualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    bt_Pesquisar: TBitBtn;
    Q_padrao: TFDQuery;
    DS_padrao: TDataSource;
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoSENHA: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_id_usuario: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    DB_senha: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DB_cadastro: TDBEdit;
    DB_tipo: TDBComboBox;
    bt_Sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_DeletarClick(Sender: TObject);
    procedure bt_EditarClick(Sender: TObject);
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure bt_AtualizarClick(Sender: TObject);
    procedure Tratabotoes();
    procedure bt_SairClick(Sender: TObject);
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
 Tratabotoes;
 Q_padrao.Refresh;
 Messagedlg('Registro atualizado com sucesso!', mtInformation, [mbOk],0);
end;

procedure TFrm_padrao.bt_CancelarClick(Sender: TObject);
begin
 // cancela a a��o
 Tratabotoes;
 Q_padrao.Cancel;
 Messagedlg('A��o cancelada pelo usu�rio!', mtInformation, [mbOk], 0);
end;
procedure TFrm_padrao.bt_DeletarClick(Sender: TObject);
begin
 // deleta o registro
 Tratabotoes;
 if Messagedlg('Deseja deletar esse registro?', mtConfirmation, [mbOk, mbNo],0)=mrOk then
    begin
      Q_padrao.Delete;
      Messagedlg('Registro deletado com sucesso!', mtInformation, [mbOk], 0);
      Tratabotoes;
    end
 else
    Tratabotoes;
    abort;
end;

procedure TFrm_padrao.bt_EditarClick(Sender: TObject);
begin
 // edita um registro
 Tratabotoes;
 if Messagedlg('Deseja editar esse registro?', mtConfirmation, [mbOk, mbNo],0)=mrOk then
    begin
      Q_padrao.Edit;
    end
 else
    Tratabotoes;
    abort;
end;

procedure TFrm_padrao.bt_GravarClick(Sender: TObject);
begin
 // salva o registro
 Tratabotoes;
 Q_padrao.Post;
 Messagedlg('Registro salvo com sucesso!', mtInformation, [mbOk], 0);
end;
procedure TFrm_padrao.bt_NovoClick(Sender: TObject);
begin
 // cria um novo registro
 q_padrao.Open();
 Tratabotoes;
 q_padrao.Append;
end;

procedure TFrm_padrao.bt_SairClick(Sender: TObject);
begin
 if messagedlg('Deseja sair do sistema?', mtConfirmation, [mbOk, mbNo],0)=mrOk then
    begin
      Application.Terminate;
    end
    else
    abort;

 close;
end;

procedure TFrm_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // Faz a fun��o da tecla TAB
 if Key=#13 then
   begin
     Key:=#0;
     Perform(wm_nextDlgCtl,0,0);
   end;

end;

procedure TFrm_padrao.Tratabotoes;
begin
 // habilita e desabilita bot�es
 bt_Novo.Enabled:=Not bt_Novo.Enabled;
 bt_deletar.Enabled:=Not bt_deletar.Enabled;
 bt_editar.Enabled:=Not bt_editar.Enabled;
 bt_gravar.Enabled:=Not bt_gravar.Enabled;
 bt_atualizar.Enabled:=Not bt_atualizar.Enabled;

end;

end.

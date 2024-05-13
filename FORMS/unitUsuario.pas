unit unitUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFormCadUsuario = class(TForm)
    eID: TEdit;
    eDataCad: TDateTimePicker;
    eNome: TEdit;
    eSenha: TEdit;
    cbTipo: TComboBox;
    Panel1: TPanel;
    bt_novo: TBitBtn;
    bt_Deletar: TBitBtn;
    bt_Editar: TBitBtn;
    bt_Gravar: TBitBtn;
    bt_Cancelar: TBitBtn;
    bt_Atualizar: TBitBtn;
    bt_Pesquisar: TBitBtn;
    bt_Sair: TBitBtn;
    fdQry: TFDQuery;
    FDTrans: TFDTransaction;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_novoClick(Sender: TObject);
    procedure bt_EditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
    procedure bt_DeletarClick(Sender: TObject);
  private
    { Private declarations }
    var Insercao:Boolean;
    function InsereOuAtualizaUsuario(IDUsuario: Integer; Nome, Senha,
      Tipo: string; Cadastro: TDate): Boolean;

  public
    { Public declarations }
  end;

var
  FormCadUsuario: TFormCadUsuario;

implementation

{$R *.dfm}

uses U_DM, unitConsUsuario,ufuncao;

function TFormCadUsuario.InsereOuAtualizaUsuario(IDUsuario: Integer; Nome, Senha, Tipo: string; Cadastro: TDate): Boolean;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := dm.conexao; // Substitua MyFDConnection pelo seu TFDConnection
    FDQuery.Transaction:=FDTrans;

    if FDTrans.Active then
    FDTrans.Commit;
    FDTrans.StartTransaction;

       try
        // Verifica se o usu�rio j� existe na tabela
        FDQuery.SQL.Text := 'SELECT COUNT(*) FROM USUARIO WHERE ID_USUARIO = :ID_USUARIO';
        FDQuery.ParamByName('ID_USUARIO').AsInteger := IDUsuario;
        FDQuery.Open;
        if FDQuery.Fields[0].AsInteger > 0 then
        begin
          // Atualiza o registro existente
          FDQuery.Close;
          FDQuery.SQL.Text := 'UPDATE USUARIO SET NOME = :NOME, SENHA = :SENHA, TIPO = :TIPO, CADASTRO = :CADASTRO WHERE ID_USUARIO = :ID_USUARIO';
        end
        else
        begin
          // Insere um novo registro
          FDQuery.Close;
          FDQuery.SQL.Text := 'INSERT INTO USUARIO (ID_USUARIO, NOME, SENHA, TIPO, CADASTRO) VALUES (:ID_USUARIO, :NOME, :SENHA, :TIPO, :CADASTRO)';
        end;

        // Define os par�metros e executa a consulta
        FDQuery.ParamByName('ID_USUARIO').AsInteger := IDUsuario;
        FDQuery.ParamByName('NOME').AsString := Nome;
        FDQuery.ParamByName('SENHA').AsString := Senha;
        FDQuery.ParamByName('TIPO').AsString := Tipo;
        FDQuery.ParamByName('CADASTRO').AsDate := Cadastro;
        FDQuery.ExecSQL;

        FDTrans.Commit;

          Result := True;

       except
         FDTrans.Rollback;
           Result := FALSE;
       end;

  // Opera��o conclu�da com sucesso
  finally
    FDQuery.Free;
  end;
end;

procedure TFormCadUsuario.bt_DeletarClick(Sender: TObject);
begin
     if application.MessageBox('Confirma a Exclus�o?', 'Exclus�o', mb_applmodal + mb_iconquestion + mb_yesno + mb_defbutton2) = 6 then
      begin

        if StrToIntDef(EID.Text,0) > 0 then
        BEGIN

         if FDtrans.Active then
         FDTrans.Commit;
         FDTrans.StartTransaction;

         try
           fdQry.Close;
           fdQry.SQL.Text:='DELETE FROM USUARIO WHERE ID_USUARIO=:ID';
           fdQry.ParamByName('ID').AsInteger:=StrToInt(EID.Text);
           fdQry.ExecSQL;


           FDTrans.Commit;

            LimpaEdit(FormCadUsuario);
            EDEdit(FormCadUsuario,TRUE);

            SHOWMESSAGE('Exclus�o conclu�do!');

         except

          on e:exception do
           begin
              FDTrans.Rollback;
              SHOWMESSAGE('Erro: '+ e.Message );
           end;

         end;


        END;



      end;
end;

procedure TFormCadUsuario.bt_EditarClick(Sender: TObject);
begin
Insercao:=false;
 EDEdit(FormCadUsuario,true);
end;

procedure TFormCadUsuario.bt_GravarClick(Sender: TObject);
begin
   if enome.Text <> EmptyStr then
   begin
     ShowMessage('Campo Nome est� vazio!');
     abort;

   end;
   if esenha.Text <> EmptyStr then
   begin
     ShowMessage('Campo Senha est� vazio!');
     abort;

   end;

  if InsereOuAtualizaUsuario(
  strtointdef(eID.Text,0),
  eNome.Text,
  esenha.text,
  cbTipo.Text,
  eDataCad.Date) = true then
  begin
   ShowMessage('Dados Gravado!');
  end
  else
    ShowMessage('Erro ao Gravar!');

end;

procedure TFormCadUsuario.bt_novoClick(Sender: TObject);
begin
Insercao:=true;
LimpaEdit(FormCadUsuario);
end;

procedure TFormCadUsuario.bt_PesquisarClick(Sender: TObject);
begin
  Application.CreateForm(TFormConsUsuario, FormConsUsuario);
   FormConsUsuario.Tag := 0;
   FormConsUsuario.showmodal;
   EDEdit(FormCadUsuario,false);

end;

procedure TFormCadUsuario.FormShow(Sender: TObject);
begin
eDataCad.Date:=date;

end;

end.

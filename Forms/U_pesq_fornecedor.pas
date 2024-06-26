unit U_pesq_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet, frxExportPDF, Vcl.DBCtrls;

type
  TFrm_pesq_Fornecedor = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoENDERECO: TStringField;
    Q_pesq_padraoNUMERO: TIntegerField;
    Q_pesq_padraoBAIRRO: TStringField;
    Q_pesq_padraoCIDADE: TStringField;
    Q_pesq_padraoUF: TStringField;
    Q_pesq_padraoCEP: TStringField;
    Q_pesq_padraoTELEFONE: TStringField;
    Q_pesq_padraoCNPJ: TStringField;
    Q_pesq_padraoEMAIL: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_Fornecedor: TFrm_pesq_Fornecedor;

implementation

{$R *.dfm}

procedure TFrm_pesq_Fornecedor.bt_ImprimirClick(Sender: TObject);
var caminho: string;
begin
 //ABRE rELATORIO
 caminho:=ExtractFilepath(Application.ExeName);
 if Frm_pesq_fornecedor.rel_pesq_padrao.LoadFromFile(caminho +
 'rel_fornecedor.fr3') then
    begin
     rel_pesq_padrao.clear;//limpa relatorio
     Rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) +
     'rel_fornecedor.fr3');
     rel_pesq_padrao.PrepareReport(true);
     rel_pesq_padrao.ShowPreparedReport;
    end
    else
    Messagedlg('Relatorio n�o encontrado',mtError,[mbOk],0);

end;

procedure TFrm_pesq_Fornecedor.bt_PesquisaClick(Sender: TObject);
begin
 Q_pesq_padrao.Close; // fecha
 Q_pesq_padrao.SQL.Add(''); // limpa
 Q_pesq_padrao.Params.Clear;  //limpamos os parametros
 Q_pesq_padrao.SQL.Clear;  // limPa o sql
 Q_pesq_padrao.SQL.Add('SELECT ID_FORNECEDOR, '
  + 'NOME ,'
  + 'ENDERECO ,'
  + 'NUMERO ,'
  + 'BAIRRO ,'
  + 'CIDADE ,'
  + 'UF , '
  + 'CEP ,'
  + 'TELEFONE ,'
  + 'CNPJ ,'
  + 'EMAIL ,'
  + 'CADASTRO '
  + 'FROM FORNECEDOR'); // add sql

   //OP��ES DE PESQUISA
 case cb_chave_pesquisa.ItemIndex of
   0:begin// pesquisa por codigo
      Q_pesq_padrao.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString:=ed_nome.Text; // aponta para o campo do parametro

   end;

    1:begin // pesquisa por nome
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PNOME').AsString:= '%' +ed_nome.Text + '%'; // aponta para o campo do parametro

   end;

    2:begin// pesquisa por dadta
       Q_pesq_padrao.SQL.Add('WHERE CADASTRO =:PCADASTRO');
       Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=strTodate(mk_inicio.Text);
      end;


    3:begin// pesquisa por periodo
       Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
       Q_pesq_padrao.ParamByName('PINICIO').AsDate:=strTodate(mk_inicio.Text);
       Q_pesq_padrao.ParamByName('PFIM').AsDate:=strTodate(mk_fim.Text);
      end;

     4:begin
         Q_pesq_padrao.SQL.Add('ORDER BY ID_FORNECEDOR');

      end;
 end;

// abre a query mostra o resultado
 Q_pesq_padrao.Open;

 // Mostra a quantidade de registros encontrados
    lb_Resultado.Caption:=' Total de Registros Localizados:   ' +
    IntTostr(Q_pesq_padrao.recordcount);

 // se nada for encontrado mostra a msg
 if Q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Registro n�o encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;

end;

procedure TFrm_pesq_Fornecedor.bt_TransferirClick(Sender: TObject);
begin
    if Q_pesq_padrao.RecordCount > 0 then
     begin
       codigo:=Q_pesq_padraoID_FORNECEDOR.AsInteger;
     end
     else
     abort;

end;

end.

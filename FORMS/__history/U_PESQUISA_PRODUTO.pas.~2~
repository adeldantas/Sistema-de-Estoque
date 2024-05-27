unit U_PESQUISA_PRODUTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PESQUISA_PADRAO, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesquisa_Produto = class(TFrm_Pesquisa_Padrao)
    query_pesquisa_padraoID_PRODUTO: TIntegerField;
    query_pesquisa_padraoPRODUTO_DESCRICAO: TStringField;
    query_pesquisa_padraoVL_CUSTO: TBCDField;
    query_pesquisa_padraoVL_VENDA: TBCDField;
    query_pesquisa_padraoESTOQUE: TBCDField;
    query_pesquisa_padraoESTOQUE_MIN: TBCDField;
    query_pesquisa_padraoUNIDADE: TStringField;
    query_pesquisa_padraoCADASTRO: TDateField;
    query_pesquisa_padraoID_FORNECEDOR: TIntegerField;
    query_pesquisa_padraoNOME: TStringField;
    procedure Bt_pesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesquisa_Produto: TFrm_Pesquisa_Produto;

implementation

{$R *.dfm}

procedure TFrm_Pesquisa_Produto.Bt_pesquisaClick(Sender: TObject);
  begin
    Query_pesquisa_padrao.SQL.Add('SELECT A.ID_PRODUTO,A.PRODUTO_DESCRICAO,A.VL_CUSTO,A.VL_VENDA,A.ESTOQUE,A.ESTOQUE_MIN,A.UNIDADE,A.ID_FORNECEDOR,B.NOME,A.CADASTRO FROM PRODUTO A, INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');

    case cb_chave_pesquisa.ItemIndex of
      0:begin
          Query_pesquisa_padrao.SQL.Add('WHERE A.ID_PRODUTO =:PID_PRODUTO'); // criamos o parametro
          Query_pesquisa_padrao.ParamByName('PID_PRODUTO').AsString:=ed_nome.Text; // aponta para o campo do parametro
        end;

      1:begin
          Query_pesquisa_padrao.SQL.Add('WHERE A.PRODUTO_DESCRICAO LIKE :PDESCRICAO'); // criamos o parametro
          Query_pesquisa_padrao.ParamByName('PDESCRICAO').AsString:= '%' +ed_nome.Text + '%'; // aponta para o campo do parametro
        end;

      2:begin
          Query_pesquisa_padrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
          Query_pesquisa_padrao.ParamByName('PCADASTRO').AsDate:=strTodate(mk_inicio.Text);
        end;

      3:begin
          Query_pesquisa_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
          Query_pesquisa_padrao.ParamByName('PINICIO').AsDate:=strTodate(mk_inicio.Text);
          Query_pesquisa_padrao.ParamByName('PFIM').AsDate:=strTodate(mk_fim.Text);
        end;

      4:begin
           Query_pesquisa_padrao.SQL.Add('ORDER BY A.ID_PRODUTO');

        end;

      5:begin
           Query_pesquisa_padrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR'); // criamos o parametro
           Query_pesquisa_padrao.ParamByName('PID_FORNECEDOR').AsString:=ed_nome.Text;

        end;
    end;

    QUERY_pesquisa_padrao.Open;

    if query_pesquisa_padrao.IsEmpty then
      begin
        messagedlg('Registro não encontrado!', mtinformation,[mbok],0);
      end
      else
      abort;
end;
end.

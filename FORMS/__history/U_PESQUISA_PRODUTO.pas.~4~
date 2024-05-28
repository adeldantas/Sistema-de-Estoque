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
    procedure bt_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
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
    Query_pesquisa_padrao.SQL.Clear;
    Query_pesquisa_padrao.SQL.Add('SELECT A.ID_PRODUTO,');
    Query_pesquisa_padrao.SQL.Add('A.PRODUTO_DESCRICAO,');
    Query_pesquisa_padrao.SQL.Add('A.VL_CUSTO,');
    Query_pesquisa_padrao.SQL.Add('A.VL_VENDA,');
    Query_pesquisa_padrao.SQL.Add('A.ESTOQUE,');
    Query_pesquisa_padrao.SQL.Add('A.ESTOQUE_MIN,');
    Query_pesquisa_padrao.SQL.Add('A.UNIDADE,');
    Query_pesquisa_padrao.SQL.Add('A.ID_FORNECEDOR,');
    Query_pesquisa_padrao.SQL.Add('B.NOME,');
    Query_pesquisa_padrao.SQL.Add('A.CADASTRO');
    Query_pesquisa_padrao.SQL.Add('FROM PRODUTO A');
    Query_pesquisa_padrao.SQL.Add('INNER JOIN FORNECEDOR B');
    Query_pesquisa_padrao.SQL.Add('ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');


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
procedure TFrm_Pesquisa_Produto.bt_transferirClick(Sender: TObject);
begin
  if query_pesquisa_padrao.RecordCount > 0 then
    begin
      codigo:=query_pesquisa_padraoID_PRODUTO.AsInteger;
    end
    else
    abort;

end;

procedure TFrm_Pesquisa_Produto.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_transferir.click;
end;

end.

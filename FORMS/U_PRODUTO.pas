unit U_PRODUTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PADRAO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Produto = class(TFrm_padrao)
    Q_padraoVL_CUSTO: TBCDField;
    Q_padraoVL_VENDA: TBCDField;
    Q_padraoESTOQUE: TBCDField;
    Q_padraoESTOQUE_MIN: TBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label1: TLabel;
    DB_id_produto: TDBEdit;
    Label2: TLabel;
    DB_vl_custo: TDBEdit;
    Label3: TLabel;
    DB_vl_venda: TDBEdit;
    Label4: TLabel;
    DB_estoque: TDBEdit;
    Label5: TLabel;
    DB_estoque_min: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DB_cadastro: TDBEdit;
    Label8: TLabel;
    DB_id_fornecedor: TDBEdit;
    Label9: TLabel;
    DB_nome: TDBEdit;
    Q_padraoPRODUTO_DESCRICAO: TStringField;
    Label10: TLabel;
    DB_descricao: TDBEdit;
    DBC_unidade: TDBComboBox;
    Q_padraoID_PRODUTO: TIntegerField;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

uses U_PESQUISA_PRODUTO;

procedure TFrm_Produto.bt_novoClick(Sender: TObject);
begin
  inherited;
   db_cadastro.Text:=datetostr(now);
   db_nome.SetFocus;
end;

procedure TFrm_Produto.bt_PesquisarClick(Sender: TObject);
begin
  Frm_Pesquisa_PRODUTO:=Tfrm_Pesquisa_PRODUTO.Create(self);
  Frm_Pesquisa_PRODUTO.showmodal;
    try
      if frm_pesquisa_PRODUTO.codigo > 0 then
        begin
          q_padrao.Open;
          q_padrao.Locate('ID_PRODUTO',frm_pesquisa_PRODUTO.codigo,[]);
        end;
    finally
      Frm_Pesquisa_PRODUTO.Free;
      Frm_Pesquisa_PRODUTO:=nil;
    end;

end;

end.

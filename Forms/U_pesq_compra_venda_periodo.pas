unit U_pesq_compra_venda_periodo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Pesq_Compras_Venda_Periodo = class(TForm)
    Panel1: TPanel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    bt_Pesquisa: TBitBtn;
    bt_Imprimir: TBitBtn;
    Q_compra: TFDQuery;
    Q_venda: TFDQuery;
    Ds_Compra: TDataSource;
    Ds_Venda: TDataSource;
    Relatorio: TfrxReport;
    frxDBD_Compra: TfrxDBDataset;
    frxDBD_Venda: TfrxDBDataset;
    Q_compraMES: TSmallintField;
    Q_compraANO: TSmallintField;
    Q_compraVALOR_COMPRA: TFMTBCDField;
    Q_vendaMES: TSmallintField;
    Q_vendaANO: TSmallintField;
    Q_vendaVALOR_VENDA: TFMTBCDField;
    procedure bt_PesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesq_Compras_Venda_Periodo: TFrm_Pesq_Compras_Venda_Periodo;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Pesq_Compras_Venda_Periodo.bt_PesquisaClick(Sender: TObject);
begin
 Q_compra.Close; // fecha
 Q_compra.SQL.Add(''); // limpa
 Q_compra.Params.Clear;  //limpamos os parametros
 Q_compra.SQL.Clear;  // limPa o sql
 Q_compra.SQL.Add('select '
                  +'extract(MONTH FROM A.CADASTRO) AS MES,'
                  +'extract(YEAR FROM A.CADASTRO) AS ANO, '
                  +'SUM(A.VALOR) AS VALOR_COMPRA          '
                  +'FROM COMPRA A');
 Q_compra.SQL.Add('WHERE A.CADASTRO between :pdata_ini AND :pdata_fim');
 Q_compra.ParamByName('pdata_ini').AsDate:=Strtodate(mk_inicio.Text);
 Q_compra.ParamByName('pdata_fim').AsDate:=Strtodate(mk_fim.Text);
 Q_compra.SQL.Add('group BY extract(MONTH FROM A.CADASTRO),  extract(YEAR FROM A.CADASTRO)');
 Q_compra.SQL.Add('ORDER BY  extract(MONTH FROM A.CADASTRO)');
 Q_compra.Open;


 Q_venda.Close; // fecha
 Q_venda.SQL.Add(''); // limpa
 Q_venda.Params.Clear;  //limpamos os parametros
  Q_venda.SQL.Clear;  // limPa o sql
  Q_venda.SQL.Add('select '
                  +'extract(MONTH FROM A.CADASTRO) AS MES,'
                  +'extract(YEAR FROM A.CADASTRO) AS ANO, '
                  +'SUM(A.VALOR) AS VALOR_VENDA          '
                  +'FROM VENDA A');
  Q_venda.SQL.Add('WHERE A.CADASTRO between :pdata_ini AND :pdata_fim');
  Q_venda.ParamByName('pdata_ini').AsDate:=Strtodate(mk_inicio.Text);
  Q_venda.ParamByName('pdata_fim').AsDate:=Strtodate(mk_fim.Text);
  Q_venda.SQL.Add('group BY extract(MONTH FROM A.CADASTRO),  extract(YEAR FROM A.CADASTRO)');
  Q_venda.SQL.Add('ORDER BY  extract(MONTH FROM A.CADASTRO)');
  Q_venda.Open;

  if Q_compra.IsEmpty AND q_VENDA.IsEmpty THEN
     begin
       ShowMessage('Nada enconTRADO');
     end
     ELSE
     ABORT;

end;

end.

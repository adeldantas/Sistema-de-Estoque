unit U_altera_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_altera_Preco = class(TForm)
    RgAltera: TRadioGroup;
    ed_produto: TEdit;
    ed_porcentagem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bt_Acao: TBitBtn;
    Q_produto: TFDQuery;
    Ds_produto: TDataSource;
    DBGrid1: TDBGrid;
    Q_produtoID_PRODUTO: TIntegerField;
    Q_produtoPRODUTO_DESCRICAO: TStringField;
    Q_produtoVL_CUSTO: TFMTBCDField;
    Q_produtoVL_VENDA: TFMTBCDField;
    Sp_Aumento: TFDStoredProc;
    Sp_Aumento_todos: TFDStoredProc;
    Sp_Diminuir: TFDStoredProc;
    Sp_Diminuir_Todos: TFDStoredProc;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Bt_AcaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_altera_Preco: TFrm_altera_Preco;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_altera_Preco.Bt_AcaoClick(Sender: TObject);
begin
 case rgaltera.ItemIndex of
  0:begin // altera o valor de venda de um produto
     Sp_Aumento.Close;
     Sp_aumento.Prepare;
     sp_aumento.ParamByName('P_ID_PRODUTO').AsInteger:=Strtoint(ed_produto.Text);
     sp_aumento.ParamByName('P_PORCENTAGEM').AsSingle:=StrtoFloat(ed_porcentagem.Text);
     sp_aumento.ExecProc;
   end;

   1:begin// altera o valor de venda de todos os  produtos
     Sp_Aumento_todos.Close;
     Sp_Aumento_todos.Prepare;
     Sp_Aumento_todos.ParamByName('P_PORCENTAGEM').AsSingle:=StrtoFloat(ed_porcentagem.Text);
     Sp_Aumento_todos.ExecProc;
   end;

   2:begin // Diminui o valor de venda de um produto
     Sp_Diminuir.Close;
     Sp_Diminuir.Prepare;
     Sp_Diminuir.ParamByName('P_ID_PRODUTO').AsInteger:=Strtoint(ed_produto.Text);
     Sp_Diminuir.ParamByName('P_PORCENTAGEM').AsSingle:=StrtoFloat(ed_porcentagem.Text);
     Sp_Diminuir.ExecProc;
   end;

    3:begin // Diminui o valor de venda de todos os  produtos
     Sp_Diminuir_todos.Close;
     Sp_Diminuir_todos.Prepare;
     Sp_Diminuir_todos.ParamByName('P_PORCENTAGEM').AsSingle:=StrtoFloat(ed_porcentagem.Text);
     Sp_Diminuir_todos.ExecProc;
   end;
 end;
   Q_produto.Close;
   Q_produto.Open;
   Messagedlg('A��o executado com sucesso!',mtInformation,[mbOk],0);
end;

procedure TFrm_altera_Preco.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13  then
    begin
      Key:=#0;
      Perform(wm_nextDlgCtl,0,0);
    end;
end;

procedure TFrm_altera_Preco.FormShow(Sender: TObject);
begin
 Q_produto.Open;
end;

end.

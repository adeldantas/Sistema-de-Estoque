unit U_PESQUISA_PADRAO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Mask, Vcl.StdCtrls,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_Pesquisa_Padrao = class(TForm)
    Panel1: TPanel;
    CB_chave_pesquisa: TComboBox;
    Label1: TLabel;
    eD_Nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    lb_nome: TLabel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Bt_pesquisa: TBitBtn;
    bt_trasnferir: TBitBtn;
    bt_imprimir: TBitBtn;
    query_pesquisa_padrao: TFDQuery;
    ds_pesquisa_padrao: TDataSource;
    procedure CB_chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesquisa_Padrao: TFrm_Pesquisa_Padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Pesquisa_Padrao.CB_chave_pesquisaChange(Sender: TObject);
begin
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.visible:=true;
      lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='DIGITE O C�DIGO';
    end;

    1:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.visible:=true;
      lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='DIGITE O NOME';
    end;

    2:begin
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_inicio.SetFocus;
      mk_fim.Visible:=false;
      lb_nome.visible:=false;
      lb_inicio.Visible:=true;
      lb_inicio.Caption:='DIGITE A DATA ';
    end;

    3:begin
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_fim.Visible:=true;
      mk_inicio.SetFocus;
      lb_nome.visible:=false;
      lb_inicio.Visible:=true;
      lb_fim.Visible:=false;
      lb_inicio.Caption:='DIGITE O PERIODO';
    end;

  end;
end;
end.

unit U_PESQUISA_USUARIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PESQUISA_PADRAO, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesquisa_Usuario = class(TFrm_Pesquisa_Padrao)
    query_pesquisa_padraoID_USUARIO: TIntegerField;
    query_pesquisa_padraoNOME: TStringField;
    query_pesquisa_padraoTIPO: TStringField;
    query_pesquisa_padraoCADASTRO: TDateField;
    procedure Bt_pesquisaClick(Sender: TObject);
    procedure CB_chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesquisa_Usuario: TFrm_Pesquisa_Usuario;

implementation

{$R *.dfm}

procedure TFrm_Pesquisa_Usuario.Bt_pesquisaClick(Sender: TObject);
begin
  inherited;
  QUERY_pesquisa_padrao.close;
  qUERY_pesquisa_padrao.sql.add('');
  QUERY_pesquisa_padrao.sql.clear;
  QUERY_pesquisa_padrao.sql.add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO');


  case cb_chave_pesquisa.ItemIndex of
    0:begin
      QUERY_PESQUISA_PADRAO.SQL.ADD('WHEREID_USUARIO =:PID_USUARIO');
      QUERY_PESQUISA_PADRAO.PARAMBYNAME('PID_USUARIO').ASSTRING:=ed_nome.Text;
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

procedure TFrm_Pesquisa_Usuario.CB_chave_pesquisaChange(Sender: TObject);
begin
  inherited;
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
    end;

    1:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
    end;

    2:begin
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_inicio.SetFocus;
      mk_fim.Visible:=false;
    end;

    3:begin
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_fim.Visible:=true;
      mk_inicio.SetFocus;
    end;

  end;
end;

end.

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
  QUERY_PESQUISA_PADRAO.SQL.ADD('WHEREID_USUARIO =:PID_USUARIO');
  QUERY_PESQUISA_PADRAO.PARAMBYNAME('PID_USUARIO').ASSTRING:=ed_nome.Text;
  QUERY_pesquisa_padrao.Open;

  if query_pesquisa_padrao.IsEmpty then
    begin
      messagedlg('Registro n�o encontrado!', mtinformation,[mbok],0);
    end;
end;

end.
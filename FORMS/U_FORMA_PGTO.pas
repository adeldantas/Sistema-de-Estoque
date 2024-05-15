unit U_FORMA_PGTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PADRAO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Forma_Pgto = class(TFrm_padrao)
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Label1: TLabel;
    DB_id_forma_pgto: TDBEdit;
    Label2: TLabel;
    DB_descricao: TDBEdit;
    Label3: TLabel;
    DB_cadastro: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Forma_Pgto: TFrm_Forma_Pgto;

implementation

{$R *.dfm}

procedure TFrm_Forma_Pgto.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text:=datetostr(now);
  db_descricao.SetFocus;
end;

end.

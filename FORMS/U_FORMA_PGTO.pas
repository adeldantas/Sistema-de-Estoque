unit U_forma_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_Forma_pgto = class(TFrm_padrao)
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoDESCRICAO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DB_ID_FORMA_PGTO: TDBEdit;
    Label2: TLabel;
    DB_DESCRICAO: TDBEdit;
    Label3: TLabel;
    DB_CADASTRO: TDBEdit;
    Q_padraoTAXA_CARTAO: TFMTBCDField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Forma_pgto: TFrm_Forma_pgto;

implementation

{$R *.dfm}

uses U_Pesq_Formas_pgto;

procedure TFrm_Forma_pgto.bt_novoClick(Sender: TObject);
begin
  inherited;
 db_cadastro.Text:=DateTostr(now);
 db_descricao.SetFocus;
end;

procedure TFrm_Forma_pgto.bt_PesquisarClick(Sender: TObject);
begin
 Frm_pesq_forma_pgto:=TFrm_pesq_forma_pgto.create(self);
 Frm_pesq_forma_pgto.showmodal;
 try
    if Frm_pesq_forma_pgto.codigo > 0 then
       begin
         Q_padrao.Open;
         Q_padrao.Locate('ID_forma_pgto',Frm_pesq_forma_pgto.codigo,[]);
       end;
 finally
 Frm_pesq_forma_pgto.free;
 Frm_pesq_forma_pgto:=nil;
 end;


end;

end.

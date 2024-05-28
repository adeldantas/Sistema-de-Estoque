unit U_MOVIMENTO_COMPRA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_MOVIMENTO_PADRAO, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCurrencyEdit, cxDBEdit, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TFrm_movimento_compra = class(TFrm_movimento_padrao)
    Q_padraoID_COMPRA: TFDAutoIncField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoID_FORMA_PGTO: TIntegerField;
    Q_padraoUSUARIO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoVALOR: TBCDField;
    Label1: TLabel;
    DB_ID_COMPRA: TcxDBSpinEdit;
    Label2: TLabel;
    DB_ID_FORNECEDOR: TcxDBSpinEdit;
    Label3: TLabel;
    DB_ID_FORMA_PGTO: TcxDBSpinEdit;
    Label4: TLabel;
    DB_CADASTRO: TcxDBDateEdit;
    Label5: TLabel;
    DB_USUARIO: TcxDBTextEdit;
    Label6: TLabel;
    DB_VALOR: TcxDBCurrencyEdit;
    q_fornecedor: TFDQuery;
    q_forma_pgto: TFDQuery;
    DS_fornecedor: TDataSource;
    ds_forma_pgto: TDataSource;
    q_fornecedorID_FORNECEDOR: TIntegerField;
    q_fornecedorNOME: TStringField;
    q_forma_pgtoID_FORMA_PGTO: TIntegerField;
    q_forma_pgtoDESCRICAO: TStringField;
    Q_padraoNOME: TStringField;
    Q_padraoDESCRICAO: TStringField;
    Label7: TLabel;
    DB_NOME: TDBLookupComboBox;
    Label8: TLabel;
    DB_DESCRICAO: TDBLookupComboBox;
    Q_padrao_itemID_SEQUENCIA: TIntegerField;
    Q_padrao_itemID_COMPRA: TIntegerField;
    Q_padrao_itemID_PRODUTO: TIntegerField;
    Q_padrao_itemQTDE: TBCDField;
    Q_padrao_itemVL_CUSTO: TBCDField;
    Q_padrao_itemTOTAL_ITEM: TBCDField;
    Label9: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label10: TLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    Label11: TLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Label12: TLabel;
    cxDBCurrencyEdit3: TcxDBCurrencyEdit;
    Q_padrao_itemDESCONTO: TBCDField;
    Label13: TLabel;
    cxDBCurrencyEdit4: TcxDBCurrencyEdit;
    procedure bt_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_movimento_compra: TFrm_movimento_compra;

implementation

{$R *.dfm}

procedure TFrm_movimento_compra.bt_novoClick(Sender: TObject);
begin
  inherited;
  Q_PADRAOCADASTRO.AsDateTime:=Date;
  Q_PADRAOUSUARIO.AsString:='ADM';
  Q_PADRAOVALOR.AsCurrency:=0;
  db_id_fornecedor.SetFocus;

end;

end.

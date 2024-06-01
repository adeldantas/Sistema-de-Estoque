unit U_pesq_parcela_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_Parcela_pagar = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_COMPRA: TIntegerField;
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoCNPJ: TStringField;
    Q_pesq_padraoID_SEQUENCIA: TIntegerField;
    Q_pesq_padraoVALOR_PARCELA: TFMTBCDField;
    Q_pesq_padraoDT_VENCIMENTO: TDateField;
    Q_pesq_padraoDT_PAGAMENTO: TDateField;
    Q_pesq_padraoATRASO: TIntegerField;
    Q_pesq_padraoJUROS: TFMTBCDField;
    Q_pesq_padraoVL_JUROS: TFMTBCDField;
    Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField;
    Q_pesq_padraoSTATUS: TStringField;
    lbTotal: TLabel;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure bt_ImprimirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    data:Tdate;
    sequencia:integer;
  end;

var
  Frm_pesq_Parcela_pagar: TFrm_pesq_Parcela_pagar;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_pesq_Parcela_pagar.bt_ImprimirClick(Sender: TObject);
var caminho:String;
begin
 //ABRE rELATORIO
 caminho:=ExtractFilepath(Application.ExeName);
 if Frm_pesq_parcela_pagar.rel_pesq_padrao.LoadFromFile(caminho +
 'rel_lista_pagar.fr3') then
    begin
      rel_pesq_padrao.clear;//limpa relatorio
      rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) +
      'rel_lista_pagar.fr3');
      rel_pesq_padrao.Variables['Nome']:=QuotedStr(dm.usuario);
      rel_pesq_padrao.PrepareReport(true);
      rel_pesq_padrao.ShowPreparedReport;
      frm_pesq_parcela_pagar.Close;
    end
    else
    Messagedlg('Relatorio não encontrado',mtError,[mbOk],0);

end;

procedure TFrm_pesq_Parcela_pagar.bt_PesquisaClick(Sender: TObject);
 Var Soma:Real;
begin
  soma:=0;
 Q_pesq_padrao.Close; // fecha
 Q_pesq_padrao.SQL.Add(''); // limpa
 Q_pesq_padrao.Params.Clear;  //limpamos os parametros
 Q_pesq_padrao.SQL.Clear;  // limPa o sql
 Q_pesq_padrao.SQL.Add('SELECT                                                     '
                       +'A.ID_COMPRA,                                              '
                       +'A.ID_FORNECEDOR,                                          '
                       +'B.NOME,                                                   '
                       +'B.CNPJ,                                                   '
                       +'C.ID_SEQUENCIA,                                           '
                       +'C.VALOR_PARCELA,                                          '
                       +'C.DT_VENCIMENTO,                                          '
                       +'C.DT_PAGAMENTO,                                           '
                       +'C.ATRASO,                                                 '
                       +'C.JUROS,                                                  '
                       +'C.VL_JUROS,                                               '
                       +'C.TOTAL_PAGAR,                                            '
                       +'C.STATUS                                                  '
                       +'FROM COMPRA A                                             ');
Q_pesq_padrao.SQL.Add('INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR = A.ID_FORNECEDOR');
Q_pesq_padrao.SQL.Add('INNER JOIN CONTAS_PAGAR C ON C.ID_COMPRA = A.ID_COMPRA      ');

case cb_chave_pesquisa.ItemIndex of
 0:begin //pESQUISA PELO CÓDIGO DO FORNECEDOR
     Q_pesq_padrao.SQL.Add('WHERE A.ID_FORNECEDOR =:PID_FORNECEDOR');
     Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString:=ed_nome.Text;
     Q_pesq_padrao.SQL.Add('AND C.STATUS= ''EM ABERTO''');
   end;

  1:begin //pESQUISA PELO NOME DO FORNECEDOR
     Q_pesq_padrao.SQL.Add('WHERE B.NOME LIKE :PNOME');
     Q_pesq_padrao.ParamByName('PNOME').AsString:='%' +ed_nome.Text +'%';
     Q_pesq_padrao.SQL.Add('AND C.STATUS= ''EM ABERTO''');

   end;

  2:begin //pESQUISA PELO CNPJ DO FORNECEDOR
     Q_pesq_padrao.SQL.Add('WHERE C.CNPJ =:PCNPJ');
     Q_pesq_padrao.ParamByName('PCNPJ').AsString:=ed_nome.Text;
    Q_pesq_padrao.SQL.Add('AND C.STATUS= ''EM ABERTO''');

   end;


    3:begin//pESQUISA TODOS OS REGISTROS
     Q_pesq_padrao.SQL.Add('AND C.STATUS= ''EM ABERTO''');
     Q_pesq_padrao.SQL.Add('ORDER BY A.ID_COMPRA');

   end;

end;
  //Abre a query
  Q_pesq_padrao.Open;

  lb_resultado.Caption:=' Registros Localizados..:' + InttoStr(Q_pesq_padrao.RecordCount);

   if q_pesq_padrao.IsEmpty then
       begin
         Messagedlg('Nenhum registro encontrado!',mtInformation,[mbOk],0);
       end;

   Q_pesq_padrao.first;
   while not Q_pesq_padrao.eof do
    begin
      Soma:=Soma + Q_pesq_padraoTOTAL_PAGAR.AsFloat;
      Q_pesq_padrao.Next;
    end;

    lbTotal.Caption:=' Total a pagar..: ' + FormatFloat('R$ ##,#00.00', Soma);

end;

procedure TFrm_pesq_Parcela_pagar.bt_TransferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
     begin
       codigo:=Q_pesq_padraoID_compra.AsInteger;
       data:=Q_pesq_padraoDT_VENCIMENTO.AsDateTime;
       sequencia:=Q_pesq_padraoID_SEQUENCIA.AsInteger;
     end
     else
     abort;
end;

procedure TFrm_pesq_Parcela_pagar.cb_chave_pesquisaChange(Sender: TObject);
begin
 case cb_chave_pesquisa.ItemIndex of
     0:begin
       lb_nome.Caption:='DIGITE O NOME DO FORNECEDOR';
       ed_nome.Visible:=true;
       ed_nome.SetFocus;
     end;

     1:begin
       lb_nome.Caption:='DIGITE O CÓDIGO DO FORNECEDOR';
        ed_nome.Visible:=true;
       ed_nome.SetFocus;
     end;

     2:begin
       lb_nome.Caption:='DIGITE O CNPJ DO FORNECEDOR';
        ed_nome.Visible:=true;
       ed_nome.SetFocus;
     end;

      3:begin
       lb_nome.Caption:='Mostrar todos os registros';
        ed_nome.Visible:=false;
       //ed_nome.SetFocus;
     end;
end;

end;

procedure TFrm_pesq_Parcela_pagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  // se tiver sido recibido
 if (Q_pesq_padraoDT_PAGAMENTO.Value <> 0) and
    (Q_pesq_padraoSTATUS.AsString='PAGO') then
      begin
        dbgrid1.Canvas.Brush.Color:=clGreen;
        dbgrid1.Canvas.Font.Color:=clWhite;
      end
    else
    // se estiver ha vencer
     if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime > date) and
        (Q_pesq_padraoSTATUS.AsString='EM ABERTO') then
      begin
        dbgrid1.Canvas.Brush.Color:=clYellow;
        dbgrid1.Canvas.Font.Color:=clblue;
      end
    else // se estiver vencido semm pagamento
     if (Q_pesq_padraoDT_VENCIMENTO.AsDateTime<=date) and
        (Q_pesq_padraoDT_PAGAMENTO.IsNull) then
      begin
        dbgrid1.Canvas.Brush.Color:=clred;
        dbgrid1.Canvas.Font.Color:=clWhite;
      end;

      dbgrid1.DefaultDrawColumnCell(rect,datacol,column,state);
end;

end.

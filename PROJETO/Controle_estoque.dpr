program Controle_estoque;

uses
  Vcl.Forms,
  U_PRINCIPAL in '..\FORMS\U_PRINCIPAL.pas' {Form1},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_PADRAO in '..\FORMS\U_PADRAO.pas' {Frm_padrao},
  U_Empresa in '..\FORMS\U_Empresa.pas' {Frm_Empresa},
  U_CLIENTE in '..\FORMS\U_CLIENTE.pas' {Frm_Cliente},
  U_FORNECEDOR in '..\FORMS\U_FORNECEDOR.pas' {Frm_Fornecedor},
  U_PRODUTO in '..\FORMS\U_PRODUTO.pas' {Frm_Produto},
  U_FORMA_PGTO in '..\FORMS\U_FORMA_PGTO.pas' {Frm_Forma_Pgto},
  Vcl.Themes,
  Vcl.Styles,
  U_PESQUISA_PADRAO in '..\FORMS\U_PESQUISA_PADRAO.pas' {Frm_Pesquisa_Padrao},
  U_PESQUISA_USUARIO in '..\FORMS\U_PESQUISA_USUARIO.pas' {Frm_Pesquisa_Usuario},
  U_USUARIO in '..\FORMS\U_USUARIO.pas' {frm_usuario},
  U_PESQUISA_CLIENTE in '..\FORMS\U_PESQUISA_CLIENTE.pas' {Frm_Pesquisa_Cliente};

// U_EMPRESA in '..\FORMS\U_EMPRESA.pas' {Frm_padrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_Pesquisa_Cliente, Frm_Pesquisa_Cliente);
  // Application.CreateForm(TFrm_padrao1, Frm_padrao1);
  Application.Run;
end.

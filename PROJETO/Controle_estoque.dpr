program Controle_estoque;

uses
  Vcl.Forms,
  U_PRINCIPAL in '..\FORMS\U_PRINCIPAL.pas' {Form1},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_PADRAO in '..\FORMS\U_PADRAO.pas' {Frm_padrao},
  U_USUARIO in '..\FORMS\U_USUARIO.pas' {Frm_usuario},
  U_Empresa in '..\FORMS\U_Empresa.pas' {Frm_Empresa};

// U_EMPRESA in '..\FORMS\U_EMPRESA.pas' {Frm_padrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(TFrm_usuario, Frm_usuario);
  Application.CreateForm(TFrm_Empresa, Frm_Empresa);
  // Application.CreateForm(TFrm_padrao1, Frm_padrao1);
  Application.Run;
end.

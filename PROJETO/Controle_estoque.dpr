program Controle_estoque;

uses
  Vcl.Forms,
  U_PRINCIPAL in '..\FORMS\U_PRINCIPAL.pas' {Form1},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\FORMS\U_padrao.pas' {Frm_padrao},
  U_Usuario in '..\FORMS\U_Usuario.pas' {Frm_usuario},
  unitUsuario in '..\FORMS\unitUsuario.pas' {FormCadUsuario},
  unitConsUsuario in '..\FORMS\unitConsUsuario.pas' {FormConsUsuario},
  uFuncao in '..\FORMS\uFuncao.pas';

// U_EMPRESA in '..\FORMS\U_EMPRESA.pas' {Frm_padrao1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(TFrm_usuario, Frm_usuario);
  Application.CreateForm(TFormCadUsuario, FormCadUsuario);
  // Application.CreateForm(TFrm_padrao1, Frm_padrao1);
  Application.Run;
end.

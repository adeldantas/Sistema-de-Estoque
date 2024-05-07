program Controle_estoque;

uses
  Vcl.Forms,
  U_PRINCIPAL in '..\FORMS\U_PRINCIPAL.pas' {Form1},
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_PADRAO in '..\FORMS\U_PADRAO.pas' {Frm_padrao},
  U_USUARIO in '..\FORMS\U_USUARIO.pas' {Frm_usuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(TFrm_usuario, Frm_usuario);
  Application.Run;
end.

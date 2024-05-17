program Estoque;

uses
  Vcl.Forms,
  U_DM in '..\FORMS\U_DM.pas' {DM: TDataModule},
  U_Principal in '..\FORMS\U_Principal.pas' {Frm_Principal},
  U_padrao in '..\FORMS\U_padrao.pas' {Frm_padrao},
  U_Usuario in '..\FORMS\U_Usuario.pas' {frm_usuario},
  U_Empresa in '..\FORMS\U_Empresa.pas' {Frm_Empresa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_padrao, Frm_padrao);
  Application.CreateForm(Tfrm_usuario, frm_usuario);
  Application.CreateForm(TFrm_Empresa, Frm_Empresa);
  Application.Run;
end.

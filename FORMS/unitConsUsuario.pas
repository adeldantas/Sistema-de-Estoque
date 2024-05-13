unit unitConsUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TFormConsUsuario = class(TForm)
    Panel1: TPanel;
    eNome: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Panel3: TPanel;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    FDConsulta: TFDQuery;
    FDTrans: TFDTransaction;
    FDConsultaID_USUARIO: TIntegerField;
    FDConsultaNOME: TStringField;
    FDConsultaSENHA: TStringField;
    FDConsultaTIPO: TStringField;
    FDConsultaCADASTRO: TDateField;
    DataSource1: TDataSource;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eNomeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsUsuario: TFormConsUsuario;

implementation

{$R *.dfm}

uses U_DM, unitUsuario;

procedure TFormConsUsuario.Button1Click(Sender: TObject);
begin
        if FDTrans.Active then
        fdtrans.Commit;
        FDTrans.StartTransaction;
        try

         FDConsulta.Close;
         FDConsulta.SQL.Text:='Select * from USUARIO ORDER BY NOME';

         FDConsulta.Open();

        fdtrans.Commit;
        except
         fdtrans.Rollback;
        end;

end;

procedure TFormConsUsuario.Button2Click(Sender: TObject);
begin
 // tag = 0  quem chamou a consulta foi cadastro de usuario
 if FDConsulta.RecordCount > 0 then
 begin

    case tag of
      0: begin

              with FormCadUsuario do
                 begin
                   eID.Text:= FDConsulta.FieldByName('ID_USUARIO').AsString;
                    eSenha.Text:= FDConsulta.FieldByName('SENHA').AsString;
                    cbTipo.Text:= FDConsulta.FieldByName('TIPO').AsString;
                    enome.Text:= FDConsulta.FieldByName('NOME').AsString;
                    eDataCad.Date:= FDConsulta.FieldByName('CADASTRO').AsDateTime;
                 end;

                 close;
      end;

      end;

 end;
end;

procedure TFormConsUsuario.Button3Click(Sender: TObject);
begin
close;
end;

procedure TFormConsUsuario.eNomeChange(Sender: TObject);
begin

     if Length(enome.Text) > 1 then
     begin
        if FDTrans.Active then
        fdtrans.Commit;
        FDTrans.StartTransaction;
        try

         FDConsulta.Close;
         FDConsulta.SQL.Text:='Select * from USUARIO where nome like :NOME';
         FDConsulta.ParamByName('NOME').AsString:= enome.Text;
         FDConsulta.Open();

        fdtrans.Commit;
        except
         fdtrans.Rollback;
        end;

     end;

end;

procedure TFormConsUsuario.FormShow(Sender: TObject);
begin
enome.SetFocus;
end;

end.

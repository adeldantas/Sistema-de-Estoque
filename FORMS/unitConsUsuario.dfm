object FormConsUsuario: TFormConsUsuario
  Left = 0
  Top = 0
  Caption = 'Consta Usu'#225'rio'
  ClientHeight = 394
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 386
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 17
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object eNome: TEdit
      Left = 16
      Top = 36
      Width = 257
      Height = 21
      TabOrder = 0
      OnChange = eNomeChange
    end
    object Button1: TButton
      Left = 279
      Top = 34
      Width = 75
      Height = 25
      Caption = 'Listar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 352
    Width = 386
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      386
      42)
    object Button2: TButton
      Left = 216
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 297
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 386
    Height = 287
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  object FDConsulta: TFDQuery
    Connection = DM.conexao
    Transaction = FDTrans
    SQL.Strings = (
      'Select * from USUARIO')
    Left = 296
    Top = 176
    object FDConsultaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDConsultaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object FDConsultaSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object FDConsultaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object FDConsultaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object FDTrans: TFDTransaction
    Connection = DM.conexao
    Left = 296
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = FDConsulta
    Left = 104
    Top = 152
  end
end

inherited frm_usuario: Tfrm_usuario
  Caption = 'FORMUL'#193'RIO DE CADASTRO DE USU'#193'RIO'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 166
    Top = 160
    Width = 79
    Height = 16
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 166
    Top = 200
    Width = 35
    Height = 16
    Caption = 'NOME'
    FocusControl = db_nome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 166
    Top = 240
    Width = 42
    Height = 16
    Caption = 'SENHA'
    FocusControl = db_senha
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 446
    Top = 240
    Width = 29
    Height = 16
    Caption = 'TIPO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 306
    Top = 160
    Width = 70
    Height = 16
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Bevel1: TBevel
    Left = 0
    Top = 40
    Width = 849
    Height = 425
    ExplicitLeft = 0
    ExplicitTop = 40
    ExplicitWidth = 849
    ExplicitHeight = 425
  end
  inherited Panel1: TPanel
    TabOrder = 3
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 4
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [8]
    Left = 166
    Top = 176
    Width = 134
    Height = 24
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object db_nome: TDBEdit [9]
    Left = 166
    Top = 216
    Width = 530
    Height = 24
    DataField = 'NOME'
    DataSource = ds_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object db_senha: TDBEdit [10]
    Left = 166
    Top = 256
    Width = 265
    Height = 24
    DataField = 'SENHA'
    DataSource = ds_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
  object db_cadastro: TDBEdit [11]
    Left = 306
    Top = 176
    Width = 134
    Height = 24
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBComboBox1: TDBComboBox [12]
    Left = 446
    Top = 256
    Width = 250
    Height = 24
    DataField = 'TIPO'
    DataSource = ds_padrao
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    ParentFont = False
    TabOrder = 2
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

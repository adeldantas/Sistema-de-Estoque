inherited Frm_Cliente: TFrm_Cliente
  Caption = 'CADASTRO DE CLIENTE'
  ClientHeight = 397
  ExplicitLeft = -38
  ExplicitHeight = 426
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = -16
    Top = 43
    Width = 852
    ExplicitLeft = -16
    ExplicitTop = 43
    ExplicitWidth = 852
  end
  object Label1: TLabel [1]
    Left = 121
    Top = 80
    Width = 58
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [2]
    Left = 121
    Top = 120
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_Nome
  end
  object Label3: TLabel [3]
    Left = 121
    Top = 160
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 678
    Top = 159
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [5]
    Left = 121
    Top = 200
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [6]
    Left = 121
    Top = 240
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [7]
    Left = 678
    Top = 240
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label8: TLabel [8]
    Left = 121
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [9]
    Left = 339
    Top = 280
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [10]
    Left = 557
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 261
    Top = 80
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_Cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 9
  end
  inherited Panel2: TPanel
    Top = 345
    TabOrder = 10
    ExplicitTop = 345
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 121
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DB_Nome: TDBEdit [15]
    Left = 121
    Top = 136
    Width = 600
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBEdit3: TDBEdit [16]
    Left = 121
    Top = 175
    Width = 551
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit4: TDBEdit [17]
    Left = 678
    Top = 175
    Width = 43
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit5: TDBEdit [18]
    Left = 121
    Top = 216
    Width = 600
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit6: TDBEdit [19]
    Left = 121
    Top = 256
    Width = 551
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit8: TDBEdit [20]
    Left = 121
    Top = 296
    Width = 212
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit9: TDBEdit [21]
    Left = 339
    Top = 296
    Width = 212
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit10: TDBEdit [22]
    Left = 557
    Top = 296
    Width = 164
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_Cadastro: TDBEdit [23]
    Left = 261
    Top = 96
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DBEdit7: TDBComboBox [24]
    Left = 678
    Top = 256
    Width = 43
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SE'
      'SP'
      'TO')
    TabOrder = 5
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      'SELECT'
      '      ID_CLIENTE,'
      '      NOME,'
      '      ENDERECO,'
      '      NUMERO,'
      '      BAIRRO,'
      '      CIDADE,'
      '      UF,'
      '      CEP,'
      '      TELEFONE,'
      '      CPF,'
      '      CADASTRO'
      'FROM CLIENTE'
      'ORDER BY ID_CLIENTE')
    Left = 800
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000.000.000-00;1;_'
      Size = 16
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 800
  end
end

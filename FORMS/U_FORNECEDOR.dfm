inherited Frm_Fornecedor: TFrm_Fornecedor
  Caption = 'CADASTRO DE FORNECEDORES'
  ClientHeight = 412
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 130
    Top = 80
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 130
    Top = 120
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
  end
  object Label3: TLabel [2]
    Left = 130
    Top = 160
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 686
    Top = 160
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 130
    Top = 200
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 130
    Top = 240
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 686
    Top = 240
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object Label8: TLabel [7]
    Left = 130
    Top = 280
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 270
    Top = 280
    Width = 50
    Height = 16
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 420
    Top = 280
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 270
    Top = 80
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  object Label12: TLabel [11]
    Left = 567
    Top = 280
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = cxDBTextEdit1
  end
  inherited Panel1: TPanel
    TabOrder = 10
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 360
    TabOrder = 11
    ExplicitTop = 360
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [14]
    Left = 130
    Top = 96
    Width = 134
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object db_nome: TDBEdit [15]
    Left = 130
    Top = 136
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBEdit3: TDBEdit [16]
    Left = 130
    Top = 176
    Width = 550
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit4: TDBEdit [17]
    Left = 686
    Top = 176
    Width = 44
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit5: TDBEdit [18]
    Left = 129
    Top = 213
    Width = 600
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit6: TDBEdit [19]
    Left = 130
    Top = 256
    Width = 550
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit8: TDBEdit [20]
    Left = 130
    Top = 296
    Width = 134
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit9: TDBEdit [21]
    Left = 270
    Top = 296
    Width = 144
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit10: TDBEdit [22]
    Left = 420
    Top = 296
    Width = 141
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DB_cadastro: TDBEdit [23]
    Left = 270
    Top = 96
    Width = 133
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DBEdit7: TDBComboBox [24]
    Left = 686
    Top = 256
    Width = 44
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
  object cxDBTextEdit1: TcxDBTextEdit [25]
    Left = 567
    Top = 296
    DataBinding.DataField = 'EMAIL'
    DataBinding.DataSource = ds_padrao
    TabOrder = 9
    Width = 163
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'SELECT'
      '      ID_FORNECEDOR,'
      '      NOME,'
      '      ENDERECO,'
      '      NUMERO,'
      '      BAIRRO,'
      '      CIDADE,'
      '      UF,'
      '      CEP,'
      '      TELEFONE,'
      '      CNPJ,'
      '      EMAIL,'
      '      CADASTRO'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 16
    Top = 80
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
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
      EditMask = '!\(99\)0000-0000;0;_'
      Size = 16
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000\/9999-00;0;_'
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Left = 16
    Top = 152
  end
end

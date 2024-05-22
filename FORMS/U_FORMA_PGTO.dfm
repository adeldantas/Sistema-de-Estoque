inherited Frm_Forma_Pgto: TFrm_Forma_Pgto
  Caption = 'CADASTRO DE FORMAS DE PAGAMENTO'
  ClientHeight = 294
  ExplicitLeft = 8
  ExplicitHeight = 323
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 144
    Top = 112
    Width = 86
    Height = 13
    Caption = 'ID_FORMA_PGTO'
    FocusControl = DB_id_forma_pgto
  end
  object Label2: TLabel [1]
    Left = 144
    Top = 152
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DB_descricao
  end
  object Label3: TLabel [2]
    Left = 284
    Top = 112
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel2: TPanel
    Top = 242
    ExplicitTop = 242
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_id_forma_pgto: TDBEdit [5]
    Left = 144
    Top = 128
    Width = 134
    Height = 21
    DataField = 'ID_FORMA_PGTO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DB_descricao: TDBEdit [6]
    Left = 144
    Top = 168
    Width = 600
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_cadastro: TDBEdit [7]
    Left = 284
    Top = 128
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORMA_PGTO'
    UpdateOptions.AutoIncFields = 'ID_FORMA_PGTO'
    SQL.Strings = (
      'SELECT '
      '      ID_FORMA_PGTO,'
      '      DESCRICAO,'
      '      CADASTRO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

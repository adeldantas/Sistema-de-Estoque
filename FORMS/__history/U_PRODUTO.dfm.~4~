inherited Frm_Produto: TFrm_Produto
  Caption = 'CADASTRO DE PRODUTOS'
  ClientHeight = 420
  ExplicitLeft = -55
  ExplicitTop = -10
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Left = 0
    Top = 48
    Width = 836
    Height = 364
    ExplicitLeft = 0
    ExplicitTop = 48
    ExplicitWidth = 836
    ExplicitHeight = 364
  end
  object Label1: TLabel [1]
    Left = 158
    Top = 120
    Width = 66
    Height = 13
    Caption = 'ID_PRODUTO'
    FocusControl = DB_id_produto
  end
  object Label2: TLabel [2]
    Left = 158
    Top = 200
    Width = 51
    Height = 13
    Caption = 'VL_CUSTO'
    FocusControl = DB_vl_custo
  end
  object Label3: TLabel [3]
    Left = 298
    Top = 200
    Width = 50
    Height = 13
    Caption = 'VL_VENDA'
    FocusControl = DB_vl_venda
  end
  object Label4: TLabel [4]
    Left = 437
    Top = 200
    Width = 47
    Height = 13
    Caption = 'ESTOQUE'
    FocusControl = DB_estoque
  end
  object Label5: TLabel [5]
    Left = 577
    Top = 200
    Width = 72
    Height = 13
    Caption = 'ESTOQUE_MIN'
    FocusControl = DB_estoque_min
  end
  object Label6: TLabel [6]
    Left = 158
    Top = 240
    Width = 45
    Height = 13
    Caption = 'UNIDADE'
  end
  object Label7: TLabel [7]
    Left = 298
    Top = 120
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  object Label8: TLabel [8]
    Left = 246
    Top = 240
    Width = 86
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DB_id_fornecedor
  end
  object Label9: TLabel [9]
    Left = 348
    Top = 240
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label10: TLabel [10]
    Left = 158
    Top = 159
    Width = 114
    Height = 13
    Caption = 'PRODUTO_DESCRICAO'
    FocusControl = DB_descricao
  end
  inherited Panel1: TPanel
    TabOrder = 8
  end
  inherited Panel2: TPanel
    Top = 368
    TabOrder = 9
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_id_produto: TDBEdit [13]
    Left = 158
    Top = 136
    Width = 134
    Height = 21
    DataField = 'ID_PRODUTO'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_vl_custo: TDBEdit [14]
    Left = 158
    Top = 216
    Width = 134
    Height = 21
    DataField = 'VL_CUSTO'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_vl_venda: TDBEdit [15]
    Left = 298
    Top = 216
    Width = 133
    Height = 21
    DataField = 'VL_VENDA'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DB_estoque: TDBEdit [16]
    Left = 437
    Top = 216
    Width = 134
    Height = 21
    DataField = 'ESTOQUE'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DB_estoque_min: TDBEdit [17]
    Left = 577
    Top = 216
    Width = 135
    Height = 21
    DataField = 'ESTOQUE_MIN'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DB_cadastro: TDBEdit [18]
    Left = 298
    Top = 136
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DB_id_fornecedor: TDBEdit [19]
    Left = 246
    Top = 256
    Width = 96
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DB_nome: TDBEdit [20]
    Left = 348
    Top = 256
    Width = 364
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DB_descricao: TDBEdit [21]
    Left = 158
    Top = 176
    Width = 554
    Height = 23
    DataField = 'PRODUTO_DESCRICAO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBC_unidade: TDBComboBox [22]
    Left = 158
    Top = 256
    Width = 82
    Height = 21
    DataField = 'UNIDADE'
    DataSource = ds_padrao
    Items.Strings = (
      'KG'
      'ML'
      'PCT'
      'P'#199
      'LT')
    TabOrder = 5
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT '
      '      A.ID_PRODUTO,'
      '      A.PRODUTO_DESCRICAO,'
      '      A.VL_CUSTO,'
      '      A.VL_VENDA,'
      '      A.ESTOQUE,'
      '      A.ESTOQUE_MIN,'
      '      A.UNIDADE,'
      '      A.CADASTRO,'
      '      A.ID_FORNECEDOR,'
      '      B.NOME'
      'FROM PRODUTO A, FORNECEDOR B'
      'WHERE A.ID_FORNECEDOR=B.ID_FORNECEDOR')
    Left = 56
    Top = 192
    object Q_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_padraoVL_CUSTO: TBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoVL_VENDA: TBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoESTOQUE_MIN: TBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited ds_padrao: TDataSource
    Left = 56
    Top = 256
  end
end

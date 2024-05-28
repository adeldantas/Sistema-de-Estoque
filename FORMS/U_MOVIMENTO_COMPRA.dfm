inherited Frm_movimento_compra: TFrm_movimento_compra
  Caption = 'CADASTRO DE COMPRAS'
  ExplicitLeft = -25
  ExplicitTop = -34
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Panel3: TPanel
    Caption = ''
    object Label1: TLabel
      Left = 48
      Top = 3
      Width = 60
      Height = 13
      Caption = 'ID_COMPRA'
      FocusControl = DB_ID_COMPRA
    end
    object Label2: TLabel
      Left = 48
      Top = 43
      Width = 86
      Height = 13
      Caption = 'ID_FORNECEDOR'
      FocusControl = DB_ID_FORNECEDOR
    end
    object Label3: TLabel
      Left = 48
      Top = 82
      Width = 86
      Height = 13
      Caption = 'ID_FORMA_PGTO'
      FocusControl = DB_ID_FORMA_PGTO
    end
    object Label4: TLabel
      Left = 175
      Top = 3
      Width = 55
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DB_CADASTRO
    end
    object Label5: TLabel
      Left = 302
      Top = 3
      Width = 46
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DB_USUARIO
    end
    object Label6: TLabel
      Left = 508
      Top = 3
      Width = 33
      Height = 13
      Caption = 'VALOR'
      FocusControl = DB_VALOR
    end
    object Label7: TLabel
      Left = 175
      Top = 43
      Width = 300
      Height = 13
      Caption = 'NOME'
      FocusControl = DB_NOME
    end
    object Label8: TLabel
      Left = 175
      Top = 82
      Width = 300
      Height = 13
      Caption = 'DESCRICAO'
      FocusControl = DB_DESCRICAO
    end
    object DB_ID_COMPRA: TcxDBSpinEdit
      Left = 48
      Top = 19
      DataBinding.DataField = 'ID_COMPRA'
      DataBinding.DataSource = ds_padrao
      TabOrder = 0
      Width = 121
    end
    object DB_ID_FORNECEDOR: TcxDBSpinEdit
      Left = 48
      Top = 59
      DataBinding.DataField = 'ID_FORNECEDOR'
      DataBinding.DataSource = ds_padrao
      TabOrder = 4
      Width = 121
    end
    object DB_ID_FORMA_PGTO: TcxDBSpinEdit
      Left = 48
      Top = 98
      DataBinding.DataField = 'ID_FORMA_PGTO'
      DataBinding.DataSource = ds_padrao
      TabOrder = 5
      Width = 121
    end
    object DB_CADASTRO: TcxDBDateEdit
      Left = 175
      Top = 19
      DataBinding.DataField = 'CADASTRO'
      DataBinding.DataSource = ds_padrao
      TabOrder = 1
      Width = 121
    end
    object DB_USUARIO: TcxDBTextEdit
      Left = 302
      Top = 19
      DataBinding.DataField = 'USUARIO'
      DataBinding.DataSource = ds_padrao
      Enabled = False
      TabOrder = 2
      Width = 200
    end
    object DB_VALOR: TcxDBCurrencyEdit
      Left = 508
      Top = 19
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = ds_padrao
      TabOrder = 3
      Width = 121
    end
    object DB_NOME: TDBLookupComboBox
      Left = 175
      Top = 59
      Width = 454
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 6
    end
    object DB_DESCRICAO: TDBLookupComboBox
      Left = 175
      Top = 98
      Width = 454
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 7
    end
  end
  inherited Panel4: TPanel
    Caption = ''
    ExplicitTop = 362
    object Label9: TLabel
      Left = 88
      Top = 16
      Width = 66
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = cxDBSpinEdit1
    end
    object Label10: TLabel
      Left = 215
      Top = 16
      Width = 27
      Height = 13
      Caption = 'QTDE'
      FocusControl = cxDBCurrencyEdit1
    end
    object Label11: TLabel
      Left = 342
      Top = 16
      Width = 51
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = cxDBCurrencyEdit2
    end
    object Label12: TLabel
      Left = 596
      Top = 16
      Width = 62
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = cxDBCurrencyEdit3
    end
    object Label13: TLabel
      Left = 469
      Top = 16
      Width = 55
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = cxDBCurrencyEdit4
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 88
      Top = 32
      DataBinding.DataField = 'ID_PRODUTO'
      DataBinding.DataSource = ds_padrao_item
      TabOrder = 0
      Width = 121
    end
    object cxDBCurrencyEdit1: TcxDBCurrencyEdit
      Left = 215
      Top = 32
      DataBinding.DataField = 'QTDE'
      DataBinding.DataSource = ds_padrao_item
      TabOrder = 1
      Width = 121
    end
    object cxDBCurrencyEdit2: TcxDBCurrencyEdit
      Left = 342
      Top = 32
      DataBinding.DataField = 'VL_CUSTO'
      DataBinding.DataSource = ds_padrao_item
      TabOrder = 2
      Width = 121
    end
    object cxDBCurrencyEdit3: TcxDBCurrencyEdit
      Left = 596
      Top = 32
      DataBinding.DataField = 'TOTAL_ITEM'
      DataBinding.DataSource = ds_padrao_item
      TabOrder = 3
      Width = 146
    end
    object cxDBCurrencyEdit4: TcxDBCurrencyEdit
      Left = 469
      Top = 32
      DataBinding.DataField = 'DESCONTO'
      DataBinding.DataSource = ds_padrao_item
      TabOrder = 4
      Width = 121
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_padrao_item
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_ITEM'
        Visible = True
      end>
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT '
      ' ID_COMPRA,'
      ' ID_FORNECEDOR,'
      ' ID_FORMA_PGTO,'
      ' USUARIO,'
      ' CADASTRO,'
      ' VALOR'
      'FROM COMPRA'
      'ORDER BY ID_COMPRA')
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 18
      Size = 2
    end
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = q_fornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = q_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 60
      Lookup = True
    end
  end
  inherited Q_padrao_item: TFDQuery
    IndexFieldNames = 'ID_COMPRA'
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      ' ID_SEQUENCIA,'
      ' ID_COMPRA,'
      ' ID_PRODUTO,'
      ' QTDE,'
      ' VL_CUSTO,'
      ' DESCONTO,'
      ' TOTAL_ITEM'
      'FROM ITEM_COMPRA'
      'WHERE ID_COMPRA=:ID_COMPRA')
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 1
      end>
    object Q_padrao_itemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padrao_itemQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemVL_CUSTO: TBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemTOTAL_ITEM: TBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object q_fornecedor: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT'
      ' ID_FORNECEDOR,'
      ' NOME'
      'FROM FORNECEDOR'
      'ORDER BY ID_FORNECEDOR')
    Left = 592
    Top = 240
    object q_fornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_fornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object q_forma_pgto: TFDQuery
    Active = True
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      ' ID_FORMA_PGTO,'
      ' DESCRICAO'
      'FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 496
    Top = 248
    object q_forma_pgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_forma_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DS_fornecedor: TDataSource
    DataSet = q_fornecedor
    Left = 576
    Top = 304
  end
  object ds_forma_pgto: TDataSource
    DataSet = q_forma_pgto
    Left = 496
    Top = 304
  end
end

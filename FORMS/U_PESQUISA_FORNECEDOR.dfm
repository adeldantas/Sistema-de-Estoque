inherited Frm_Pesquisa_Fornecedor: TFrm_Pesquisa_Fornecedor
  Caption = 'Pesquisa de Fornecedores'
  ClientWidth = 1363
  ExplicitWidth = 1379
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1363
    inherited Bt_pesquisa: TBitBtn
      OnClick = Bt_pesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 1363
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Title.Caption = 'ID'
        Width = 17
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 239
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ENDERECO'
        Width = 173
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CNPJ'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Width = 75
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 1363
  end
  inherited query_pesquisa_padrao: TFDQuery
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
    object query_pesquisa_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_pesquisa_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object query_pesquisa_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object query_pesquisa_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 16
    end
    object query_pesquisa_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 16
    end
    object query_pesquisa_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object query_pesquisa_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

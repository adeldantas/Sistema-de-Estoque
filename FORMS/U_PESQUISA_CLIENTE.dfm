inherited Frm_Pesquisa_Cliente: TFrm_Pesquisa_Cliente
  Caption = 'Pesquisa de Clientes'
  ClientWidth = 1040
  ExplicitLeft = -269
  ExplicitWidth = 1056
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1040
    ExplicitWidth = 1040
    inherited Bt_pesquisa: TBitBtn
      OnClick = Bt_pesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Width = 1040
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Title.Caption = 'ID'
        Width = 26
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 220
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
        Width = 127
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEP'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    Width = 1040
    ExplicitWidth = 1040
  end
  inherited query_pesquisa_padrao: TFDQuery
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
    object query_pesquisa_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object query_pesquisa_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 16
    end
    object query_pesquisa_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

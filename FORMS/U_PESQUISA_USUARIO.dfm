inherited Frm_Pesquisa_Usuario: TFrm_Pesquisa_Usuario
  Caption = 'Pesquisa de Usu'#225'rios'
  ExplicitLeft = -235
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Bt_pesquisa: TBitBtn
      OnClick = Bt_pesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesquisa_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 96
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Width = 96
        Visible = True
      end>
  end
  inherited query_pesquisa_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '      ID_USUARIO,'
      '      NOME,'
      '      TIPO,'
      '      CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    object query_pesquisa_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object query_pesquisa_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object query_pesquisa_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object query_pesquisa_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

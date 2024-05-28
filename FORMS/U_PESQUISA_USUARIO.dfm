inherited Frm_Pesquisa_Usuario: TFrm_Pesquisa_Usuario
  Caption = 'Pesquisa de Usu'#225'rios'
  ExplicitLeft = -235
  ExplicitWidth = 1022
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited mk_inicio: TMaskEdit
      Width = 116
      ExplicitWidth = 116
    end
    inherited mk_fim: TMaskEdit
      Width = 116
      ExplicitWidth = 116
    end
    inherited Bt_pesquisa: TBitBtn
      OnClick = Bt_pesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
    inherited bt_imprimir: TBitBtn
      OnClick = bt_imprimirClick
    end
  end
  inherited DBGrid1: TDBGrid
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
        Width = 206
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 118
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
    Active = True
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
  inherited Rel_pesquisa_padrao: TfrxReport
    ReportOptions.CreateDate = 45439.470544768500000000
    ReportOptions.LastChange = 45439.678395023100000000
    Datasets = <
      item
        DataSet = dataset_pesquisa_padrao
        DataSetName = 'frxDB_usuarios'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object Título: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590551180000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Left = 181.417440000000000000
          Top = 45.354360000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE USU'#193'RIOS DO SISTEMA')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 366.614410000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Left = 457.323130000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 548.031850000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 642.520100000000000000
        DataSet = dataset_pesquisa_padrao
        DataSetName = 'frxDB_usuarios'
        RowCount = 0
        object frxDB_usuariosID_USUARIO: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_USUARIO'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDB_usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_usuarios."ID_USUARIO"]')
          ParentFont = False
        end
        object frxDB_usuariosNOME: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDB_usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_usuarios."NOME"]')
          ParentFont = False
        end
        object frxDB_usuariosTIPO: TfrxMemoView
          Align = baWidth
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDB_usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_usuarios."TIPO"]')
          ParentFont = False
        end
        object frxDB_usuariosCADASTRO: TfrxMemoView
          Align = baWidth
          Left = 400.630180000000000000
          Top = 3.779530000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = dataset_pesquisa_padrao
          DataSetName = 'frxDB_usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_usuarios."CADASTRO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 117.165430000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 241.889920000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 400.630180000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
      end
    end
  end
  inherited dataset_pesquisa_padrao: TfrxDBDataset
    UserName = 'frxDB_usuarios'
  end
end

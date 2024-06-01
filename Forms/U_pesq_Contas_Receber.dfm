inherited Frm_pesq_Parcela_Receber: TFrm_pesq_Parcela_Receber
  Caption = 'FORMUL'#193'RIO DE RECEBIMENTO DE CONTAS/PARCELAS'
  ExplicitLeft = -363
  ExplicitWidth = 1138
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited lb_inicio: TLabel
      Visible = False
    end
    inherited lb_fim: TLabel
      Visible = False
    end
    inherited cb_chave_pesquisa: TComboBox
      OnClick = cb_chave_pesquisaClick
      Items.Strings = (
        'C'#211'DIGO DO CLIENTE'
        'NOME'
        'CPF'
        'TODOS')
    end
    inherited mk_inicio: TMaskEdit
      Visible = False
    end
    inherited mk_fim: TMaskEdit
      Visible = False
    end
    inherited bt_Pesquisa: TBitBtn
      OnClick = bt_PesquisaClick
    end
    inherited bt_Transferir: TBitBtn
      OnClick = bt_TransferirClick
    end
    inherited bt_Imprimir: TBitBtn
      OnClick = bt_ImprimirClick
    end
  end
  inherited DBGrid1: TDBGrid
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_CLIENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_SEQUENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PARCELA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_VENCIMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DT_PAGAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ATRASO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_JUROS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL_PAGAR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    object Lb_Informacao: TLabel [1]
      Left = 368
      Top = 16
      Width = 107
      Height = 19
      Caption = 'lb_Resultado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
      Visible = False
    end
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '     A.ID_VENDA,'
      '     A.ID_CLIENTE,'
      '     B.NOME,'
      '     B.CPF,'
      '     C.ID_SEQUENCIA,'
      '     C.VALOR_PARCELA,'
      '     C.DT_VENCIMENTO,'
      '     C.DT_PAGAMENTO,'
      '     C.ATRASO,'
      '     C.JUROS,'
      '     C.VL_JUROS,'
      '     C.TAXA_CARTAO,'
      '     C.TOTAL_PAGAR,'
      '     C.STATUS'
      '  FROM VENDA A'
      '  INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE'
      '  INNER JOIN CONTAS_RECEBER C ON C.ID_VENDA = A.ID_VENDA'
      '  WHERE C.STATUS='#39'EM ABERTO'#39
      '  ORDER BY A.ID_VENDA')
    object Q_pesq_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_pesq_padraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
    object Q_pesq_padraoID_SEQUENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoVALOR_PARCELA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoDT_VENCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoDT_PAGAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoATRASO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoJUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoVL_JUROS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoTOTAL_PAGAR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  inherited REL_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 43958.675527430500000000
    ReportOptions.LastChange = 44815.648471273150000000
    Datasets = <
      item
        DataSet = DatSET_pesq_padrao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' usuario'
        Value = Null
      end
      item
        Name = 'nome'
        Value = ''
      end
      item
        Name = 'AReceber'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            'RELAT'#211'RIO DE PARCELAS A RECEBER')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baWidth
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID_VENDA:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baWidth
          Left = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID_CLIENTE:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME CLIENTE:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          Left = 385.512060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PARCELA:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baWidth
          Left = 502.677490000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = DatSET_pesq_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ID_VENDA: TfrxMemoView
          Align = baWidth
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_VENDA"]')
          ParentFont = False
        end
        object frxDBDataset1ID_SEQUENCIA: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frxDBDataset1ID_CLIENTE: TfrxMemoView
          Align = baWidth
          Left = 128.504020000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_CLIENTE"]')
          ParentFont = False
        end
        object frxDBDataset1NOME: TfrxMemoView
          Align = baWidth
          Left = 207.874150000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."NOME"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_PARCELA: TfrxMemoView
          Align = baWidth
          Left = 389.291590000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_PARCELA"]')
          ParentFont = False
        end
        object frxDBDataset1DT_VENCIMENTO: TfrxMemoView
          Align = baWidth
          Left = 502.677490000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object frxDBDataset1STATUS: TfrxMemoView
          Align = baWidth
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."STATUS"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object nome: TfrxMemoView
          Align = baWidth
          Left = 94.488250000000000000
          Top = 15.118120000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nome]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baWidth
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Emitido por:')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Align = baWidth
          Left = 287.244280000000000000
          Top = 15.118120000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          Align = baWidth
          Left = 370.393940000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Align = baWidth
          Left = 449.764070000000000000
          Top = 15.118120000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 642.520100000000000000
          Top = 15.118120000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Pag:')
          ParentFont = False
        end
        object AReceber: TfrxMemoView
          Left = 502.677490000000000000
          Top = 15.118120000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."TOTAL_PAGAR">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
end

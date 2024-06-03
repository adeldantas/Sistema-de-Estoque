inherited Frm_pesq_Compra_Forma_Pgto: TFrm_pesq_Compra_Forma_Pgto
  Caption = 'PESQUISA COMPRAS POR FORMAS DE PAGAMENTO'
  ExplicitWidth = 1138
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Visible = False
    end
    inherited lb_nome: TLabel
      Visible = False
    end
    inherited lb_inicio: TLabel
      Left = 16
      ExplicitLeft = 16
    end
    inherited lb_fim: TLabel
      Left = 152
      ExplicitLeft = 152
    end
    inherited cb_chave_pesquisa: TComboBox
      Visible = False
    end
    inherited ed_nome: TEdit
      Visible = False
    end
    inherited mk_inicio: TMaskEdit
      Left = 8
      ExplicitLeft = 8
    end
    inherited mk_fim: TMaskEdit
      Left = 152
      ExplicitLeft = 152
    end
    inherited bt_Pesquisa: TBitBtn
      Left = 296
      OnClick = bt_PesquisaClick
      ExplicitLeft = 296
    end
    inherited bt_Transferir: TBitBtn
      Left = 408
      Visible = False
      ExplicitLeft = 408
    end
    inherited bt_Imprimir: TBitBtn
      Left = 526
      OnClick = bt_ImprimirClick
      ExplicitLeft = 526
    end
  end
  inherited DBGrid1: TDBGrid
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'QTDE_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_COMPRA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORMA_PGTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    object lb_valor_compra: TLabel [1]
      Left = 376
      Top = 16
      Width = 136
      Height = 19
      Caption = 'lb_valor_compra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT COUNT(A.ID_COMPRA) AS QTDE_COMPRA,'
      '       SUM(A.VALOR) AS VALOR_COMPRA,'
      '       A.ID_FORMA_PGTO,'
      '       B.DESCRICAO'
      '    FROM COMPRA A'
      'INNER JOIN FORMA_PGTO B ON B.ID_FORMA_PGTO = A.ID_FORMA_PGTO'
      'GROUP BY A.ID_FORMA_PGTO, B.DESCRICAO'
      'ORDER BY A.ID_FORMA_PGTO, B.DESCRICAO')
    object Q_pesq_padraoQTDE_COMPRA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE_COMPRA'
      Origin = 'QTDE_COMPRA'
      ProviderFlags = []
      ReadOnly = True
    end
    object Q_pesq_padraoVALOR_COMPRA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      Required = True
    end
    object Q_pesq_padraoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited REL_pesq_padrao: TfrxReport
    ReportOptions.CreateDate = 43958.675527430500000000
    ReportOptions.LastChange = 43985.655068368050000000
    Datasets = <
      item
        DataSet = DatSET_pesq_padrao
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' Data'
        Value = Null
      end
      item
        Name = 'Data_ini'
        Value = Null
      end
      item
        Name = 'Data_fim'
        Value = Null
      end
      item
        Name = 'nome'
        Value = Null
      end
      item
        Name = 'Qtde'
        Value = Null
      end
      item
        Name = 'Valor_compra'
        Value = Null
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
        Height = 94.488250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          Left = 81.259895000000000000
          Top = 3.779530000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE COMPRAS AGRUPADAS POR FORMA DE PAGAMENTO')
          ParentFont = False
        end
        object Data_ini: TfrxMemoView
          Left = 166.299320000000000000
          Top = 60.472480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_ini]')
          ParentFont = False
        end
        object Data_fim: TfrxMemoView
          Left = 400.630180000000000000
          Top = 60.472480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Data_fim]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 268.346630000000000000
          Top = 34.015770000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No Per'#237'odo de:')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 718.110700000000000000
          Height = 94.488250000000000000
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtde de compras:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 124.724490000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Valores de compras:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 328.819110000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Formas de pagamento:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = DatSET_pesq_padrao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1QTDE_COMPRA: TfrxMemoView
          Align = baWidth
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE_COMPRA'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."QTDE_COMPRA"]')
          ParentFont = False
        end
        object frxDBDataset1VALOR_COMPRA: TfrxMemoView
          Align = baWidth
          Left = 120.944960000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_COMPRA'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."VALOR_COMPRA"]')
          ParentFont = False
        end
        object frxDBDataset1ID_FORMA_PGTO: TfrxMemoView
          Align = baWidth
          Left = 321.260050000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_FORMA_PGTO'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."ID_FORMA_PGTO"]')
          ParentFont = False
        end
        object frxDBDataset1DESCRICAO: TfrxMemoView
          Align = baWidth
          Left = 400.630180000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = DatSET_pesq_padrao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."DESCRICAO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        object nome: TfrxMemoView
          Align = baWidth
          Left = 94.488250000000000000
          Top = 37.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[nome]')
          ParentFont = False
        end
        object Qtde: TfrxMemoView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Qtde]')
          ParentFont = False
        end
        object Valor_compra: TfrxMemoView
          Align = baWidth
          Left = 117.165430000000000000
          Top = 3.779530000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Valor_compra]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baWidth
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 222.992270000000000000
          Top = 37.795300000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
          Left = 302.362400000000000000
          Top = 37.795300000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
      end
      object Chart1: TfrxChartView
        Left = 11.338590000000000000
        Top = 377.953000000000000000
        Width = 691.653990000000000000
        Height = 283.464750000000000000
        HighlightColor = clBlack
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Chart = {
          5450463006544368617274054368617274044C656674020003546F7002000557
          696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
          697369626C65080B4178697356697369626C65080D4672616D652E5669736962
          6C6508175669657733444F7074696F6E732E456C65766174696F6E033B011856
          69657733444F7074696F6E732E4F7274686F676F6E616C08195669657733444F
          7074696F6E732E50657273706563746976650200165669657733444F7074696F
          6E732E526F746174696F6E0368010B56696577334457616C6C73080A42657665
          6C4F75746572070662764E6F6E6505436F6C6F720707636C57686974650D4465
          6661756C7443616E766173060E54474449506C757343616E76617311436F6C6F
          7250616C65747465496E646578020D0000}
        ChartElevation = 315
        SeriesData = <
          item
            InheritedName = 'TfrxSeriesItem2'
            DataType = dtDBData
            DataBand = REL_pesq_padrao.MasterData1
            DataSet = DatSET_pesq_padrao
            DataSetName = 'frxDBDataset1'
            SortOrder = soDescending
            TopN = 8
            XType = xtText
            Source1 = 'frxDBDataset1."DESCRICAO"'
            Source2 = 'frxDBDataset1."VALOR_COMPRA"'
            XSource = 'frxDBDataset1."DESCRICAO"'
            YSource = 'frxDBDataset1."VALOR_COMPRA"'
          end>
      end
    end
  end
  object frxChartObject1: TfrxChartObject
    Left = 904
    Top = 360
  end
end
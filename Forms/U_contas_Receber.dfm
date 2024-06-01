inherited Frm_Conta_Receber: TFrm_Conta_Receber
  Caption = 'FORMUL'#193'RIO DE RECEBIMENTOS DE CONTAS/PARCELAS'
  ClientHeight = 390
  ExplicitLeft = -38
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 50
    Top = 72
    Width = 39
    Height = 13
    Caption = 'VENDA:'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 50
    Top = 112
    Width = 67
    Height = 13
    Caption = 'ID_CLIENTE:'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 190
    Top = 115
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 622
    Top = 112
    Width = 23
    Height = 13
    Caption = 'CPF:'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 27
    Top = 215
    Width = 65
    Height = 13
    Caption = 'SEQUENCIA:'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 166
    Top = 216
    Width = 97
    Height = 13
    Caption = 'VALOR_PARCELA:'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 362
    Top = 215
    Width = 73
    Height = 13
    Caption = 'VENCIMENTO:'
    FocusControl = DBEdit7
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel [7]
    Left = 500
    Top = 216
    Width = 72
    Height = 13
    Caption = 'PAGAMENTO:'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 640
    Top = 216
    Width = 49
    Height = 13
    Caption = 'ATRASO:'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 23
    Top = 261
    Width = 40
    Height = 13
    Caption = 'JUROS:'
    FocusControl = DBEdit10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel [10]
    Left = 166
    Top = 261
    Width = 60
    Height = 13
    Caption = 'VL_JUROS:'
    FocusControl = DBEdit11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [11]
    Left = 360
    Top = 261
    Width = 85
    Height = 13
    Caption = 'TOTAL_PAGAR:'
    FocusControl = DBEdit12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel [12]
    Left = 639
    Top = 261
    Width = 47
    Height = 13
    Caption = 'STATUS:'
    FocusControl = DBEdit13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    inherited bt_novo: TBitBtn
      Left = 16
      Top = 4
      Visible = False
      ExplicitLeft = 16
      ExplicitTop = 4
    end
    inherited bt_Deletar: TBitBtn
      Left = 114
      Top = 4
      Visible = False
      ExplicitLeft = 114
      ExplicitTop = 4
    end
    inherited bt_Editar: TBitBtn
      Left = 212
      ExplicitLeft = 212
    end
    inherited bt_Gravar: TBitBtn
      Left = 410
      Top = 4
      Visible = False
      ExplicitLeft = 410
      ExplicitTop = 4
    end
    inherited bt_Cancelar: TBitBtn
      Left = 310
      ExplicitLeft = 310
    end
    inherited bt_Atualizar: TBitBtn
      Left = 508
      Top = 4
      ExplicitLeft = 508
      ExplicitTop = 4
    end
    inherited bt_Pesquisar: TBitBtn
      Left = 606
      Top = 4
      OnClick = bt_PesquisarClick
      ExplicitLeft = 606
      ExplicitTop = 4
    end
    inherited bt_Sair: TBitBtn
      Left = 704
      Top = 4
      ExplicitLeft = 704
      ExplicitTop = 4
    end
  end
  inherited Panel2: TPanel
    Top = 338
    ExplicitTop = 338
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object RadioGroup1: TRadioGroup [15]
    Left = 8
    Top = 55
    Width = 809
    Height = 122
    Caption = 'DADOS DA VENDA:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit1: TDBEdit [16]
    Left = 50
    Top = 88
    Width = 134
    Height = 21
    DataField = 'ID_VENDA'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit2: TDBEdit [17]
    Left = 50
    Top = 128
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit3: TDBEdit [18]
    Left = 190
    Top = 128
    Width = 426
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit4: TDBEdit [19]
    Left = 622
    Top = 128
    Width = 174
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object RadioGroup2: TRadioGroup [20]
    Left = 8
    Top = 183
    Width = 809
    Height = 154
    Caption = 'DADOS DAS PARCELAS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit5: TDBEdit [21]
    Left = 26
    Top = 232
    Width = 134
    Height = 21
    DataField = 'ID_SEQUENCIA'
    DataSource = ds_Receber
    TabOrder = 8
  end
  object DBEdit6: TDBEdit [22]
    Left = 166
    Top = 234
    Width = 181
    Height = 21
    DataField = 'VALOR_PARCELA'
    DataSource = ds_Receber
    TabOrder = 9
  end
  object DBEdit7: TDBEdit [23]
    Left = 360
    Top = 232
    Width = 134
    Height = 21
    DataField = 'DT_VENCIMENTO'
    DataSource = ds_Receber
    TabOrder = 10
  end
  object DBEdit8: TDBEdit [24]
    Left = 500
    Top = 232
    Width = 134
    Height = 21
    DataField = 'DT_PAGAMENTO'
    DataSource = ds_Receber
    TabOrder = 11
    OnExit = DBEdit8Exit
  end
  object DBEdit9: TDBEdit [25]
    Left = 640
    Top = 232
    Width = 134
    Height = 21
    DataField = 'ATRASO'
    DataSource = ds_Receber
    TabOrder = 12
  end
  object DBEdit10: TDBEdit [26]
    Left = 26
    Top = 277
    Width = 134
    Height = 21
    DataField = 'JUROS'
    DataSource = ds_Receber
    TabOrder = 13
    OnExit = DBEdit10Exit
  end
  object DBEdit11: TDBEdit [27]
    Left = 166
    Top = 277
    Width = 181
    Height = 21
    DataField = 'VL_JUROS'
    DataSource = ds_Receber
    TabOrder = 14
  end
  object DBEdit12: TDBEdit [28]
    Left = 360
    Top = 277
    Width = 273
    Height = 21
    DataField = 'TOTAL_PAGAR'
    DataSource = ds_Receber
    TabOrder = 15
  end
  object DBEdit13: TDBEdit [29]
    Left = 639
    Top = 277
    Width = 135
    Height = 21
    DataField = 'STATUS'
    DataSource = ds_Receber
    TabOrder = 16
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT'
      '     A.ID_VENDA,'
      '     A.ID_CLIENTE,'
      '     B.NOME,'
      '     B.CPF'
      '  FROM VENDA A'
      '  INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE'
      '  ORDER BY A.ID_VENDA')
    Left = 792
    Top = 72
    object Q_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
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
    object Q_padraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
  end
  inherited ds_padrao: TDataSource
    Left = 792
    Top = 120
  end
  object Q_receber: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = ds_padrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT '
      ' ID_SEQUENCIA,'
      ' ID_VENDA,'
      ' VALOR_PARCELA,'
      ' DT_VENCIMENTO,'
      ' DT_PAGAMENTO,'
      ' ATRASO,'
      ' JUROS,'
      ' VL_JUROS,'
      ' TOTAL_PAGAR, '
      ' STATUS'
      'FROM CONTAS_RECEBER'
      'WHERE ID_VENDA=:ID_VENDA'
      'ORDER BY ID_VENDA')
    Left = 792
    Top = 176
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 310
      end>
    object Q_receberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_receberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_receberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_receberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_receberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
      EditMask = '!99/99/0000;1;_'
    end
    object Q_receberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_receberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_receberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_receberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_receberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_Receber: TDataSource
    DataSet = Q_receber
    Left = 792
    Top = 232
  end
  object Recibo: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43993.851244016200000000
    ReportOptions.LastChange = 43993.911773831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 696
    Top = 72
    Datasets = <
      item
        DataSet = frx_Empresa
        DataSetName = 'frx_Empresa'
      end
      item
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
      end
      item
        DataSet = frx_Receber
        DataSetName = 'frx_Receber'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frx_Empresa
        DataSetName = 'frx_Empresa'
        RowCount = 0
        object frx_EmpresaN_FANTASIA: TfrxMemoView
          Left = 211.653680000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object frx_EmpresaENDERECO: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."ENDERECO"]')
          ParentFont = False
        end
        object frx_EmpresaNUMERO: TfrxMemoView
          Left = 616.063390000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."NUMERO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 143.622140000000000000
          Top = 22.677180000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 166.299320000000000000
          Top = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object frx_EmpresaBAIRRO: TfrxMemoView
          Left = 215.433210000000000000
          Top = 45.354360000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Top = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object frx_EmpresaCIDADE: TfrxMemoView
          Left = 215.433210000000000000
          Top = 68.031540000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."CIDADE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 619.842920000000000000
          Top = 67.031540000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object frx_EmpresaUF: TfrxMemoView
          Left = 657.638220000000000000
          Top = 67.031540000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."UF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 585.827150000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 154.960730000000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object frx_EmpresaCEP: TfrxMemoView
          Left = 215.433210000000000000
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."CEP"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 317.480520000000000000
          Top = 90.708720000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object frx_EmpresaTELEFONE: TfrxMemoView
          Left = 385.512060000000000000
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."TELEFONE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 502.457020000000000000
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object frx_EmpresaCNPJ: TfrxMemoView
          Left = 544.252320000000000000
          Top = 90.708720000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."CNPJ"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Width = 718.110700000000000000
          Height = 124.724490000000000000
          DataField = 'LOGO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          Top = 132.283550000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO DE PARCELAS')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object frx_padraoID_VENDA: TfrxMemoView
          Align = baWidth
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDA:')
          ParentFont = False
        end
        object frx_padraoID_CLIENTE: TfrxMemoView
          Align = baWidth
          Left = 102.047310000000000000
          Top = 26.456710000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object frx_padraoNOME: TfrxMemoView
          Align = baWidth
          Left = 219.212740000000000000
          Top = 26.456710000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object frx_padraoCPF: TfrxMemoView
          Align = baWidth
          Left = 514.016080000000000000
          Top = 26.456710000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          Left = 102.047310000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID_CLIENTE:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 294.803340000000000000
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
        object Memo14: TfrxMemoView
          Align = baWidth
          Left = 514.016080000000000000
          Top = 7.559060000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frx_Receber
        DataSetName = 'frx_Receber'
        RowCount = 0
        object frx_ReceberID_SEQUENCIA: TfrxMemoView
          Align = baWidth
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frx_ReceberVALOR_PARCELA: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."VALOR_PARCELA"]')
          ParentFont = False
        end
        object frx_ReceberDT_VENCIMENTO: TfrxMemoView
          Align = baWidth
          Left = 230.551330000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object frx_ReceberDT_PAGAMENTO: TfrxMemoView
          Align = baWidth
          Left = 359.055350000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DT_PAGAMENTO'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."DT_PAGAMENTO"]')
          ParentFont = False
        end
        object frx_ReceberTOTAL_PAGAR: TfrxMemoView
          Align = baWidth
          Left = 468.661720000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_PAGAR'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_Receber."TOTAL_PAGAR"]')
          ParentFont = False
        end
        object frx_ReceberSTATUS: TfrxMemoView
          Align = baWidth
          Left = 600.945270000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."STATUS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR PARCELA:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baWidth
          Left = 230.551330000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          Left = 359.055350000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PGTO:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baWidth
          Left = 600.945270000000000000
          Top = 0.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baWidth
          Left = 468.661720000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL PAGO:')
          ParentFont = False
        end
        object frx_padraoNOME1: TfrxMemoView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 79.370130000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 37.795300000000000000
          Top = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Ass:____________________________________________')
        end
        object Date: TfrxMemoView
          Left = 461.102660000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          Left = 544.252320000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo22: TfrxMemoView
          Left = 661.417750000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '1'#170' via')
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        Height = 173.858380000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        DataSet = frx_Empresa
        DataSetName = 'frx_Empresa'
        RowCount = 0
        object Memo23: TfrxMemoView
          Left = 222.992270000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 222.992270000000000000
          Top = 30.236240000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 154.960730000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 154.960730000000000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 177.637910000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 226.771800000000000000
          Top = 52.913420000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 166.299320000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."CIDADE"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 631.181510000000000000
          Top = 74.590600000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 166.299320000000000000
          Top = 98.267780000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 226.771800000000000000
          Top = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."CEP"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 328.819110000000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 396.850650000000000000
          Top = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."TELEFONE"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 513.795610000000000000
          Top = 98.267780000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 555.590910000000000000
          Top = 98.267780000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frx_Empresa."CNPJ"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baWidth
          Top = 139.842610000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO DE PARCELAS')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Width = 718.110700000000000000
          Height = 128.504020000000000000
          DataField = 'LOGO'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object Memo39: TfrxMemoView
          Align = baWidth
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baWidth
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDA:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Align = baWidth
          Left = 102.047310000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Align = baWidth
          Left = 219.212740000000000000
          Top = 18.897650000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Align = baWidth
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 219.212740000000000000
          Width = 294.803340000000000000
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
        object Memo45: TfrxMemoView
          Align = baWidth
          Left = 102.047310000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID_CLIENTE:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baWidth
          Left = 514.016080000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 132.283550000000000000
        Top = 763.465060000000000000
        Width = 718.110700000000000000
        DataSet = frx_Receber
        DataSetName = 'frx_Receber'
        RowCount = 0
        object Memo47: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR PARCELA:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baWidth
          Left = 230.551330000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baWidth
          Left = 359.055350000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PGTO:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 468.661720000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL PAGO:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Align = baWidth
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Align = baWidth
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."VALOR_PARCELA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          Align = baWidth
          Left = 230.551330000000000000
          Top = 18.897650000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Align = baWidth
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DT_PAGAMENTO'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."DT_PAGAMENTO"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Align = baWidth
          Left = 468.661720000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_PAGAR'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_Receber."TOTAL_PAGAR"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          Align = baWidth
          Left = 600.945270000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frx_Receber
          DataSetName = 'frx_Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_Receber."STATUS"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 26.456710000000000000
          Top = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Ass:____________________________________________')
        end
        object Memo61: TfrxMemoView
          Left = 449.764070000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo62: TfrxMemoView
          Left = 532.913730000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo63: TfrxMemoView
          Left = 650.079160000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '2'#170' via')
        end
        object frx_EmpresaRAZAO_SOCIAL: TfrxMemoView
          Top = 49.133890000000000000
          Width = 714.331170000000000000
          Height = 83.149660000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frx_Empresa
          DataSetName = 'frx_Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_Empresa."RAZAO_SOCIAL"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo64: TfrxMemoView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '-------------------------------')
        end
      end
    end
  end
  object frx_padrao: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_padrao'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    Left = 608
    Top = 72
  end
  object frx_Receber: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_Receber'
    CloseDataSource = False
    DataSet = Q_receber
    BCDToCurrency = False
    Left = 528
    Top = 72
  end
  object frx_Empresa: TfrxDBDataset
    UserName = 'frx_Empresa'
    CloseDataSource = False
    DataSet = Q_empresa
    BCDToCurrency = False
    Left = 448
    Top = 72
  end
  object Q_empresa: TFDQuery
    Connection = DM.conexao
    SQL.Strings = (
      'SELECT  ID_EMPRESA,'
      '        RAZAO_SOCIAL,'
      '        N_FANTASIA,'
      '        ENDERECO,'
      '        NUMERO,'
      '        BAIRRO,'
      '        CIDADE,'
      '        UF,'
      '        CEP,'
      '        TELEFONE,'
      '        CNPJ,'
      '        EMAIL,'
      '        LOGO,'
      '        CADASTRO'
      '        FROM EMPRESA')
    Left = 784
    Top = 288
    object Q_empresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_empresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_empresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Q_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_empresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_empresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object Q_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object Q_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
    end
    object Q_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_empresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object Q_empresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_empresa: TDataSource
    Left = 736
    Top = 288
  end
end

inherited Frm_usuario: TFrm_usuario
  Caption = 'CADASTRO DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    ExplicitTop = 275
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited DB_tipo: TDBComboBox
    DataField = 'TIPO'
    DataSource = DS_padrao
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    inherited Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      ProviderFlags = [pfInWhere, pfInKey]
      Required = False
    end
  end
end

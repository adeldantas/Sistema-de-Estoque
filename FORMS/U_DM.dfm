object DM: TDM
  OldCreateOrder = False
  Height = 316
  Width = 575
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Sistema-de-Estoque\EXE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 56
    Top = 112
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 280
    Top = 56
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 312
    Top = 128
  end
end

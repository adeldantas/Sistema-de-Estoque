inherited Fm_Restore: TFm_Restore
  Caption = 'FORMUL'#193'RIO DE RESTAURA'#199#195'O DO BACKUP'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Width = 238
    Caption = 'LOCAL ONDE SER'#193' SALVO A RESTAURA'#199#195'O:'
    ExplicitWidth = 238
  end
  inherited Label2: TLabel
    Width = 189
    Caption = 'LOCAL ONDE FOI SALVO O BACKUP:'
    ExplicitWidth = 189
  end
  inherited Panel1: TPanel
    inherited bt_backup: TBitBtn
      Caption = '&Restore'
      OnClick = bt_backupClick
    end
  end
end

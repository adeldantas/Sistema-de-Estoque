inherited Frm_Empresa: TFrm_Empresa
  Caption = 'Frm_Empresa'
  ClientHeight = 461
  ExplicitLeft = -55
  ExplicitTop = -51
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited Bevel1: TBevel
    Width = 828
    Height = 346
    ExplicitWidth = 828
    ExplicitHeight = 346
  end
  object Label1: TLabel [1]
    Left = 40
    Top = 64
    Width = 63
    Height = 13
    Caption = 'ID_EMPRESA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [2]
    Left = 40
    Top = 104
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = DB_razao_social
  end
  object Label3: TLabel [3]
    Left = 40
    Top = 144
    Width = 63
    Height = 13
    Caption = 'N_FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [4]
    Left = 40
    Top = 184
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [5]
    Left = 595
    Top = 184
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [6]
    Left = 40
    Top = 224
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [7]
    Left = 40
    Top = 264
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [8]
    Left = 596
    Top = 264
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [9]
    Left = 253
    Top = 304
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [10]
    Left = 474
    Top = 304
    Width = 25
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [11]
    Left = 40
    Top = 344
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [12]
    Left = 180
    Top = 64
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  object Label13: TLabel [13]
    Left = 40
    Top = 305
    Width = 19
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit13
  end
  object Label14: TLabel [14]
    Left = 670
    Top = 104
    Width = 28
    Height = 13
    Caption = 'LOGO'
    FocusControl = DBImage1
  end
  inherited Panel1: TPanel
    TabOrder = 11
  end
  inherited Panel2: TPanel
    Top = 409
    TabOrder = 12
    ExplicitTop = 649
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [17]
    Left = 40
    Top = 80
    Width = 134
    Height = 21
    DataField = 'ID_EMPRESA'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DB_razao_social: TDBEdit [18]
    Left = 40
    Top = 120
    Width = 600
    Height = 21
    DataField = 'RAZAO_SOCIAL'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DBEdit3: TDBEdit [19]
    Left = 40
    Top = 160
    Width = 600
    Height = 21
    DataField = 'N_FANTASIA'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit4: TDBEdit [20]
    Left = 40
    Top = 200
    Width = 549
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit5: TDBEdit [21]
    Left = 595
    Top = 200
    Width = 45
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit6: TDBEdit [22]
    Left = 40
    Top = 240
    Width = 598
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit7: TDBEdit [23]
    Left = 40
    Top = 280
    Width = 550
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit8: TDBEdit [24]
    Left = 596
    Top = 280
    Width = 44
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit9: TDBEdit [25]
    Left = 253
    Top = 320
    Width = 204
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [26]
    Left = 474
    Top = 320
    Width = 166
    Height = 21
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [27]
    Left = 40
    Top = 360
    Width = 600
    Height = 21
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DB_cadastro: TDBEdit [28]
    Left = 180
    Top = 80
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 14
  end
  object DBEdit13: TDBEdit [29]
    Left = 40
    Top = 320
    Width = 195
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBImage1: TDBImage [30]
    Left = 670
    Top = 120
    Width = 105
    Height = 105
    DataField = 'LOGO'
    DataSource = ds_padrao
    TabOrder = 15
  end
  object BT_foto: TBitBtn [31]
    Left = 672
    Top = 240
    Width = 75
    Height = 39
    Caption = '&Foto'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      20000000000000100000C40E0000C40E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000216530B2E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A3F0018245C16B5316822F51F5F12380000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001348074326601AE537702CFF376D2AFF316821E31C5E
      091B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000144B0A662B6922F83A7732FF39742FFF38712DFF376E2AFF2E68
      20C61C5500090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000318500D8930732BFD3B7F37FF3B7C35FF3A7833FF397530FF38722EFF376F
      2BFE2B661C9F0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000002E000B1B55
      12AA367E35FE3D863DFF3C833BFF3C8038FF3B7C36FF3A7933FF397631FF3973
      2EFF376F2BFE28661A7200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000A3F00181E5D17C73B89
      3EFF3F8D43FF3E8A40FF3D873EFF3D843BFF3C8139FF3B7D37FF3A7A34FF3A77
      32FF39742FFF356F29FA23641547000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001145052C23671FDE3F9347FF4194
      48FF409146FF3F8E43FF3E8B41FF3E873FFF3D843CFF3C813AFF3B7E37FF3B7B
      35FF3A7832FF397530FF336F27EC215D14260000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000012480746297329EE429C4EFF429A4DFF4297
      4BFF419549FF409247FF3F8F44FF3F8C42FF388138FF27671FFF3C823AFF3C7F
      38FF3B7C36FF3A7933FF397631FF316D25D40F5F001000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000144B0A66308135F844A455FF44A153FF439E51FF429B
      4EFF42984CFF41954AFF409347FF378439FF18500EFF134508FF296A22FF3C83
      3BFF3C8039FF3B7D36FF3A7A34FF397731FF2E6C22B100550003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003124507881D5B17FE45A858FF46A858FF45A556FF44A254FF439F
      51FF439C4FFF42994DFF37883BEF164C0BFC134508FF134508FF134708FF3074
      2CFF3D843CFF3C813AFF3B7E37FF3A7B35FF397732FF2A6B1E85000000000000
      0000000000000000000000000000000000000000000000000000000000000033
      000A124507AA124408FE134508FF287229FF46AB5BFF46A959FF45A657FF44A3
      54FF44A052FF388C3EDD1F63122911430784134508FF134508FF134508FF154A
      0AFF367D34FF3D853DFF3C823AFF3B7F38FF3B7C35FF387730FC28671C590000
      0000000000000000000000000000000000000000000000000000000000000F3F
      0010124407D7134508FF134508FF134508FF308337FF47AC5CFF46AA5AFF45A7
      57FF368D3DCF1C5E091B0000000000000003114307AD134508FF134508FF1345
      08FF19510FFF3A843BFF3D863DFF3C833BFF3C8039FF3B7D36FF36762FF32364
      1433000000000000000000000000000000000000000000000000000000000000
      00000D410627124407EB134508FF134508FF144809FF389345FF46AD5CFF358C
      3CBE0F5A00110000000000000000000000001236000E124407CF134508FF1345
      08FF134508FF1E5B16FF3D893FFF3D873EFF3D843CFF3C8139FF3B7E37FF3375
      2CDF155F0A180000000000000000000000000000000000000000000000000000
      00000000000012430744124407F8134508FF134508FF164D0DFE2E8231AA0055
      000900000000000000000000000000000000000000000F450721124407E81345
      08FF134508FF134508FF25661FFF3E8B41FF3E883FFF3D853DFF3C823AFF3B7F
      38FF307228C10048000700000000000000000000000000000000000000000000
      0000000000000000000011450767124407FD114407E31042055C000000020000
      00000000000000000000000000000000000000000000000000001041043E1245
      07F7134508FF134508FF134608FF2D732AFF3F8C42FF3E8940FF3D863DFF3C83
      3BFF3B7F38FF2D6F249900000001000000000000000000000000000000000000
      0000000000000000000000000000124506551248000E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000001144
      0764124407FD134508FF134508FF144809FF347E34FF3F8D43FF3E8A40FF3D87
      3EFF3D843CFF3A7F37FE286D216B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001143078F134408FE134508FF134508FF174D0CFF3A883DFF3F8E44FF3E8B
      41FF3E883FFF3D853CFF397E35F826681B420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000003F0004124406B7134508FF134508FF134508FF1B5612FF3E8E43FF3F8F
      44FF3F8C42FF3E8940FF3D863DFF33782DE40055000900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000F3C0011134507D6134508FF134508FF134508FF21611BFF4092
      47FF409045FF3F8D43FF3A863BFB276D1C5B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C3F0628124507EC134508FF134508FF134508FF296F
      26FF419448FF3C8C41FC28702066000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000011430748124407F9134508FF134508FF1346
      08FF2F792EFD2874247000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001244066F124407FE124407F51144
      07AC1148064A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000011045064D0C3F00140000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 16
    OnClick = BT_fotoClick
  end
  object bt_clear: TBitBtn [32]
    Left = 753
    Top = 240
    Width = 75
    Height = 39
    Caption = '&Apagar'
    Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      20000000000000100000C40E0000C40E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000100000001000000010000000200000003000000030000
      0003000000030000000200000002000000020000000200000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002000000040000
      00080000000C000000130F0F0F20242424312C2C2C393030303F2828283F1919
      193B1010102E070000220000001B0000001800000014000000110000000D0000
      000A000000070000000400000002000000000000000000000000000000000000
      000000000000000000000000000000000003000000093F3F3F2492929267AEAE
      AE9EBDBDBDCAD5D5D5EADBDBDBF7D5D5D5FDC8C8C8FEAAAAAAFE818181FE5E5E
      5EFE4A4A4AFD414141F43E3E3EDE3A3A3AB8343434881414144C0000002C0000
      00220000001A000000130000000C000000040000000000000000000000000000
      000000000000000000010000000870707042AAAAAAB6C3C3C3F9CDCDCDFFD2D2
      D2FFDADADAFFEFEFEFFFEAEAEAFFDBDBDBFFCACACAFFAAAAAAFF828282FF6060
      60FF4B4B4BFF434343FF424242FF454545FF4F4F4FFF626262FC676767CB2C2C
      2C6E0000003B0000002E00000022000000100000000300000000000000000000
      0000000000010000000973737371ABABABFABDBDBDFFC7C7C7FFCDCDCDFFD3D3
      D3FFDBDBDBFFF0F0F0FFEDEDEDFFDDDDDDFFCCCDCDFFADADADFF868686FF6262
      62FF4D4D4DFF444444FF434343FF454545FF4F4F4FFF656565FF878787FF9C9C
      9CFB454545960000004600000036000000240000000C00000001000000000000
      0000000000030000001B858585EFABABABFFBDBDBDFFC7C7C7FFCDCDCDFFC3C3
      C3FFB6B6B6FFBFBFBFFFBFBFBFFFB9B9B9FFB6B6B6FFACACACFF9D9E9EFF8D8D
      8DFF7A7A7AFF696969FF565656FF484848FF4C4C4CFF646464FF878787FFA4A4
      A4FF8A8A8AF10000005E00000039000000310000001800000003000000000000
      0000000000042727272D8A8A8AFDAAAAAAFFA2A2A2FFA1A1A1FFA2A2A2FFB4B4
      B4FFC8C8C8FFCECECEFFCECDCDFFCDCDCDFFCDCDCDFFCCCCCCFFCACACAFFC8C8
      C8FFC5C5C5FFC2C2C2FFBFBFBFFEBABABAFEA7A7A7FE939393FF929291FFA9A9
      A9FFA4A4A4FE121212600000002F000000300000001F00000005000000000000
      00000000000355555530979797FEA7A6A7FFCDCDCDFFD0D0D0FFD2D2D2FFD3D3
      D3FFD3D3D3FFD3D3D3FFD3D2D2FFD1D1D2FFD0D0D0FFCFCFCFFFCDCDCDFFCCCB
      CBFFCACACAFFC7C7C7FFC3C3C3FECECECEF9CFCFCFF2C9C9C9E5BEBEBEDEA8A7
      A8EF999999FF4545455C00000026000000290000001E00000004000000000000
      00000000000176767647919090FFA8A7A7FFBCBCBCFFC4C3C4FFD3D3D2FFD4D4
      D3FFD2D2D2FFD1D1D1FFCFCFCFFFCECDCEFFCCCCCCFFCACACBFFC8C9C9FFC6C7
      C6FFC4C4C4FFC2C2C2FFC0C0C0FECDCDCCF9CFCFCFF1D2D2D2DBD5D5D5BED2D2
      D2A2AEAEAEBB5252527B00000024000000250000001600000002000000000000
      0000000000005A56563BC1C1C0FEBBBABAFFB2B2B1FF9F9F9EFFAEADADFFC0C0
      BEFFC8C7C6FFCBCAC9FFCCCCCBFFCCCCCBFFCDCCCBFFCCCBC9FFCAC9C8FFC6C4
      C4FFBFBEBDFFB8B7B6FFB3B2B1FEBFBFBEF9C7C7C6F0D3D2D2DADADAD9BDDEDE
      DE9FE1E1E18161615D4C0000002A0000001D0000000900000000000000000000
      000000000000645E582BDADAD9C6C1C0BFFDB7B6B5FFA7A6A4FFB4B3B2FFC4C3
      C1FFCBCBC9FFCDCCCAFFCDCCCBFFCDCCCAFFCCCBC9FFC9C8C6FFBFBDBCFFAFAE
      ACFFA1A09FFF9C9B99FF9F9E9CFDB6B5B4F9C8C7C6EFD7D7D5D9DFDEDEBCE3E3
      E19DE1E1E171524E4A3E000000200000000B0000000200000000000000000000
      0000000000007A706632F3F1F089E2E0DC8DCAC7C6C1B4B2B0F0BBB9B8FECCCA
      C7FFD2CCC7FFD4CEC9FFD5D3D2FFD5D3D2FFD4D2D0FFD0CECCFFC5C3C0FFB3B1
      AFFFA7A5A2FFA3A09FFFA6A4A2FDBCBAB8F8CDCBC9EFDAD9D8D4DEDDDB9EE2E0
      DD6BE8E8E84E78736E330000000D000000010000000000000000000000000000
      00000000000090817835FBF9F787F5F1EC6FE5E0DA5BA4948430AFA2984DC2BA
      B47BCD916DE9CD875EFFCB7C4FFFC86D3BFFC77243FFD0BBAEF5C8C4C1EDBDB9
      B6E4B4B0AED4B2AEAABFB6B1ADA8CCC7C39BD6D0CC7FDAD8D363E6E3E05CF2EF
      EC54F8F8F44AA290852C24000007000000000000000000000000000000000000
      0000000000019B8E813BFDFBF789F5E3D581DCAC89BFD6986DEDBD865E59BE7B
      4F63CC7947FECA6F3BFFC86630FFC65E26FFC3591EFFC0551BD4995F3928836A
      4A1F876747208B6C4D21B0977F2AE0D6CC4CEFE6E054F6F0EA58FCF6F356FFF8
      F551FFFBF849AB9B8A2E24240007000000000000000000000000000000000000
      000000000001A8998941FDF9F58CDFB595D4D7A179FFD5986EFFD6976B51D48C
      5B4ECE7A48F7CA703BFAC86730EBC86129DBC45C21D5C3581DD5C55F258EE1B0
      7F1AE1B07F1AEAB78419F7D4B124FBEDE248FBF2E953FCF6ED58FFF9F357FFF8
      F552FFFBF849B0A191313F1F1F08000000000000000000000000000000000000
      000000000002B19F8D48FBF4ED94D9AA84F8D9A37CF3D89E73BBE2A57636F6BB
      881ED384516ADA965F38CE6F3879C65E26FBC2581EFFC1551BFFC45B21AFF6BB
      881EF6BB881EF6BB881EF7CDA224FBEAD849FCF0E457FCF3EB5BFCF6EE5AFFF8
      F253FFFBF44AB6A8953538381C09000000000000000000000000000000000000
      000000000002B7A4944FF3E2D5AADDB18EE7E0B695B0ECC3A245F0BF8624F0BF
      8624F0BF8624DD8E5A44C86730F7C65F27FFC3591EFFC2581EDCE0996032F0BF
      8624F0BF8624F0BF8624F7BD8A23F1C49627F8E6D54AFCF1E65FFCF6EE5CFFF6
      F055FFF8F44BBBAA933955383809000000000000000000000000000000000000
      000055000003BDAB9756F1E0CFB0D9AA85FED8A37CFCE7B89257F2C28B2AF2C2
      8B2AF2C28B2AEDB9852CD4834E5BCB6730A3C45B21D3DA8A5346F2C28B2AF2C2
      8B2AF2C28B2AF2C28B2AF5CDA533F4CCA832F1C28C26F6DECA3FFCF4E95EFFF6
      F056FFF8F44BBFAA943C664C330A000000000000000000000000000000000000
      000055550003C5B29C5DFDF3EB9CDCAF8CF2DDAE8AD3F4D0B148F4BC8932E29F
      6E58D488568ACF7A47A5D27C477DF4C08C31F4BF8A30F4C08C31F4C08C31F4C0
      8C31F4C08C31F4C08C31F7D3AF40F9E6CF5CF8E1C84FF3C5962CF5D7B933FBF5
      EC54FFF8F14CC7AF9740735C2E0B000000000000000000000000000000000000
      00003F3F3F04C7B39C65FDF3EAA1F0D8C4A1F1D6BF89D9A179E0DB9D7190DA94
      637DCE7D4DFFCB733FFFC96832FBD6814D6CF5BF8D38F5BF8D38F5BF8D38F5BF
      8D38F5BF8D38F5BF8D38F7D0AD48F9E4CD61FAE8D768F9EADB64F5D4B836F8D3
      B429FBF4ED49CAB096447F553F0C000000000000000000000000000000000000
      000066663305CFB8A06CFDF2E9A5FBEEE08EDCAD88E5D79E75FFD7976CE0D18A
      5BECCF7E4EFFCB7340FFD17944A4DE935D5FF3BB8B40F3BF8B40F3BF8B40F3BF
      8B40F3BF8B40F3BF8B40F5CFAC50FAE1C867FAE7D46DFCECDE6DFCEFE565FAE0
      CA3AF8D5B325CCB2954689624E0D000000000000000000000000000000000000
      00007F552A06D3BAA274FDF2E8A9FBEDDF93E7C3A5B0D69F76FED7986CD5D18A
      5CFFCF7E4EFBD48450A8F4BB8A48F4BE8C47F4BE8C47F4BE8C47F4BE8C47F4BE
      8C47F4BE8C47F4BE8C47F6D0A858FAE0C66CFAE8D471FAEADA71FCF0E468FCF3
      E85BFAE6D233C49E753D916D480E000000000000000000000000000000000000
      00006D6D4807D5BDA47CFCF1E6AEFBEBDC99F9E3CE84EBC09A86E4AA7A7BE6AB
      7A68EDB48256F5BE8A4FF5BE8A4FF5BE8A4FF5BE8A4FF5BE8A4FF5BE8A4FF5BE
      8A4FF5BE8A4FF5BE8A4FF6D1A95FF8DFC472FAE5CF76FCEBD974FCEEE26AFCF1
      E85CFBF5EB4DCEAF8D4A8866550F000000000000000000000000000000000000
      00007F5F3F08DAC0A783FDF2E5B2FBEBD99EF9E3CD8AF8D5B06EF3BF8B58F3BF
      8B58F3BF8B58F3BF8B58F3BF8B58F3BF8B58F3BF8B58F3BF8B58F3BF8B58F3BF
      8B58F3BF8B58F3BF8B58F5D0A968FADFC178FAE4CD7BFAE9D678FCEEE06CFCF1
      E65DFBF5EE4DD6B79B5296784B11000000000000000000000000000000000000
      00008D715509DAC2A68BFCEFE3B7FBEAD7A3F9E0C990F8D3AF76F4BE8B5FF4BE
      8B5FF4BE8B5FF4BE8B5FF4BE8B5FF4BE8B5FF4BE8B5FF4BE8B5FF4BE8B5FF4BE
      8B5FF4BE8B5FF4BE8B5FF5CFA870F8DCBE7EFAE2CA7FFAE8D57BFCECDE6EFCEE
      E35EFBF5EE4DD8BA9C559B715512000000000000000000000000000000000000
      00008B73450BDDC3A992FCEEE2BBFAE8D6A8F9E0C895F6D2AE7EF5BE8D67F5BE
      8D67F5BE8D67F5BE8A67F5BE8A67F5BE8A67F5BE8D67F5BE8D67F5BE8D67F5BE
      8D67F5BE8D67F5BE8D67F6CFA777F7DABC83F9E1CA83FAE6D47EFCECDC70FCF1
      E65EFBF5EB4DD9B99958A1785D13000000000000000000000000000000000000
      0000947F550CE0C5AB98F3E7DCC7ECE0D3C3EBDED2C2ECDFD0C0EBDCCFC0EDE0
      D5C9EAE0D6D0E7DDD5D6DED7CFDDD3CCC6DEBFB8B3DEA19B95DF827D76DE6A63
      5DDE5F5750DD5E554DD7685E56D5746A61D3827A70CC999188BFB5AEA6AAD0C9
      C18EE8E2DB64DABB9C5BA57F5914000000000000000000000000000000000000
      00009C96962CA29D9CF5CCCBCAFBE3DFDBEAEEE5DCD8F1E4D9CBF4E4D5BEF5E1
      CEB4F4DEC9AFF2DAC3A8F2D8BEA5F0D5BCA1EED1B79EE8CCB19DE0C6AB9ED8BF
      A5A0D1B89FA3C3AB94A7B8A38DADAD9B88B3A9998ABCA89B90C8B0A69ED6BEBA
      B6E7CCCAC9FACDC9C5F0B9B1AC3B000000000000000000000000000000000000
      0000ACACAC28A4A4A3D7938C84DAA69788C0BBA591B1C8AE95A4CEAF919AD6B1
      8E91DCB38B8BE0B48986E3B48782E5B38580E6B4837EE6B5847DE6B4837EE3B1
      8180DDAC8182D5A77D86C79F778BBA977291AD8D6F99A48A71A4A28C78B0A292
      84BFA9A199D7BDBCBCDABBBBBB31000000000000000000000000000000000000
      00000000000000000000D6D6D619BCBCBC41B5B5B561B6B6B677B8B8B88DB9B9
      BB9EBABABAAAB6B6B8B0B5B5B5B7ACAEAEBDA0A1A1BD909090BD7C7C7CBD6B6B
      6BBD626262B85E5E5EB0606061AA6666669F6E6E6E8D7B7B7B7891919162ABAB
      AB43B6B6B61C0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 17
    OnClick = bt_clearClick
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
    Left = 736
    Top = 400
    object Q_padraoID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_padraoN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00.000.000/0000-00;0;_'
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 100
    end
    object Q_padraoLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
  end
  inherited ds_padrao: TDataSource
    Left = 736
    Top = 464
  end
  object OpenDialog1: TOpenDialog
    Left = 632
    Top = 72
  end
end

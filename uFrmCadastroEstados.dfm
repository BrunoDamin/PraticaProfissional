inherited FrmCadastroEstados: TFrmCadastroEstados
  Caption = 'Cadastro Estados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Width = 69
    Caption = 'C'#243'digo Estado'
    ExplicitWidth = 69
  end
  object lbl_NomeEstado: TLabel [3]
    Left = 168
    Top = 13
    Width = 63
    Height = 13
    Caption = 'Nome Estado'
  end
  object lbl_UFEstado: TLabel [4]
    Left = 349
    Top = 13
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object lbl_CodPais: TLabel [5]
    Left = 34
    Top = 69
    Width = 55
    Height = 13
    Caption = 'C'#243'digo Pa'#237's'
  end
  object lbl_NomePais: TLabel [6]
    Left = 168
    Top = 71
    Width = 49
    Height = 13
    Caption = 'Nome Pa'#237's'
  end
  object btn_Pesquisar: TButton
    Left = 349
    Top = 86
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 5
  end
  object edt_NomePais: TEdit
    Left = 168
    Top = 90
    Width = 160
    Height = 21
    TabOrder = 6
  end
  object edt_CodPais: TEdit
    Left = 32
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt_UFEstado: TEdit
    Left = 349
    Top = 32
    Width = 39
    Height = 21
    TabOrder = 8
  end
  object edt_NomeEstado: TEdit
    Left = 168
    Top = 32
    Width = 162
    Height = 21
    TabOrder = 9
    OnExit = edt_NomeEstadoExit
  end
end

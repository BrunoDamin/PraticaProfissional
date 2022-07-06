inherited FrmCadastroCidades: TFrmCadastroCidades
  Caption = 'Cadastro Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbl_Codigo: TLabel
    Width = 69
    Caption = 'C'#243'digo Cidade'
    ExplicitWidth = 69
  end
  object lbl_NomeCidade: TLabel [3]
    Left = 168
    Top = 13
    Width = 63
    Height = 13
    Caption = 'Nome Cidade'
  end
  object lbl_CodEstado: TLabel [4]
    Left = 32
    Top = 61
    Width = 69
    Height = 13
    Caption = 'C'#243'digo Estado'
  end
  object lbl_NomeEstado: TLabel [5]
    Left = 168
    Top = 61
    Width = 63
    Height = 13
    Caption = 'Nome Estado'
  end
  object lbl_Ddd: TLabel [6]
    Left = 350
    Top = 13
    Width = 21
    Height = 13
    Caption = 'DDD'
  end
  object edt_Cidade: TEdit
    Left = 168
    Top = 32
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object edt_NomeEstado: TEdit
    Left = 168
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 6
  end
  object edt_CodEstado: TEdit
    Left = 32
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object edt_Ddd: TEdit
    Left = 350
    Top = 32
    Width = 38
    Height = 21
    TabOrder = 8
  end
  object btn_Pesquisar: TButton
    Left = 350
    Top = 78
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 9
  end
end

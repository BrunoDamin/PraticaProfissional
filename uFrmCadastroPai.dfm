object FrmCadastroPai: TFrmCadastroPai
  Left = 0
  Top = 0
  Caption = 'Cadastro Pai'
  ClientHeight = 363
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object lbl_Codigo: TLabel
    Left = 32
    Top = 13
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object lbl_DataCadastro: TLabel
    Left = 209
    Top = 293
    Width = 70
    Height = 13
    Caption = 'Data Cadastro'
  end
  object lbl_UltimaAlteracao: TLabel
    Left = 310
    Top = 293
    Width = 78
    Height = 13
    Caption = #218'ltima Alterac'#227'o'
  end
  object edt_Codigo: TEdit
    Left = 32
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt_DataCadastro: TEdit
    Left = 209
    Top = 312
    Width = 80
    Height = 21
    TabOrder = 1
  end
  object edt_UltimaAlteracao: TEdit
    Left = 310
    Top = 312
    Width = 78
    Height = 21
    TabOrder = 2
  end
  object btn_Salvar: TButton
    Left = 416
    Top = 310
    Width = 75
    Height = 25
    Caption = '&Salvar'
    TabOrder = 3
    OnClick = btn_SalvarClick
  end
  object btn_Sair: TButton
    Left = 512
    Top = 310
    Width = 75
    Height = 25
    Caption = 'Sai&r'
    TabOrder = 4
  end
end

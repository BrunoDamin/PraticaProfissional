inherited FrmCadastroPaises: TFrmCadastroPaises
  Caption = 'Cadastro Pa'#237'ses'
  ClientWidth = 610
  ExplicitWidth = 626
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_NomePais: TLabel [3]
    Left = 175
    Top = 13
    Width = 49
    Height = 13
    Caption = 'Nome Pa'#237's'
  end
  object lbl_Ddi: TLabel [4]
    Left = 408
    Top = 13
    Width = 18
    Height = 13
    Caption = 'DDI'
  end
  object lbl_Sigla: TLabel [5]
    Left = 344
    Top = 13
    Width = 22
    Height = 13
    Caption = 'Sigla'
  end
  object lbl_Moeda: TLabel [6]
    Left = 472
    Top = 13
    Width = 32
    Height = 13
    Caption = 'Moeda'
  end
  object edt_NomePais: TEdit
    Left = 175
    Top = 32
    Width = 147
    Height = 21
    TabOrder = 5
    OnExit = edt_NomePaisExit
  end
  object edt_Moeda: TEdit
    Left = 472
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 6
  end
  object edt_Ddi: TEdit
    Left = 408
    Top = 32
    Width = 41
    Height = 21
    TabOrder = 7
  end
  object edt_Sigla: TEdit
    Left = 344
    Top = 32
    Width = 44
    Height = 21
    TabOrder = 8
  end
end

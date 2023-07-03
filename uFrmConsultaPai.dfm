object FrmConsultaPai: TFrmConsultaPai
  Left = 0
  Top = 0
  Caption = 'Consulta Pai'
  ClientHeight = 381
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edt_Pesquisar: TEdit
    Left = 32
    Top = 19
    Width = 209
    Height = 21
    TabOrder = 0
  end
  object btn_Incluir: TButton
    Left = 304
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Incluir'
    TabOrder = 1
    OnClick = btn_IncluirClick
  end
  object btn_Alterar: TButton
    Left = 400
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Alterar'
    TabOrder = 2
    OnClick = btn_AlterarClick
  end
  object btn_Excluir: TButton
    Left = 496
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Excluir'
    TabOrder = 3
    OnClick = btn_ExcluirClick
  end
  object btn_Sair: TButton
    Left = 592
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Sair'
    TabOrder = 4
    OnClick = btn_SairClick
  end
  object btn_Pesquisar: TButton
    Left = 264
    Top = 17
    Width = 75
    Height = 25
    Caption = '&Pesquisar'
    TabOrder = 5
    OnClick = btn_PesquisarClick
  end
  object Visualizacao: TListView
    Left = 32
    Top = 64
    Width = 635
    Height = 257
    Columns = <>
    TabOrder = 6
  end
end

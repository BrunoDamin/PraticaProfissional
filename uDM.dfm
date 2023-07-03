object DM: TDM
  OldCreateOrder = False
  Height = 414
  Width = 744
  object FDTrans: TFDTransaction
    Connection = FDBanco
    Left = 128
    Top = 56
  end
  object FDBanco: TFDConnection
    ConnectionName = 'Banco'
    Params.Strings = (
      'Database=C:\pratica\BD2.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    LoginPrompt = False
    Left = 48
    Top = 56
  end
  object QPaises: TFDQuery
    Connection = FDBanco
    Left = 208
    Top = 56
  end
  object DSPaises: TDataSource
    Left = 280
    Top = 56
  end
  object QEstados: TFDQuery
    Connection = FDBanco
    Left = 208
    Top = 120
  end
  object DSEstados: TDataSource
    Left = 280
    Top = 120
  end
  object DSCidades: TDataSource
    Left = 280
    Top = 184
  end
  object QCidades: TFDQuery
    Connection = FDBanco
    Left = 208
    Top = 184
  end
  object QFornecedores: TFDQuery
    Connection = FDBanco
    Left = 200
    Top = 256
  end
  object QFuncionarios: TFDQuery
    Connection = FDBanco
    Left = 400
    Top = 56
  end
  object QClientes: TFDQuery
    Connection = FDBanco
    Left = 400
    Top = 248
  end
  object QMercadorias: TFDQuery
    Connection = FDBanco
    Left = 400
    Top = 120
  end
  object QEntregas: TFDQuery
    Connection = FDBanco
    Left = 400
    Top = 184
  end
  object DSFornecedores: TDataSource
    Left = 280
    Top = 256
  end
  object DSFuncionarios: TDataSource
    Left = 496
    Top = 56
  end
  object DSMercadorias: TDataSource
    Left = 496
    Top = 128
  end
  object DSEntregas: TDataSource
    Left = 496
    Top = 184
  end
  object DSClientes: TDataSource
    Left = 496
    Top = 248
  end
end

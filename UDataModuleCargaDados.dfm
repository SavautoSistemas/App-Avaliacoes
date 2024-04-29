object DataModuleCargaDados: TDataModuleCargaDados
  OldCreateOrder = False
  Height = 436
  Width = 657
  object qLimpaDadosSQLite: TUniQuery
    Connection = DataModuleBancoFB.UniConnectionSQLite
    Left = 216
    Top = 232
  end
  object qInsereDadosSQLite: TUniQuery
    Connection = DataModuleBancoFB.UniConnectionSQLite
    Left = 216
    Top = 304
  end
  object qBuscaDadosMySQL: TUniQuery
    Connection = DataModuleBancoFB.UniConnectionMySQL
    Left = 464
    Top = 216
  end
  object qBuscaFornecedores: TUniQuery
    Connection = DataModuleBancoFB.UniConnectionMySQL
    Left = 448
    Top = 296
  end
end

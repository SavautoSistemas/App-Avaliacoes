object DataModuleBancoFB: TDataModuleBancoFB
  OldCreateOrder = False
  Height = 799
  Width = 848
  object UniConnectionMySQL: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'dbsavautomobile'
    Options.LocalFailover = True
    Username = 'savauto'
    Server = '177.136.202.32'
    Connected = True
    LoginPrompt = False
    OnConnectionLost = UniConnectionMySQLConnectionLost
    Left = 112
    Top = 32
    EncryptedPassword = 'ACFFA7FF8FFFCAFF91FF87FFBBFF8FFF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 112
    Top = 96
  end
  object QBuscaUsuarios: TUniQuery
    Connection = UniConnectionMySQL
    Left = 120
    Top = 160
  end
  object UniQueryInsereUsu: TUniQuery
    Connection = UniConnectionMySQL
    Left = 120
    Top = 216
  end
  object UniConnectionSQLite: TUniConnection
    ProviderName = 'SQLite'
    Database = 'c:\gdb\vistoriamobile.db'
    SpecificOptions.Strings = (
      'SQLite.ConnectMode=cmReadWrite'
      'SQLite.Direct=True')
    Options.LocalFailover = True
    LoginPrompt = False
    OnConnectionLost = UniConnectionSQLiteConnectionLost
    Left = 64
    Top = 456
  end
  object SQLiteUniProvider1: TSQLiteUniProvider
    Left = 64
    Top = 520
  end
  object qBuscaFornecedorSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 192
    Top = 480
  end
  object qBuscaUsuariosSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 328
    Top = 480
  end
  object qBuscaForneSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 456
    Top = 480
  end
  object qBuscaCoresSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 192
    Top = 544
  end
  object qInsereVistoria: TUniQuery
    Connection = UniConnectionMySQL
    Left = 336
    Top = 552
  end
  object qBuscaID: TUniQuery
    Connection = UniConnectionMySQL
    Left = 336
    Top = 616
  end
  object qBuscaIdPreparoSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 584
    Top = 416
  end
  object qInsereItemMecanicaSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 728
    Top = 288
  end
  object qLimpaReparoSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 728
    Top = 344
  end
  object qTotAvariaPlaca: TUniQuery
    Connection = UniConnectionMySQL
    Left = 736
    Top = 232
  end
  object qAtualizaVistoriaSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 752
    Top = 448
  end
  object qAtualizaDadosSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 328
    Top = 416
  end
  object qVistorias: TUniQuery
    Connection = UniConnectionMySQL
    SQL.Strings = (
      
        'select PLACA, DataVistoria, Dt_Termino from tbVistoria order by ' +
        'DataVistoria desc limit 10')
    Left = 589
    Top = 230
    object qVistoriasPLACA: TStringField
      FieldName = 'PLACA'
      Size = 30
    end
    object qVistoriasDataVistoria: TDateTimeField
      FieldName = 'DataVistoria'
    end
    object qVistoriasDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
  end
  object qConferePendencias: TUniQuery
    Connection = UniConnectionMySQL
    Left = 456
    Top = 552
  end
  object qBuscaPendenciasEnvio: TUniQuery
    Connection = UniConnectionMySQL
    SQL.Strings = (
      
        'select DataVistoria, PLACA, Dt_Termino from tbVistoria where Env' +
        'io = 0 order by DataVistoria desc')
    Left = 456
    Top = 616
    object qBuscaPendenciasEnvioDataVistoria: TDateTimeField
      FieldName = 'DataVistoria'
    end
    object qBuscaPendenciasEnvioPLACA: TStringField
      FieldName = 'PLACA'
      Size = 30
    end
    object qBuscaPendenciasEnvioDt_Termino: TDateTimeField
      FieldName = 'Dt_Termino'
    end
  end
  object qEnviaPendencias: TUniQuery
    Connection = UniConnectionMySQL
    Left = 456
    Top = 672
  end
  object qGravaMEISQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 192
    Top = 616
  end
  object qAtuUsuariosMySQL: TUniQuery
    Connection = UniConnectionMySQL
    Left = 272
    Top = 32
  end
  object UniConnectionDBMesclaPlan: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'savautogestao'
    Options.LocalFailover = True
    Username = 'savauto'
    Server = '177.136.202.32'
    Connected = True
    LoginPrompt = False
    OnConnectionLost = UniConnectionDBMesclaPlanConnectionLost
    Left = 592
    Top = 64
    EncryptedPassword = 'ACFFA7FF8FFFCAFF91FF87FFBBFF8FFF'
  end
  object MySQLUniProvider2: TMySQLUniProvider
    Left = 600
    Top = 136
  end
  object qInsereReparoAvaliacao: TUniQuery
    Connection = UniConnectionMySQL
    Left = 264
    Top = 96
  end
  object qLimpaReparoAvaliacao: TUniQuery
    Connection = UniConnectionMySQL
    Left = 256
    Top = 168
  end
  object qValidaPermissoes: TUniQuery
    Connection = UniConnectionMySQL
    Left = 264
    Top = 240
  end
  object qVerificaEnvioAval: TUniQuery
    Connection = UniConnectionMySQL
    SQL.Strings = (
      'select * from tbavaliacoesReparos where enviado is null')
    Left = 568
    Top = 512
  end
  object qBuscaAvalPendentes: TUniQuery
    Connection = UniConnectionMySQL
    SQL.Strings = (
      
        'select distinct PLACA from tbavaliacoesReparos where enviado is ' +
        'null')
    Left = 560
    Top = 344
    object qBuscaAvalPendentesPLACA: TStringField
      FieldName = 'PLACA'
      Size = 30
    end
  end
  object qAtualizaAvaliacaoMySQL: TUniQuery
    Connection = UniConnectionMySQL
    Left = 88
    Top = 296
  end
  object qEnviaAvaliacoes: TUniQuery
    Connection = UniConnectionMySQL
    Left = 440
    Top = 43
  end
  object qLimpaAvaliacoes: TUniQuery
    Connection = UniConnectionMySQL
    Left = 440
    Top = 96
  end
  object qBuscaAvaliacoesPendentes: TUniQuery
    Connection = UniConnectionMySQL
    SQL.Strings = (
      
        'select placa, data_avaliacao, usuario from tbavaliacoes where en' +
        'viado = 0 order by data_avaliacao desc')
    Left = 442
    Top = 157
    object qBuscaAvaliacoesPendentesplaca: TStringField
      FieldName = 'placa'
    end
    object qBuscaAvaliacoesPendentesdata_avaliacao: TDateTimeField
      FieldName = 'data_avaliacao'
    end
    object qBuscaAvaliacoesPendentesusuario: TStringField
      FieldName = 'usuario'
    end
  end
  object qValidaVersao: TUniQuery
    Connection = UniConnectionMySQL
    Left = 440
    Top = 240
  end
  object qLoginAutomaticoSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 72
    Top = 632
  end
  object qManterLogadoSQLite: TUniQuery
    Connection = UniConnectionMySQL
    Left = 72
    Top = 584
  end
  object qBuscaEdicaoAvaliacao: TUniQuery
    Connection = UniConnectionMySQL
    SQL.Strings = (
      'select * from tbavaliacoes')
    Left = 264
    Top = 304
    object qBuscaEdicaoAvaliacaoid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
    end
    object qBuscaEdicaoAvaliacaodata_avaliacao: TDateTimeField
      FieldName = 'data_avaliacao'
    end
    object qBuscaEdicaoAvaliacaoplaca: TStringField
      FieldName = 'placa'
    end
    object qBuscaEdicaoAvaliacaoano: TStringField
      FieldName = 'ano'
      Size = 4
    end
    object qBuscaEdicaoAvaliacaomodelo: TStringField
      FieldName = 'modelo'
      Size = 200
    end
    object qBuscaEdicaoAvaliacaonome_cliente: TStringField
      FieldName = 'nome_cliente'
      Size = 200
    end
    object qBuscaEdicaoAvaliacaotelefone: TStringField
      FieldName = 'telefone'
    end
    object qBuscaEdicaoAvaliacaotipo: TStringField
      FieldName = 'tipo'
    end
    object qBuscaEdicaoAvaliacaoportas: TStringField
      FieldName = 'portas'
      Size = 1
    end
    object qBuscaEdicaoAvaliacaokm: TFloatField
      FieldName = 'km'
    end
    object qBuscaEdicaoAvaliacaocor: TStringField
      FieldName = 'cor'
    end
    object qBuscaEdicaoAvaliacaoopcionais: TStringField
      FieldName = 'opcionais'
    end
    object qBuscaEdicaoAvaliacaototal_avarias: TFloatField
      FieldName = 'total_avarias'
    end
    object qBuscaEdicaoAvaliacaoavaliacao: TFloatField
      FieldName = 'avaliacao'
    end
    object qBuscaEdicaoAvaliacaoenviado: TIntegerField
      FieldName = 'enviado'
    end
    object qBuscaEdicaoAvaliacaodt_enviado: TDateTimeField
      FieldName = 'dt_enviado'
    end
    object qBuscaEdicaoAvaliacaocod_fipe: TStringField
      FieldName = 'cod_fipe'
    end
    object qBuscaEdicaoAvaliacaovlr_fipe: TFloatField
      FieldName = 'vlr_fipe'
    end
    object qBuscaEdicaoAvaliacaousuario: TStringField
      FieldName = 'usuario'
    end
    object qBuscaEdicaoAvaliacaoobs: TStringField
      FieldName = 'obs'
      Size = 1000
    end
    object qBuscaEdicaoAvaliacaocategoria: TStringField
      FieldName = 'categoria'
      Size = 1
    end
  end
  object qAtualizaApp: TUniQuery
    Connection = UniConnectionMySQL
    Left = 440
    Top = 304
  end
  object qBuscaRefFipe: TUniQuery
    Connection = UniConnectionDBMesclaPlan
    SQL.Strings = (
      'select * from tbfiperef')
    Left = 728
    Top = 80
    object qBuscaRefFipeid: TIntegerField
      FieldName = 'id'
    end
    object qBuscaRefFiperef1: TStringField
      FieldName = 'ref1'
      Size = 7
    end
    object qBuscaRefFiperef2: TStringField
      FieldName = 'ref2'
      Size = 7
    end
    object qBuscaRefFiperef3: TStringField
      FieldName = 'ref3'
      Size = 7
    end
    object qBuscaRefFipeprincipal: TStringField
      FieldName = 'principal'
      Size = 7
    end
    object qBuscaRefFiperefAvaliacoes: TStringField
      FieldName = 'refAvaliacoes'
      Size = 7
    end
    object qBuscaRefFipeFipeCompraPorta: TStringField
      FieldName = 'FipeCompraPorta'
      Size = 7
    end
    object qBuscaRefFipeFipeCompraTroca: TStringField
      FieldName = 'FipeCompraTroca'
      Size = 7
    end
    object qBuscaRefFipeFipeVistoria: TStringField
      FieldName = 'FipeVistoria'
      Size = 7
    end
    object qBuscaRefFipeFipeAtendimentos: TStringField
      FieldName = 'FipeAtendimentos'
      Size = 7
    end
    object qBuscaRefFipeFipeCompraBelem: TStringField
      FieldName = 'FipeCompraBelem'
      Size = 10
    end
    object qBuscaRefFipeFipeCompraExterna: TStringField
      FieldName = 'FipeCompraExterna'
      Size = 10
    end
  end
  object qConsultaAvalAtendimento: TUniQuery
    Connection = UniConnectionDBMesclaPlan
    Left = 720
    Top = 144
  end
  object UniConnectionSQLServer: TUniConnection
    ProviderName = 'SQL Server'
    Port = 64549
    Database = 'savauto'
    Username = 'sa'
    Server = '177.136.202.32'
    Left = 728
    Top = 560
    EncryptedPassword = '9EFF91FFC7FFC7FFCAFFCBFFCFFFCFFFDEFF'
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 728
    Top = 616
  end
end

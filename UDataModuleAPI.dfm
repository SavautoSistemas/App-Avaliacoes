object DataModuleAPI: TDataModuleAPI
  OldCreateOrder = False
  Height = 494
  Width = 804
  object RESTFipe: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://177.136.202.32:9000'
    Params = <>
    Left = 56
    Top = 32
  end
  object ReqFipeRefModeloAno: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTFipe
    Params = <>
    Resource = 'fipe'
    Left = 56
    Top = 96
  end
  object ReqFipeParams: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTFipe
    Params = <>
    Resource = 'ref/modelo/ano'
    Left = 56
    Top = 160
  end
  object RESTClientAvaliacoes: TRESTClient
    BaseURL = 'http://177.136.202.32:9000/avaliacoes'
    Params = <>
    Left = 168
    Top = 32
  end
  object ReqAvaliacoes: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientAvaliacoes
    Params = <>
    Left = 168
    Top = 96
  end
  object RESTClientReparos: TRESTClient
    BaseURL = 'http://177.136.202.32:9000/reparos'
    Params = <>
    Left = 280
    Top = 32
  end
  object ReqReparos: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientReparos
    Params = <>
    Left = 280
    Top = 104
  end
  object RESTClientVistorias: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://177.136.202.32:9000'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    Left = 400
    Top = 40
  end
  object ReqVistorias: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientVistorias
    Params = <>
    Resource = 'vistorias'
    Left = 392
    Top = 112
  end
  object RESTClientUsuarios: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://177.136.202.32:9000/usuario'
    Params = <>
    Left = 504
    Top = 48
  end
  object ReqUsuario: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientUsuarios
    Params = <>
    Resource = 'nome/senha'
    Left = 512
    Top = 128
  end
  object RESTClientPost: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://177.136.202.32:9000'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    Left = 600
    Top = 56
  end
  object ReqVistoriaPost: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientPost
    Method = rmPOST
    Params = <>
    Resource = 'vistorias'
    Left = 600
    Top = 128
  end
  object RESTClientFornecedor: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://177.136.202.32:9000'
    Params = <>
    Left = 544
    Top = 224
  end
  object ReqFornecedor: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClientFornecedor
    Params = <>
    Resource = 'fornecedor/teste'
    Left = 552
    Top = 280
  end
end

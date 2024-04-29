unit UDataModuleAPI;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TDataModuleAPI = class(TDataModule)
    RESTFipe: TRESTClient;
    ReqFipeRefModeloAno: TRESTRequest;
    ReqFipeParams: TRESTRequest;
    RESTClientAvaliacoes: TRESTClient;
    ReqAvaliacoes: TRESTRequest;
    RESTClientReparos: TRESTClient;
    ReqReparos: TRESTRequest;
    RESTClientVistorias: TRESTClient;
    ReqVistorias: TRESTRequest;
    RESTClientUsuarios: TRESTClient;
    ReqUsuario: TRESTRequest;
    RESTClientPost: TRESTClient;
    ReqVistoriaPost: TRESTRequest;
    RESTClientFornecedor: TRESTClient;
    ReqFornecedor: TRESTRequest;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleAPI: TDataModuleAPI;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.

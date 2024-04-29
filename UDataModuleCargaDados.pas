unit UDataModuleCargaDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TDataModuleCargaDados = class(TDataModule)
    qLimpaDadosSQLite: TUniQuery;
    qInsereDadosSQLite: TUniQuery;
    qBuscaDadosMySQL: TUniQuery;
    qBuscaFornecedores: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleCargaDados: TDataModuleCargaDados;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB, UFormAtualizaAPp,
  UFormConsultaAvaliacao, UFormNotificacoes, UformNovaAvaliacaoBeta,
  UformNovaVistoriaBeta, UformPrincipalBeta, UFormTeste, UFormVistoriasFeitas,
  UFrameItensCheck, UFrameListNotificacoes, uOpenViewUrl;



{$R *.dfm}

end.

unit UDataModuleBancoFB;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.FMXUI.Wait, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.IBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, Uni, MemDS, DBAccess, UniProvider,
  InterBaseUniProvider, MySQLUniProvider, uDWConstsData, uRESTDWPoolerDB,
  uDWAbout, SQLiteUniProvider, MEMDATA, SQLServerUniProvider;{, SQLiteUniProvider, Data.DbxSqlite, Data.SqlExpr,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs; }

type
  TDataModuleBancoFB = class(TDataModule)
    UniConnectionMySQL: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    QBuscaUsuarios: TUniQuery;
    UniQueryInsereUsu: TUniQuery;
    UniConnectionSQLite: TUniConnection;
    SQLiteUniProvider1: TSQLiteUniProvider;
    qBuscaFornecedorSQLite: TUniQuery;
    qBuscaUsuariosSQLite: TUniQuery;
    qBuscaForneSQLite: TUniQuery;
    qBuscaCoresSQLite: TUniQuery;
    qInsereVistoria: TUniQuery;
    qBuscaID: TUniQuery;
    qBuscaIdPreparoSQLite: TUniQuery;
    qInsereItemMecanicaSQLite: TUniQuery;
    qLimpaReparoSQLite: TUniQuery;
    qTotAvariaPlaca: TUniQuery;
    qAtualizaVistoriaSQLite: TUniQuery;
    qAtualizaDadosSQLite: TUniQuery;
    qVistorias: TUniQuery;
    qConferePendencias: TUniQuery;
    qBuscaPendenciasEnvio: TUniQuery;
    qBuscaPendenciasEnvioDataVistoria: TDateTimeField;
    qBuscaPendenciasEnvioPLACA: TStringField;
    qVistoriasPLACA: TStringField;
    qVistoriasDataVistoria: TDateTimeField;
    qVistoriasDt_Termino: TDateTimeField;
    qBuscaPendenciasEnvioDt_Termino: TDateTimeField;
    qEnviaPendencias: TUniQuery;
    qGravaMEISQLite: TUniQuery;
    qAtuUsuariosMySQL: TUniQuery;
    UniConnectionDBMesclaPlan: TUniConnection;
    MySQLUniProvider2: TMySQLUniProvider;
    qInsereReparoAvaliacao: TUniQuery;
    qLimpaReparoAvaliacao: TUniQuery;
    qValidaPermissoes: TUniQuery;
    qVerificaEnvioAval: TUniQuery;
    qBuscaAvalPendentes: TUniQuery;
    qBuscaAvalPendentesPLACA: TStringField;
    qAtualizaAvaliacaoMySQL: TUniQuery;
    qEnviaAvaliacoes: TUniQuery;
    qLimpaAvaliacoes: TUniQuery;
    qBuscaAvaliacoesPendentes: TUniQuery;
    qBuscaAvaliacoesPendentesplaca: TStringField;
    qBuscaAvaliacoesPendentesdata_avaliacao: TDateTimeField;
    qBuscaAvaliacoesPendentesusuario: TStringField;
    qValidaVersao: TUniQuery;
    qLoginAutomaticoSQLite: TUniQuery;
    qManterLogadoSQLite: TUniQuery;
    qBuscaEdicaoAvaliacao: TUniQuery;
    qBuscaEdicaoAvaliacaoid: TIntegerField;
    qBuscaEdicaoAvaliacaodata_avaliacao: TDateTimeField;
    qBuscaEdicaoAvaliacaoplaca: TStringField;
    qBuscaEdicaoAvaliacaoano: TStringField;
    qBuscaEdicaoAvaliacaomodelo: TStringField;
    qBuscaEdicaoAvaliacaonome_cliente: TStringField;
    qBuscaEdicaoAvaliacaotelefone: TStringField;
    qBuscaEdicaoAvaliacaotipo: TStringField;
    qBuscaEdicaoAvaliacaoportas: TStringField;
    qBuscaEdicaoAvaliacaokm: TFloatField;
    qBuscaEdicaoAvaliacaocor: TStringField;
    qBuscaEdicaoAvaliacaoopcionais: TStringField;
    qBuscaEdicaoAvaliacaototal_avarias: TFloatField;
    qBuscaEdicaoAvaliacaoavaliacao: TFloatField;
    qBuscaEdicaoAvaliacaoenviado: TIntegerField;
    qBuscaEdicaoAvaliacaodt_enviado: TDateTimeField;
    qBuscaEdicaoAvaliacaocod_fipe: TStringField;
    qBuscaEdicaoAvaliacaovlr_fipe: TFloatField;
    qBuscaEdicaoAvaliacaousuario: TStringField;
    qBuscaEdicaoAvaliacaoobs: TStringField;
    qBuscaEdicaoAvaliacaocategoria: TStringField;
    qAtualizaApp: TUniQuery;
    qBuscaRefFipe: TUniQuery;
    qConsultaAvalAtendimento: TUniQuery;
    qBuscaRefFipeid: TIntegerField;
    qBuscaRefFiperef1: TStringField;
    qBuscaRefFiperef2: TStringField;
    qBuscaRefFiperef3: TStringField;
    qBuscaRefFipeprincipal: TStringField;
    qBuscaRefFiperefAvaliacoes: TStringField;
    qBuscaRefFipeFipeCompraPorta: TStringField;
    qBuscaRefFipeFipeCompraTroca: TStringField;
    qBuscaRefFipeFipeVistoria: TStringField;
    qBuscaRefFipeFipeAtendimentos: TStringField;
    UniConnectionSQLServer: TUniConnection;
    SQLServerUniProvider1: TSQLServerUniProvider;
    qBuscaRefFipeFipeCompraBelem: TStringField;
    qBuscaRefFipeFipeCompraExterna: TStringField;
    procedure UniConnectionMySQLConnectionLost(Sender: TObject;
    Component: TComponent; ConnLostCause: TConnLostCause;
      var RetryMode: TRetryMode);
    procedure UniConnectionDBMesclaPlanConnectionLost(Sender: TObject;
      Component: TComponent; ConnLostCause: TConnLostCause;
      var RetryMode: TRetryMode);
    procedure UniConnectionSQLiteConnectionLost(Sender: TObject;
      Component: TComponent; ConnLostCause: TConnLostCause;
      var RetryMode: TRetryMode);
  private
    { Private declarations }
  public
    { Public declarations }
    ID_VISTORIA, ID_AVALIACAO : integer;
  end;

var
  DataModuleBancoFB: TDataModuleBancoFB;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses Loading, Notificacao, UDataModuleAPI, UFormTeste, uOpenViewUrl,
  UFrameItemAlteracaoVeicular;


{$R *.dfm}

procedure TDataModuleBancoFB.UniConnectionDBMesclaPlanConnectionLost(
  Sender: TObject; Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin
    RetryMode := rmReconnectExecute;
end;

procedure TDataModuleBancoFB.UniConnectionMySQLConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin

  RetryMode := rmReconnectExecute;

end;

procedure TDataModuleBancoFB.UniConnectionSQLiteConnectionLost(Sender: TObject;
  Component: TComponent; ConnLostCause: TConnLostCause;
  var RetryMode: TRetryMode);
begin

 RetryMode := rmReconnectExecute;

end;

end.

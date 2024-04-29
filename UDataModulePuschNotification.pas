unit UDataModulePuschNotification;

interface

uses
  System.SysUtils, System.Classes, REST.Backend.PushTypes,
  REST.Backend.EMSPushDevice, System.JSON, System.PushNotification,
  REST.Backend.EMSProvider, Data.Bind.Components, Data.Bind.ObjectScope,
  REST.Backend.BindSource, REST.Backend.PushDevice, System.Net.HttpClient;

type
  TDataModulePushNotifications = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModulePushNotifications: TDataModulePushNotifications;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormTeste, UFormVistoriasFeitas,
  UFrameItensCheck, UFrameListNotificacoes, uOpenViewUrl;


{$R *.dfm}

end.

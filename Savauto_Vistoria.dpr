program Savauto_Vistoria;



uses
  System.StartUpCopy,
  FMX.Forms,
  Loading in 'Loading.pas',
  UDataModuleBancoFB in 'UDataModuleBancoFB.pas' {DataModuleBancoFB: TDataModule},
  UDataModuleCargaDados in 'UDataModuleCargaDados.pas' {DataModuleCargaDados: TDataModule},
  UformNovaVistoriaBeta in 'UformNovaVistoriaBeta.pas' {FormNovaVistoriaBeta},
  UFormConsultaAvaliacao in 'UFormConsultaAvaliacao.pas' {FormConsultaAvaliacao},
  uOpenViewUrl in '..\..\Dicas\openUrl\uOpenViewUrl.pas',
  UFormAtualizaAPp in 'UFormAtualizaAPp.pas' {FormAtualizaApp},
  Notificacao in 'Notificacao.pas',
  UformPrincipalBeta in 'UformPrincipalBeta.pas' {FormPrincipalBeta},
  UFormNotificacoes in 'UFormNotificacoes.pas' {FormNotificacoes},
  UFrameListNotificacoes in 'UFrameListNotificacoes.pas' {FrameListNotificacoes: TFrame},
  UFrameItensCheck in 'UFrameItensCheck.pas' {FrameCheckListItens: TFrame},
  UformNovaAvaliacaoBeta in 'UformNovaAvaliacaoBeta.pas' {FormNovaAvaliacaoBeta},
  UDataModuleAPI in 'UDataModuleAPI.pas' {DataModuleAPI: TDataModule},
  UFormTeste in 'UFormTeste.pas' {FormTeste},
  UFormVistoriasBeta in 'UFormVistoriasBeta.pas' {FormVistoriasBeta},
  UFormFipesAvaliacoesBeta in 'UFormFipesAvaliacoesBeta.pas' {FormFipesAvaliacoesBeta},
  UFormAgendamentos in 'UFormAgendamentos.pas' {FormAgendamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipalBeta, FormPrincipalBeta);
  Application.CreateForm(TDataModuleBancoFB, DataModuleBancoFB);
  Application.CreateForm(TDataModuleCargaDados, DataModuleCargaDados);
  Application.CreateForm(TDataModuleAPI, DataModuleAPI);
  Application.CreateForm(TFormFipesAvaliacoesBeta, FormFipesAvaliacoesBeta);
  Application.CreateForm(TFormAgendamentos, FormAgendamentos);
  Application.Run;
end.

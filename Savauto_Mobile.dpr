program Savauto_Mobile;



uses
  System.StartUpCopy,
  FMX.Forms,
  Loading in 'Units\Loading.pas',
  UDataModuleAPI in 'UDataModuleAPI.pas' {DataModuleAPI: TDataModule},
  UDataModuleBancoFB in 'UDataModuleBancoFB.pas' {DataModuleBancoFB: TDataModule},
  UDataModuleCargaDados in 'UDataModuleCargaDados.pas' {DataModuleCargaDados: TDataModule},
  UDataModulePuschNotification in 'UDataModulePuschNotification.pas' {DataModulePushNotifications: TDataModule},
  UFormApp in 'UFormApp.pas' {FormApp},
  UFormAtualizaAPp in 'UFormAtualizaAPp.pas' {FormAtualizaApp},
  UFormAvariasBeta in 'UFormAvariasBeta.pas' {FormAvariasBeta},
  UFormConsultaAvaliacao in 'UFormConsultaAvaliacao.pas' {FormConsultaAvaliacao},
  UFormNotificacoes in 'UFormNotificacoes.pas' {FormNotificacoes},
  UformNovaAvaliacaoBeta in 'UformNovaAvaliacaoBeta.pas' {FormNovaAvaliacaoBeta},
  UformNovaVistoriaBeta in 'UformNovaVistoriaBeta.pas' {FormNovaVistoriaBeta},
  UformPrincipalBeta in 'UformPrincipalBeta.pas' {FormPrincipalBeta},
  UFormTeste in 'UFormTeste.pas' {FormTeste},
  UFormVistoriasFeitas in 'UFormVistoriasFeitas.pas' {FormVistoriaFeita},
  UFrameItensCheck in 'UFrameItensCheck.pas' {FrameCheckListItens: TFrame},
  UFrameListNotificacoes in 'UFrameListNotificacoes.pas' {FrameListNotificacoes: TFrame},
  uFancyDialog in '..\dicas\dialog\uFancyDialog.pas',
  UFrameItemReparoCheckBox in 'frames\UFrameItemReparoCheckBox.pas' {FrameItemReparoCheckBox: TFrame},
  UFrameListaFotos in 'frames\UFrameListaFotos.pas' {FrameListaFotos: TFrame},
  UFrameItem in 'frames\UFrameItem.pas' {FrameItem: TFrame},
  UFrameItemAlteracaoVeicular in 'frames\UFrameItemAlteracaoVeicular.pas' {FrameItemAlteracaoVeicular: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormPrincipalBeta, FormPrincipalBeta);
  Application.CreateForm(TDataModuleBancoFB, DataModuleBancoFB);
  Application.CreateForm(TFormNovaVistoriaBeta, FormNovaVistoriaBeta);
  Application.CreateForm(TFormVistoriaFeita, FormVistoriaFeita);
  Application.CreateForm(TDataModuleCargaDados, DataModuleCargaDados);
  Application.CreateForm(TDataModuleAPI, DataModuleAPI);
  Application.CreateForm(TDataModuleBancoFB, DataModuleBancoFB);
  Application.CreateForm(TDataModuleCargaDados, DataModuleCargaDados);
  Application.CreateForm(TDataModulePushNotifications, DataModulePushNotifications);
  Application.CreateForm(TFormApp, FormApp);
  Application.CreateForm(TFormAtualizaApp, FormAtualizaApp);
  Application.CreateForm(TFormAvariasBeta, FormAvariasBeta);
  Application.CreateForm(TFormConsultaAvaliacao, FormConsultaAvaliacao);
  Application.CreateForm(TFormNotificacoes, FormNotificacoes);
  Application.CreateForm(TFormNovaAvaliacaoBeta, FormNovaAvaliacaoBeta);
  Application.CreateForm(TFormNovaVistoriaBeta, FormNovaVistoriaBeta);
  Application.CreateForm(TFormTeste, FormTeste);
  Application.CreateForm(TFormVistoriaFeita, FormVistoriaFeita);
  Application.Run;
end.

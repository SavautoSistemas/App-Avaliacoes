unit UFormApp;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls;

type
  TFormApp = class(TForm)
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormApp: TFormApp;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormTeste, UFormVistoriasFeitas,
  UFrameItensCheck, UFrameListNotificacoes, uOpenViewUrl;



end.

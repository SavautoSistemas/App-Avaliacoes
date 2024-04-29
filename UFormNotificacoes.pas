unit UFormNotificacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, Data.DB, MemDS, DBAccess, Uni, System.ImageList, FMX.ImgList,
  FMX.Layouts, FMX.ListBox, FMX.TabControl, FMX.StdCtrls,
  FMX.Controls.Presentation, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFormNotificacoes = class(TForm)
    Rectangle2: TRectangle;
    img_sair: TImage;
    qBuscaMensagens: TUniQuery;
    qBuscaMensagensid_mensagem: TIntegerField;
    qBuscaMensagensdata: TDateField;
    qBuscaMensagensusuario_remetente: TStringField;
    qBuscaMensagensusuario_destinatario: TStringField;
    qBuscaMensagensobs: TStringField;
    qBuscaMensagenslido: TIntegerField;
    qBuscaMensagenstitulo: TStringField;
    qBuscaMensagensPLACA: TStringField;
    ListBoxNotificacoes: TListBox;
    TabControl1: TTabControl;
    TabItemLista: TTabItem;
    TabItemDetalhesLista: TTabItem;
    Layout1: TLayout;
    img_sair_detalhes: TImage;
    Layout2: TLayout;
    CheckBoxLido: TCheckBox;
    Layout3: TLayout;
    Label1: TLabel;
    Layout4: TLayout;
    GroupBoxVeiculo: TGroupBox;
    Label2: TLabel;
    lblRemetente: TLabel;
    Layout5: TLayout;
    LblTextModelo: TLabel;
    lblModeloVeiculo: TLabel;
    Layout6: TLayout;
    Label3: TLabel;
    lblPlacaVeiculo: TLabel;
    GroupBoxDadosCliente: TGroupBox;
    Layout7: TLayout;
    Label4: TLabel;
    lblNomeCliente: TLabel;
    Layout8: TLayout;
    Label6: TLabel;
    lblTelefoneCliente: TLabel;
    Layout9: TLayout;
    Label5: TLabel;
    lblAnoVeiculo: TLabel;
    VertScrollBox1: TVertScrollBox;
    Layout10: TLayout;
    Label8: TLabel;
    Layout11: TLayout;
    Label9: TLabel;
    lblUFCliente: TLabel;
    Layout12: TLayout;
    Label11: TLabel;
    lblEnderecoCliente: TLabel;
    Layout13: TLayout;
    Label13: TLabel;
    lblCidadeCliente: TLabel;
    lblObservacoesVeiculos: TLabel;
    qBuscaAtendimento: TUniQuery;
    qBuscaAtendimentoid: TIntegerField;
    qBuscaAtendimentonome: TStringField;
    qBuscaAtendimentotelefone: TStringField;
    qBuscaAtendimentomidia: TStringField;
    qBuscaAtendimentocod_anuncio: TStringField;
    qBuscaAtendimentoano_modelo: TStringField;
    qBuscaAtendimentofipe: TFloatField;
    qBuscaAtendimentocod_fipe: TStringField;
    qBuscaAtendimentoproposta: TFloatField;
    qBuscaAtendimentosituacao: TStringField;
    qBuscaAtendimentousuario: TStringField;
    qBuscaAtendimentocod_usuario: TIntegerField;
    qBuscaAtendimentoQtdDias: TIntegerField;
    qBuscaAtendimentoPlaca: TStringField;
    qBuscaAtendimentomodelo: TStringField;
    qBuscaAtendimentoobs: TStringField;
    qBuscaAtendimentoData: TDateTimeField;
    qBuscaAtendimentoID_AVALIACAO: TIntegerField;
    qBuscaAtendimentoVlrAvaliacao: TFloatField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    qBuscaDadosAgendamento: TUniQuery;
    qBuscaDadosAgendamentoid: TIntegerField;
    qBuscaDadosAgendamentoid_atendimento: TIntegerField;
    qBuscaDadosAgendamentodescricao: TStringField;
    qBuscaDadosAgendamentodata: TDateTimeField;
    qBuscaDadosAgendamentovistoriador: TStringField;
    qBuscaDadosAgendamentoplaca: TStringField;
    qBuscaDadosAgendamentocliente: TStringField;
    qBuscaDadosAgendamentotelefone: TStringField;
    qBuscaDadosAgendamentoendereco: TStringField;
    qBuscaDadosAgendamentocidade: TStringField;
    qBuscaDadosAgendamentoUF: TStringField;
    qBuscaDadosAgendamentoobs: TStringField;
    qBuscaDadosAgendamentousuario: TStringField;
    qBuscaDadosAgendamentostatus: TStringField;
    qBuscaDadosAgendamentoconcluido: TIntegerField;
    BindSourceDB2: TBindSourceDB;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    Img_gravar: TImage;
    qMarcaNotificacao: TUniQuery;
    procedure img_sairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure img_sair_detalhesClick(Sender: TObject);
    procedure Img_gravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNotificacoes: TFormNotificacoes;

implementation

{$R *.fmx}

uses
uOpenViewUrl, UFrameListNotificacoes, UFrameItensCheck,  UFormVistoriasFeitas,
UFormTeste, UformPrincipalBeta, UformNovaVistoriaBeta, UformNovaAvaliacaoBeta, UFormConsultaAvaliacao,
 UFormAtualizaAPp, UDataModuleCargaDados, UDataModuleBancoFB, UDataModuleAPI, Notificacao, Loading;

//CD.View.Camera,
{
  Loading, Notificacao, UDataModuleBancoFB,
  UDataModuleCargaDados, UDataModulePuschNotification, UDMFtp,
  UDMThreadEnvioVistoria, UFormAnaliseCompra, UFormAnaliseDados, UFormApp,
  UFormAssinatura, UFormAtualizaAPp, UFormAvaliacao, UFormAvariasBeta,
  UFormCheckListReparo, UFormConsultaAvaliacao, UFormEdicaoVistoria,
  UFormEnvioVistoriasBeta, UFormExecSQL, UFormFotosVistoria,
  UFormFotosVistoriaNovo, UFormListaVistoriasPendentes, UFormLogin,
  UformNovaVistoriaBeta, UFormPergunta, UFormPesqModeloFIPE,
  UFormPesquisaModelo, UFormPrincipal, UformPrincipalBeta,
  UFormSincroniaAvaiacoes, UFormTelaPrincipal, UFormTestePushNotification,
  UFormVistoria, UFormVistoriaRecebidaPlaca, UFormVistoriasFeitas, uOpenViewUrl,
  UFrameListNotificacoes;
}
procedure TFormNotificacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 ListBoxNotificacoes.Clear;
 qBuscaMensagens.Filtered := false;
 qBuscaMensagens.Close;

end;

procedure TFormNotificacoes.FormShow(Sender: TObject);
var
 item : TListBoxItem;
 Frame: TFrameListNotificacoes;
begin

  TabControl1.ActiveTab := TabItemLista;

  qBuscaMensagens.Open;
  qBuscaMensagens.Filter := 'usuario_destinatario='+QuotedStr(FormPrincipalBeta.NOME_USUARIO);
  qBuscaMensagens.Filtered := true;

  qBuscaMensagens.First;

  try

    ListBoxNotificacoes.BeginUpdate;

    for var I := 0 to qBuscaMensagens.RecordCount -1 do
    Begin
      item := TListBoxItem.Create(self);

      Frame := TFrameListNotificacoes.Create(self);

      Frame.Name := 'Frame'+qBuscaMensagens.FieldByName('PLACA').Text;

      Frame.Parent := item;
      Frame.Align := TAlignLayout.Client;
      item.Height := 102;

      if qBuscaMensagens.FieldByName('lido').AsInteger = 0 then
      Frame.GlyphStatus.ImageIndex := 0
      Else
      Frame.GlyphStatus.ImageIndex := 1;

      Frame.lblTitulo.Text := qBuscaMensagens.FieldByName('titulo').Text;
      Frame.lblPlaca.Text  := qBuscaMensagens.FieldByName('PLACA').Text;

      item.Parent := ListBoxNotificacoes;

      qBuscaMensagens.Next;

    End;
   finally
    ListBoxNotificacoes.EndUpdate;
  end;
end;

procedure TFormNotificacoes.Img_gravarClick(Sender: TObject);
begin

  TLoading.Show(FormNotificacoes, 'Aguarde, atualizando notificação...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);
   TThread.Synchronize(nil, procedure
   Begin

     if CheckBoxLido.IsChecked = true then
     Begin
      qMarcaNotificacao.SQL.Clear;
      qMarcaNotificacao.SQL.Add('update tbnotificacoes set lido = 1 where placa=:pl');
      qMarcaNotificacao.ParamByName('pl').Text := lblPlacaVeiculo.Text;
      qMarcaNotificacao.Execute;
      TLoading.Hide;
      FormNotificacoes.OnShow(self);
      TabControl1.GotoVisibleTab(0 , TTabTransition.Slide);
     End
     Else
     Begin
      qMarcaNotificacao.SQL.Clear;
      qMarcaNotificacao.SQL.Add('update tbnotificacoes set lido = 0 where placa=:pl');
      qMarcaNotificacao.ParamByName('pl').Text := lblPlacaVeiculo.Text;
      qMarcaNotificacao.Execute;
      TLoading.Hide;

      TabControl1.GotoVisibleTab(0 , TTabTransition.Slide);
     End;

   End);

  End).Start;

end;

procedure TFormNotificacoes.img_sairClick(Sender: TObject);
begin

 ListBoxNotificacoes.Clear;

 Close;

end;

procedure TFormNotificacoes.img_sair_detalhesClick(Sender: TObject);
begin

  TabControl1.GotoVisibleTab(0 , TTabTransition.Slide);


end;

end.

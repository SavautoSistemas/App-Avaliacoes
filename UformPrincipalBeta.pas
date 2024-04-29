unit UformPrincipalBeta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, FMX.TabControl, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls,
  IniFiles, FMX.Ani,
  FMX.Colors,  FMX.DialogService, u99Permissions, FMX.Platform,
  System.Permissions,
  System.PushNotification,
  System.Notification,

  //indy
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTPBase,

  {$IFDEF ANDROID}
  FMX.PushNotification.Android,
  FMX.Platform.Android,
  Androidapi.JNI.Telephony,
  Androidapi.JNI.OS,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers,
  System.NetEncoding,
  Androidapi.JNI.Provider ,
  Androidapi.JNIBridge,
  System.JSON,
  System.JSON.Utils,
  System.JSON.Converters,
  System.JSON.Serializers,
  System.JSON.Types,
  Data.DB, MemDS, DBAccess, Uni,
  FMX.Helpers.Android, Loading, FMX.MediaLibrary.Actions, FMX.ActnList,
  System.Actions, FMX.StdActns, System.IOUtils,
  DateUtils;
  {$ENDIF}
  {$IFDEF MSWINDOWS}
   Loading, FMX.MediaLibrary.Actions, FMX.ActnList, System.Actions, FMX.StdActns,
  Data.DB, MemDS, DBAccess, Uni,
  System.JSON.Utils,
  System.JSON.Converters,
  System.JSON.Serializers,
  System.JSON, Winapi.ShellAPI, Winapi.Windows;
  {$ENDIF}
  {$IFDEF IOS}
  FMX.PushNotification.FCM.iOS;
  {$ENDIF}

type
  TFormPrincipalBeta = class(TForm)
    LayoutBotton: TLayout;
    LayoutTopo: TLayout;
    RectangleBotton: TRectangle;
    RectangleTopo: TRectangle;
    ImageSavauto: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    ImageVistoria: TImage;
    ImageAvaliacao: TImage;
    ImageConsultaVistoria: TImage;
    ImageConsultaSms: TImage;
    LayoutCliente: TLayout;
    TabControl1: TTabControl;
    TabItemVistoria: TTabItem;
    TabItemAvaliacao: TTabItem;
    TabItemConsultaVistoria: TTabItem;
    TabItemSMS: TTabItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Tab_Login: TTabItem;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    rct_Usuario: TRectangle;
    rct_senha: TRectangle;
    editUsuario: TEdit;
    EditSenha: TEdit;
    ect_logar: TRectangle;
    Label3: TLabel;
    imgUsuario: TImage;
    imgSenha: TImage;
    CheckManterLogado: TCheckBox;
    Image7: TImage;
    Layout11: TLayout;
    Rectangle1: TRectangle;
    Label4: TLabel;
    Rectangle2: TRectangle;
    Label5: TLabel;
    Layout12: TLayout;
    rctVistorias: TRectangle;
    Label6: TLabel;
    rctAvaliacoes: TRectangle;
    Label7: TLabel;
    lblVersao: TLabel;
    qVerificaNotificacoes: TUniQuery;
    NotificationCenter1: TNotificationCenter;
    Layout13: TLayout;
    NotificationCenter2: TNotificationCenter;
    AnimationWidth: TFloatAnimation;
    AnimationWidthSenha: TFloatAnimation;
    tabResetSenha: TTabItem;
    Layout14: TLayout;
    Layout15: TLayout;
    Label8: TLabel;
    Layout16: TLayout;
    Rectangle3: TRectangle;
    imgEmail: TImage;
    EditEmail: TEdit;
    StyleBook1: TStyleBook;
    Label9: TLabel;
    AnimationWdImgEmail: TFloatAnimation;
    btnReenviaUsuSen: TRectangle;
    lblValidar: TLabel;
    imgVoltarLogin: TImage;
    lblNovoUsuario: TLabel;
    Label10: TLabel;
    TabAlteraSenha: TTabItem;
    Layout17: TLayout;
    Layout18: TLayout;
    Label11: TLabel;
    Layout19: TLayout;
    Rectangle4: TRectangle;
    Image5: TImage;
    FloatAnimation1: TFloatAnimation;
    EditEmailAlteraSenha: TEdit;
    Rectangle5: TRectangle;
    Label12: TLabel;
    LyResetSenha: TLayout;
    Layout20: TLayout;
    Label13: TLabel;
    Layout21: TLayout;
    Rectangle6: TRectangle;
    Image6: TImage;
    FloatAnimation2: TFloatAnimation;
    EditCodSeg: TEdit;
    Layout22: TLayout;
    Label14: TLabel;
    Layout23: TLayout;
    Rectangle7: TRectangle;
    Image8: TImage;
    FloatAnimation3: TFloatAnimation;
    editNovaSenha: TEdit;
    Rectangle8: TRectangle;
    Label15: TLabel;
    imgAcessoRemoto: TImage;
    lblAtualizaVersao: TLabel;
    imgAcessoRemotoLogin: TImage;
    procedure ImageVistoriaClick(Sender: TObject);
    procedure ImageAvaliacaoClick(Sender: TObject);
    procedure ImageConsultaVistoriaClick(Sender: TObject);
    procedure ImageConsultaSmsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ect_logarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image7Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
    procedure rctAvaliacoesClick(Sender: TObject);
    procedure NotificationCenter1ReceiveLocalNotification(Sender: TObject;
      ANotification: TNotification);
    procedure rctVistoriasClick(Sender: TObject);
    procedure ect_logarMouseEnter(Sender: TObject);
    procedure ect_logarMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure editUsuarioEnter(Sender: TObject);
    procedure AnimationWidthFinish(Sender: TObject);
    procedure editUsuarioExit(Sender: TObject);
    procedure EditSenhaEnter(Sender: TObject);
    procedure AnimationWidthSenhaFinish(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Label9Click(Sender: TObject);
    procedure AnimationWdImgEmailFinish(Sender: TObject);
    procedure btnReenviaUsuSenMouseEnter(Sender: TObject);
    procedure btnReenviaUsuSenMouseLeave(Sender: TObject);
    procedure lblValidarMouseEnter(Sender: TObject);
    procedure lblValidarMouseLeave(Sender: TObject);
    procedure btnReenviaUsuSenClick(Sender: TObject);
    procedure EditEmailEnter(Sender: TObject);
    procedure imgVoltarLoginClick(Sender: TObject);
    procedure lblNovoUsuarioClick(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure Rectangle8Click(Sender: TObject);
    procedure imgAcessoRemotoClick(Sender: TObject);
    procedure lblAtualizaVersaoClick(Sender: TObject);
  private
    FPushService: TPushService;
    FPushServiceConnection: TPushServiceConnection;

    procedure CarregaTabControl(img: TImage);
    procedure Enviar_Notificacao(nome, titulo, texto: string);
    procedure GetUsuario;
    procedure ProcessarGetErro(Sender: TObject);
    procedure ValidaLogin(usuario, senha: string);
    procedure GravaVersao;

    procedure RegistrarDevice(token: string);
    procedure OnServiceConnectionChange(Sender: TObject;
      PushChanges: TPushService.TChanges);
    procedure OnServiceConnectionReceiveNotification(Sender: TObject;
      const ServiceNotification: TPushServiceNotification);
    procedure LimparNotificacoes;
    function AppEventProc(AAppEvent: TApplicationEvent;
      AContext: TObject): Boolean;
    procedure ValidaEmail(email: string);
    procedure ResetaDados(email, usuario, senha: string);
    procedure EnviaEmail(email, usuario, senha: string);
    procedure ResizeFormWindows;
    procedure CriaUsuario(email: string);
    procedure ResetSenha(email: string);
    procedure ResetSenhaEnvioEmail(email: string);
    procedure AlteraSenha(email, nova_senha, cod_seg: string);
    procedure VerificaAtualizacao(versao: string);
    procedure VerificaAtualizacaoAndroid(versao: string);
    {$IFDEF ANDROID}
    procedure Chama_URL(URL: string);
    {$ENDIF}

    { Private declarations }
  public
    { Public declarations }
    ID_USUARIO, NIVEL_USUARIO, novo_usuario : Integer;
    NOME_USUARIO, SENHA_USUARIO, chave : String;
    Permissao : T99Permissions;
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage : string;
  end;

var
  FormPrincipalBeta: TFormPrincipalBeta;

implementation

{$R *.fmx}

uses Notificacao, UDataModuleAPI, UDataModuleBancoFB, UDataModuleCargaDados,
  UFormAtualizaAPp, UFormConsultaAvaliacao, UFormNotificacoes,
  UformNovaAvaliacaoBeta, UformNovaVistoriaBeta, UFormTeste,
  UFormVistoriasFeitas, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl, UFormVistoriasBeta, UFormAgendamentos,
  UFormFipesAvaliacoesBeta, UDataModulePuschNotification, uFancyDialog,
  UFormApp, UFormAvariasBeta, UFrameItemReparoCheckBox, UFrameListaFotos;

{$IFDEF ANDROID}
procedure TFormPrincipalBeta.Chama_URL(URL: string);
var
Intent: JIntent;
begin
//URL:=Button1.Text;
if URL='vazio' then begin
   exit;
end;
   Intent := TJIntent.Create;
   Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
   Intent.setData(StrToJURI(URL));
   SharedActivity.startActivity(Intent);
end;
{$ENDIF}


procedure TFormPrincipalBeta.Label10Click(Sender: TObject);
begin

  TabControl1.GotoVisibleTab( 6 , TTabTransition.Slide);

end;

procedure TFormPrincipalBeta.Label9Click(Sender: TObject);
begin

 novo_usuario := 0;

 TabControl1.GotoVisibleTab( 5 , TTabTransition.Slide);

end;

procedure TFormPrincipalBeta.lblAtualizaVersaoClick(Sender: TObject);
begin

 {$IFDEF MSWINDOWS}

  ShellExecute(0, 'OPEN', PChar(FormAtualizaApp.link), '', '', SW_SHOWNORMAL);
  Application.Terminate;

 {$ENDIF}

 {$IFDEF ANDROID}

 Chama_URL( FormAtualizaApp.link );
  Application.Terminate;

 {$ENDIF}

end;

procedure TFormPrincipalBeta.lblNovoUsuarioClick(Sender: TObject);
begin

 novo_usuario := 1;

 TabControl1.GotoVisibleTab( 5 , TTabTransition.Slide);

end;

procedure TFormPrincipalBeta.lblValidarMouseEnter(Sender: TObject);
begin

 btnReenviaUsuSen.Opacity := 0.7;

end;

procedure TFormPrincipalBeta.lblValidarMouseLeave(Sender: TObject);
begin

  btnReenviaUsuSen.Opacity := 1;

end;

procedure TFormPrincipalBeta.LimparNotificacoes;
begin
    NotificationCenter2.CancelAll;
end;


procedure TFormPrincipalBeta.AnimationWdImgEmailFinish(Sender: TObject);
begin
  AnimationWidth.Inverse := NOT AnimationWidth.Inverse;
end;

procedure TFormPrincipalBeta.AnimationWidthFinish(Sender: TObject);
begin

 AnimationWidth.Inverse := not  AnimationWidth.Inverse;

end;

procedure TFormPrincipalBeta.AnimationWidthSenhaFinish(Sender: TObject);
begin

 AnimationWidthSenha.Inverse := not AnimationWidthSenha.Inverse;

end;

function TFormPrincipalBeta.AppEventProc(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
begin
    if (AAppEvent = TApplicationEvent.BecameActive) then
        LimparNotificacoes;
end;


procedure TFormPrincipalBeta.btnReenviaUsuSenClick(Sender: TObject);
begin

     if EditEmail.Text <> '' then
     Begin

       ValidaEmail( EditEmail.Text );

     End
     Else
     Begin
       ShowMessage('E-mail inválido!');
     End;

end;

procedure TFormPrincipalBeta.ValidaEmail( email: string);
var
 q : TUniQuery;
Begin

  if novo_usuario = 0 then
  Begin
      q := TUniQuery.Create(self);
      q.Connection := DataModuleBancoFB.UniConnectionMySQL;

      if DataModuleBancoFB.UniConnectionMySQL.Connected = false then
      DataModuleBancoFB.UniConnectionMySQL.Connected := true;

      try

          lblValidar.Text := 'Verificando e-mail...';

          q.SQL.Clear;
          q.SQL.Add('select * from tbusuarios ');
          q.SQL.Add('where email=:email');
          q.ParamByName('email').Text := email;
          q.Open;

          if q.RecordCount > 0 then
          Begin

            ResetaDados( email, q.FieldByName('nome').Text, q.FieldByName('senha').Text );

          End
          Else
          Begin
            lblValidar.Text := 'Validar';
            ShowMessage('E-mail não encontrado no sistema savauto, contate um responsável da sua área para verificação!');
          End;

      Except
      On E:Exception Do
        Begin
          ShowMessage('Falha ao solicitar dados! ' + e.Message);
        End;

      End;
   End
   Else
   Begin
    if novo_usuario = 1 then
    Begin

      q := TUniQuery.Create(self);
      q.Connection := DataModuleBancoFB.UniConnectionMySQL;

      if DataModuleBancoFB.UniConnectionMySQL.Connected = false then
      DataModuleBancoFB.UniConnectionMySQL.Connected := true;

      try

          lblValidar.Text := 'Verificando e-mail...';

          q.SQL.Clear;
          q.SQL.Add('select * from tbusuarios ');
          q.SQL.Add('where email=:email');
          q.ParamByName('email').Text := email;
          q.Open;

          if q.RecordCount > 0 then
          Begin

            ResetaDados( email, q.FieldByName('nome').Text, q.FieldByName('senha').Text );

          End
          Else
          Begin
            lblValidar.Text := 'Criando usuário, aguarde...';

            CriaUsuario( email );

          End;

      Except
      On E:Exception Do
        Begin
          ShowMessage('Falha ao solicitar dados! ' + e.Message);
        End;

      End;

    End;

   End;

End;

procedure TFormPrincipalBeta.CriaUsuario( email: string);
var
 q : TUniQuery;
Begin

  q := TUniQuery.Create(self);
  q.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

     TThread.CreateAnonymousThread(procedure
     Begin
       Sleep(1000);

       TThread.Synchronize(nil, procedure
       Begin

       q.SQL.Clear;
       q.SQL.Add('insert into tbusuarios (nome, senha, nivel, email)');
       q.SQL.Add('values (:email, :senha, 97, :email)');
       q.ParamByName('email').Text := email;
       q.ParamByName('senha').Text := StringReplace( email, '.com.br','' , [rfReplaceAll, rfIgnoreCase]);
       q.ExecSQL;

        lblValidar.Text := 'Enviando e-mail com os dados, aguarde...';

        EnviaEmail( email, email, StringReplace( email, '.com.br','' , [rfReplaceAll, rfIgnoreCase]));
        TLoading.Hide;
       End);

     End).Start;

  Except
  On E:Exception Do
  Begin
    ShowMessage('Falha ao tentar fazer o envio! ' + E.Message);
  End;

 End;

End;

procedure TFormPrincipalBeta.ResetaDados( email, usuario, senha: string);
var
 q : TUniQuery;
Begin

  q := TUniQuery.Create(self);
  q.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

     TThread.CreateAnonymousThread(procedure
     Begin
       Sleep(1000);

       lblValidar.Text := 'Enviando e-mail...';

       TThread.Synchronize(nil, procedure
       Begin

        EnviaEmail( email, usuario, senha);

       End);

     End).Start;

  Except
  On E:Exception Do
  Begin
    ShowMessage('Falha ao tentar fazer o envio! ' + E.Message);
  End;

 End;

End;

procedure TFormPrincipalBeta.EnviaEmail(email, usuario, senha: string);
var
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
Begin
  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    //IdSMTP.UseTLS := utUseImplicitTLS;
    //IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 587;
    IdSMTP.Host := 'smtp.kinghost.com.br';
    IdSMTP.Username := 'matheus@savauto.com.br';
    IdSMTP.Password := 'ma2020';

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'matheus@savauto.com.br';
    IdMessage.From.Name := 'Envio de Senha';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := email;
    //IdMessage.Recipients.Add.Text := 'destinatario2@email.com'; // opcional
    //IdMessage.Recipients.Add.Text := 'destinatario3@email.com'; // opcional
    IdMessage.Subject := 'NAO RESPONDA: Envio de Usuario e Senha automático';
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Olá, este e-mail é um envio automático, mesmo respondido não será validado.');
    IdText.Body.Add('');
    IdText.Body.Add('Segue seu usuário e senha de login do Sistema, não forneça a ninguem este dado é de uso pessoal');
    IdText.Body.Add('');
    IdText.Body.Add('Usuario: ' + usuario);
    IdText.Body.Add('Senha: ' + senha);
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
   { sAnexo := 'C:\Anexo.pdf';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;  }

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        ShowMessage('Erro na conexão ou autenticação: ' + E.Message);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      ShowMessage('E-mail enviado com sucesso! Verifique sua caixa de entrada os dados estarão lá para login');
      lblValidar.Text := 'Validar';
      TabControl1.GotoVisibleTab( 0 , TTabTransition.Slide);
    except
      On E:Exception do
      begin
        ShowMessage('Erro ao enviar a mensagem: ' +    E.Message);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;


PROCEDURE TFormPrincipalBeta.ResetSenhaEnvioEmail( email: string);
var
  // variáveis e objetos necessários para o envio
  IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  IdText: TIdText;
  sAnexo: string;
Begin
  // instanciação dos objetos
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    //IdSMTP.UseTLS := utUseImplicitTLS;
    //IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 587;
    IdSMTP.Host := 'smtp.kinghost.com.br';
    IdSMTP.Username := 'matheus@savauto.com.br';
    IdSMTP.Password := 'ma2020';

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := 'matheus@savauto.com.br';
    IdMessage.From.Name := 'Envio de Senha';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := email;
    //IdMessage.Recipients.Add.Text := 'destinatario2@email.com'; // opcional
    //IdMessage.Recipients.Add.Text := 'destinatario3@email.com'; // opcional
    IdMessage.Subject := 'NAO RESPONDA: Envio de Usuario e Senha automático';
    IdMessage.Encoding := meMIME;

    chave := FloatToStr( Now * 20 / 3 ) + 'Sdxc10' + FloatToStr( now * 99 / 3);

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Olá, este e-mail é um envio automático, mesmo respondido não será validado.');
    IdText.Body.Add('');
    IdText.Body.Add('Será enviado um código de acesso, para validação do seu pedido de alteração de senha');
    IdText.Body.Add('');
    IdText.Body.Add('Código: ' + chave );
    IdText.Body.Add('');
    IdText.Body.Add('Copie esse código para o sistema e acesse a tela de alteração de senha');
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
   { sAnexo := 'C:\Anexo.pdf';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;  }

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        ShowMessage('Erro na conexão ou autenticação: ' + E.Message);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      ShowMessage('E-mail enviado com sucesso! Verifique sua caixa de entrada os dados estarão lá para reset de senha');

      LyResetSenha.visible := true;
      //TabControl1.GotoVisibleTab( 0 , TTabTransition.Slide);
    except
      On E:Exception do
      begin
        ShowMessage('Erro ao enviar a mensagem: ' +    E.Message);
      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;
end;

procedure TFormPrincipalBeta.btnReenviaUsuSenMouseEnter(Sender: TObject);
begin

 btnReenviaUsuSen.Opacity := 0.7;

end;

procedure TFormPrincipalBeta.btnReenviaUsuSenMouseLeave(Sender: TObject);
begin

 btnReenviaUsuSen.Opacity := 1;

end;

procedure TFormPrincipalBeta.CarregaTabControl(img: TImage);
Begin

 TabControl1.GotoVisibleTab(img.Tag, TTabTransition.Slide);

End;

procedure TFormPrincipalBeta.Enviar_Notificacao(nome, titulo, texto : string);
var
        MinhaNotificacao : TNotification;
begin
        with FormPrincipalBeta do
        begin
                MinhaNotificacao := NotificationCenter1.CreateNotification;

                try
                        MinhaNotificacao.Name := nome;
                        MinhaNotificacao.Title := titulo;
                        MinhaNotificacao.AlertBody := texto;

                        NotificationCenter1.PresentNotification(MinhaNotificacao);
                finally
                        MinhaNotificacao.DisposeOf;
                end;
        end;
end;

procedure TFormPrincipalBeta.OnServiceConnectionChange(Sender: TObject;
  PushChanges: TPushService.TChanges);
var
    token : string;
begin
    if TPushService.TChange.Status in PushChanges then
    begin
        if FPushService.Status = TPushService.TStatus.Started then
        begin
            //memLog.Lines.Add('Serviço de push iniciado com sucesso');
            //memLog.Lines.Add('----');
        end
        else
        if FPushService.Status = TPushService.TStatus.StartupError then
        begin
            FPushServiceConnection.Active := False;


            ShowMessage('Falha ao iniciar serviço de mensagens automáticas!');
            //memLog.Lines.Add('Erro ao iniciar serviço de push');
            //memLog.Lines.Add(FPushService.StartupError);
            //memLog.Lines.Add('----');
        end;
    end;

    if TPushService.TChange.DeviceToken in PushChanges then
    begin
        token := FPushService.DeviceTokenValue[TPushService.TDeviceTokenNames.DeviceToken];

        {memLog.Lines.Add('Token do aparelho recebido');
        memLog.Lines.Add('Token: ' + token);
        memLog.Lines.Add('---');
        memLog.Lines.EndUpdate; }

        RegistrarDevice(token);
    end;
end;

procedure TFormPrincipalBeta.OnServiceConnectionReceiveNotification(Sender: TObject;
  const ServiceNotification: TPushServiceNotification);
var
    x : integer;
    msg : string;
begin
   { memLog.Lines.Add('Push recebido');
    memLog.Lines.Add('DataKey: ' + ServiceNotification.DataKey);
    memLog.Lines.Add('Json: ' + ServiceNotification.Json.ToString);
    memLog.Lines.Add('DataObject: ' + ServiceNotification.DataObject.ToString);
    memLog.Lines.Add('---');
   }
    {
    for x := 0 to ServiceNotification.DataObject.Count - 1 do
    begin
        memLog.lines.Add(ServiceNotification.DataObject.Pairs[x].JsonString.Value + ' = ' +
                         ServiceNotification.DataObject.Pairs[x].JsonValue.Value);

        if ServiceNotification.DataObject.Pairs[x].JsonString.Value = 'mensagem' then
                msg := ServiceNotification.DataObject.Pairs[x].JsonValue.Value;
    end;

    if msg <> '' then
        showmessage(msg);
    }
end;

procedure TFormPrincipalBeta.RegistrarDevice(token: string);
var
 query : TUniQuery;
begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

  query.SQL.Clear;
  query.SQL.Add('update tbusuarios set token=:tk where nome=:usuario');
  query.ParamByName('tk').AsString := token;
  query.ParamByName('usuario').AsString := NOME_USUARIO;
  query.Execute;

 Except
   On E:Exception Do
   Begin
     ShowMessage('Falha ao capturar token do aparelho para mensagens! ' + E.Message);
   End;
 end;

end;

Procedure TFormPrincipalBeta.GetUsuario;
Var
 json : string;
 arrayFipes : TJSONArray;
 i : integer;
Begin

 if editUsuario.Text = '' then
 Begin
   ShowMessage('Usuário inválido!');
   Abort;
 End;

 if EditSenha.Text = '' then
 Begin
   ShowMessage('Senha inválida!');
   Abort;
 End;


      try
       DataModuleAPI.ReqUsuario.Resource :=  editUsuario.Text + '/' + EditSenha.Text;
       DataModuleAPI.ReqUsuario.Execute;

          if DataModuleAPI.ReqUsuario.Response.StatusCode <> 200 then
           Begin
             ShowMessage('Ocorreu uma falha na consulta ' + IntToStr(DataModuleAPI.ReqUsuario.Response.StatusCode));
           End;

         json := DataModuleAPI.ReqUsuario.Response.JSONValue.ToString;

         arrayFipes := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONArray;

         ID_USUARIO   :=  arrayFipes.Get(0).GetValue<integer>('id', 0);
         NOME_USUARIO :=  arrayFipes.Get(0).GetValue<string>('nome','');
         SENHA_USUARIO:=  arrayFipes.Get(0).GetValue<string>('senha', '');
         NIVEL_USUARIO:= StrToInt(arrayFipes.Get(0).GetValue<string>('nivel', '0')) ;

         arrayFipes.DisposeOf;

       except on ex:Exception do
       ShowMessage('Falha ao carregar lista de usuarios!' + ex.Message);
     end;


End;

procedure TFormPrincipalBeta.GravaVersao;
var
 query : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

   query.SQL.Clear;
   query.SQL.Add('update tbusuarios set versao_app=:versao where nome=:usuario and senha=:senha');
   query.ParamByName('versao').Text := lblVersao.Text;
   query.ParamByName('usuario').Text := NOME_USUARIO;
   query.ParamByName('senha').Text := SENHA_USUARIO;
   query.Execute;

   Except
   On E:Exception Do
   Begin
     ShowMessage('Falha ao gravar versão do usuário!' + e.Message);
   End;

 End;

End;

procedure TFormPrincipalBeta.ValidaLogin(usuario, senha: string);
var
     {$IFDEF ANDROID}
    obj: JObject;
    tm: JTelephonyManager;
     {$ENDIF}
    IMEI, logar: String;
    LoginAuto, autologin : TIniFile;
Begin

 usuario := NOME_USUARIO;
 senha   := SENHA_USUARIO;

     if usuario = '' then
      Begin
       TLoading.Hide;
       ShowMessage('Usuário incorreto!');
       Abort;
      End;

     if senha = '' then
      Begin
       TLoading.Hide;
       ShowMessage('Senha incorreta!');
       Abort;
      End
      Else
     Begin
      if CheckManterLogado.IsChecked = true then
        Begin
          autologin := TIniFile.Create(GetHomePath + PathDelim + 'autologin.ini');
          //logar := autologin.readstring('autologin', 'sim', '0');
          autologin.writeString('autologin', 'sim', '1');
          autologin.writeString('autologin', 'usuario', usuario);
          autologin.writeString('autologin', 'senha', senha);
          autologin.Free;
        End
        Else
        Begin
          autologin := TIniFile.Create(GetHomePath + PathDelim + 'autologin.ini');
          //logar := autologin.readstring('autologin', 'sim', '0');
          autologin.writeString('autologin', 'sim', '0');
          autologin.writeString('autologin', 'usuario', '');
          autologin.writeString('autologin', 'senha', '');
          autologin.Free;
        End;

       GravaVersao;

       LayoutBotton.Visible := true;
       TabControl1.GotoVisibleTab(2, TTabTransition.Slide);
     End;

ENd;


procedure TFormPrincipalBeta.ProcessarGetErro(Sender: TObject);
Begin
 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);
End;

procedure TFormPrincipalBeta.ect_logarClick(Sender: TObject);
var
     {$IFDEF ANDROID}
    obj: JObject;
    tm: JTelephonyManager;
     {$ENDIF}
    IMEI, logar: String;
    LoginAuto, autologin : TIniFile;
begin

    GetUsuario;

    ValidaLogin( NOME_USUARIO , SENHA_USUARIO );

{     if NOME_USUARIO = '' then
      Begin
       TLoading.Hide;
       ShowMessage('Usuário incorreto!');
       Abort;
      End;

     if SENHA_USUARIO = '' then
      Begin
       TLoading.Hide;
       ShowMessage('Senha incorreta!');
       Abort;
      End
      Else
     Begin
      if CheckManterLogado.IsChecked = true then
        Begin
          autologin := TIniFile.Create(GetHomePath + PathDelim + 'autologin.ini');
          //logar := autologin.readstring('autologin', 'sim', '0');
          autologin.writeString('autologin', 'sim', '1');
          autologin.writeString('autologin', 'usuario', editUsuario.text);
          autologin.writeString('autologin', 'senha', EditSenha.text);
          autologin.Free;
        End
        Else
        Begin
          autologin := TIniFile.Create(GetHomePath + PathDelim + 'autologin.ini');
          //logar := autologin.readstring('autologin', 'sim', '0');
          autologin.writeString('autologin', 'sim', '0');
          autologin.writeString('autologin', 'usuario', '');
          autologin.writeString('autologin', 'senha', '');
          autologin.Free;
        End;
       LayoutBotton.Visible := true;
       TabControl1.GotoVisibleTab(2, TTabTransition.Slide);
     End;
  }
end;


procedure TFormPrincipalBeta.ect_logarMouseEnter(Sender: TObject);
begin
 ect_logar.Opacity := 0.3;
end;

procedure TFormPrincipalBeta.ect_logarMouseLeave(Sender: TObject);
begin
 ect_logar.Opacity := 1;
end;

procedure TFormPrincipalBeta.EditEmailEnter(Sender: TObject);
begin

 AnimationWdImgEmail.Start;

end;

procedure TFormPrincipalBeta.EditSenhaEnter(Sender: TObject);
begin

 AnimationWidthSenha.Start;

end;

procedure TFormPrincipalBeta.editUsuarioEnter(Sender: TObject);
begin

 AnimationWidth.Start;

end;

procedure TFormPrincipalBeta.editUsuarioExit(Sender: TObject);
begin

 AnimationWidth.Start;

end;

procedure TFormPrincipalBeta.FormActivate(Sender: TObject);
var
    Notifications : TArray<TPushServiceNotification>;
    x : integer;
    msg : string;
begin
 {   Notifications := FPushService.StartupNotifications; // notificacoes que abriram meu app...

    if Length(Notifications) > 0 then
    begin
        for x := 0 to Notifications[0].DataObject.Count - 1 do
        begin
        {    memLog.lines.Add(Notifications[0].DataObject.Pairs[x].JsonString.Value + ' = ' +
                             Notifications[0].DataObject.Pairs[x].JsonValue.Value);   }
       {
            if Notifications[0].DataObject.Pairs[x].JsonString.Value = 'mensagem' then
                msg := Notifications[0].DataObject.Pairs[x].JsonValue.Value;
        end;
    end;

    if msg <> '' then
        showmessage(msg);
  }
end;

procedure TFormPrincipalBeta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Application.Terminate;
end;

procedure TFormPrincipalBeta.FormCreate(Sender: TObject);
var
    AppEvent : IFMXApplicationEventService;
begin
    // Eventos do app (para exclusao das notificacoes)...
  {  if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService, IInterface(AppEvent)) then
        AppEvent.SetApplicationEventHandler(AppEventProc);

    FPushService := TPushServiceManager.Instance.GetServiceByName(TPushService.TServiceNames.FCM);
    FPushServiceConnection := TPushServiceConnection.Create(FPushService);

    FPushServiceConnection.OnChange := OnServiceConnectionChange;
    FPushServiceConnection.OnReceiveNotification := OnServiceConnectionReceiveNotification;

    FPushServiceConnection.Active := True;   }
end;

procedure TFormPrincipalBeta.FormDestroy(Sender: TObject);
begin

  //  FPushServiceConnection.Free;

end;

procedure TFormPrincipalBeta.FormShow(Sender: TObject);
var
 autologin : TIniFile;
 login : string;
begin

   LyResetSenha.Visible := false;
   lblAtualizaVersao.Visible := false;

  {$IF defined(MSWINDOWS)}

   ResizeFormWindows;
   imgAcessoRemoto.Visible := true;
   imgAcessoRemotoLogin.Visible := true;

   VerificaAtualizacao(lblVersao.text);

   editUsuario.margins.Top := 5;
   editUsuario.margins.bottom := 5;
   editUsuario.margins.RIGHT := 5;

   EditSenha.margins.Top := 5;
   EditSenha.margins.bottom := 5;
   EditSenha.margins.RIGHT := 5;

  {$ENDIF}

  {$IFDEF ANDROID}


 DataModuleAPI.ReqUsuario.Execute;

 VerificaAtualizacaoAndroid( lblVersao.text );


  autologin := TIniFile.Create(GetHomePath + PathDelim + 'autologin.ini');
  //logar := autologin.readstring('autologin', 'sim', '0');
  login := autologin.readstring('autologin', 'sim', '0');

  if login = '1' then
  Begin
    CheckManterLogado.IsChecked := true;
    editUsuario.Text := autologin.ReadString('autologin', 'usuario', '');
    EditSenha.text   := autologin.ReadString('autologin', 'senha',   '');
    //ect_logarClick(Sender);
    autologin.Free;
  End;

 {$ENDIF}

  TLoading.Hide;

  TabControl1.ActiveTab := Tab_Login;

end;


procedure TFormPrincipalBeta.VerificaAtualizacaoAndroid(versao: string);
Begin
 TLoading.Show(FormPrincipalBeta, 'Verificando versão do app...');

 TThread.CreateAnonymousThread(procedure
 Begin
   Sleep(500);

   DataModuleBancoFB.qAtualizaApp.SQL.Clear;
   DataModuleBancoFB.qAtualizaApp.SQL.Add('select * from tbconfig where tiop =:modulo');
   DataModuleBancoFB.qAtualizaApp.ParamByName('modulo').Text := 'mobile';
   DataModuleBancoFB.qAtualizaApp.Open;

   TThread.Synchronize(nil, procedure
   Begin

    if DataModuleBancoFB.qAtualizaApp.FieldByName('versaoapp').Text <> lblVersao.Text then
    Begin
     TLoading.Hide;
     if FormAtualizaApp = nil then
     Begin
      FormAtualizaApp := TFormAtualizaApp.Create(self);
     End;
      FormAtualizaApp.link := DataModuleBancoFB.qAtualizaApp.FieldByName('url').Text;
      FormAtualizaApp.Show;
    End;

      TLoading.Hide;

   End);

 End).Start;
End;


procedure TFormPrincipalBeta.VerificaAtualizacao(versao: string);
var
 q : TUniQuery;
Begin

     if FormAtualizaApp = nil then
     Begin
      FormAtualizaApp := TFormAtualizaApp.Create(self);
     End;

     q := TUniQuery.Create(self);
     q.Connection := DataModuleBancoFB.UniConnectionMySQL;


 TThread.CreateAnonymousThread(procedure
 Begin
   Sleep(1000);

   q.SQL.Clear;
   q.SQL.Add('select * from tbconfig where tipo=:modulo');
   q.ParamByName('modulo').Text := 'App Windows';
   q.Open;

   TThread.Synchronize(nil, procedure
   Begin

    if q.FieldByName('versaoapp').Text <> versao then
    Begin

      lblAtualizaVersao.Text    := 'Versão para atualização disponível' + #13 + 'Clique aqui para atualizar';
      lblAtualizaVersao.Visible := true;

      Layout5.Visible := false;

      lblAtualizaVersao.Align := TAlignLayout.Center;
      lblAtualizaVersao.Font.Size := 30;

      FormAtualizaApp.link := q.FieldByName('url').Text;

    End;

   End);

 End).Start;

end;

procedure TFormPrincipalBeta.ResizeFormWindows;
Begin

  Layout5.Margins.Left  := 600;
  Layout5.Margins.Right := 600;

  Layout14.Margins.Left  := 600;
  Layout14.Margins.Right := 600;

  Layout17.Margins.Left  := 700;
  Layout17.Margins.Right := 700;
  LyResetSenha.Margins.Left  := 700;
  LyResetSenha.Margins.Right := 700;

End;

procedure TFormPrincipalBeta.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin

 Layout5.Height := 386;

end;

procedure TFormPrincipalBeta.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin

  Layout5.Height := 500;

end;

procedure TFormPrincipalBeta.Image7Click(Sender: TObject);
Var
  autologin : TIniFile;
begin
     {$IFDEF ANDROID}
     autologin := TIniFile.Create(GetHomePath + PathDelim + 'autologin.ini');
     //logar := autologin.readstring('autologin', 'sim', '0');
     autologin.writeString('autologin', 'sim', '0');
     autologin.writeString('autologin', 'usuario', '');
     autologin.writeString('autologin', 'senha', '');
     autologin.Free;
     {$ENDIF}

     Application.Terminate;
end;

procedure TFormPrincipalBeta.ImageAvaliacaoClick(Sender: TObject);
begin

 if NOME_USUARIO <> '' then
 Begin
   CarregaTabControl(TImage(sender));
 End
 Else
 Begin
  ShowMessage('Efetue o login para demais acessos');
 End;

end;

procedure TFormPrincipalBeta.ImageConsultaSmsClick(Sender: TObject);
begin

 if FormAgendamentos = nil then
 Begin
  FormAgendamentos := TFormAgendamentos.Create(self);
 End;

 FormAgendamentos.Show;


{ /// TELA DE NOTIFICACOES RETIRADA
  if FormNotificacoes = nil then
  Begin
    FormNotificacoes := TFormNotificacoes.Create(self);
  End;

  FormNotificacoes.ListBoxNotificacoes.Clear;

  FormNotificacoes.Show;
  ?}
end;

procedure TFormPrincipalBeta.ImageConsultaVistoriaClick(Sender: TObject);
begin

 if NOME_USUARIO <> '' then
 Begin
   CarregaTabControl(TImage(sender));
 End
 Else
 Begin
  ShowMessage('Efetue o login para demais acessos');
 End;

end;

procedure TFormPrincipalBeta.ImageVistoriaClick(Sender: TObject);
begin

 if NOME_USUARIO <> '' then
 Begin
   CarregaTabControl(TImage(sender));
 End
 Else
 Begin
  ShowMessage('Efetue o login para demais acessos');
 End;

end;

procedure TFormPrincipalBeta.imgAcessoRemotoClick(Sender: TObject);
begin

 {$IFDEF MSWINDOWS}
    WinExec('C:\Sistema Savauto\App\AvaliacaoDesktop\AnyDesk.exe', sw_show);
 {$ENDIF}

end;

procedure TFormPrincipalBeta.imgVoltarLoginClick(Sender: TObject);
begin

 TabControl1.GotoVisibleTab( 0 ,  TTabTransition.Slide);

end;

procedure TFormPrincipalBeta.NotificationCenter1ReceiveLocalNotification(
  Sender: TObject; ANotification: TNotification);
begin
        //if ANotification.Name = 'Agendamento PLACA: '+qVerificaNotificacoes.FieldByName('PLACA').Text then
        //ShowMessage(ANotification.AlertBody);
       // qVerificaNotificacoes.Next;
end;

procedure TFormPrincipalBeta.Rectangle1Click(Sender: TObject);
begin
  if FormNovaVistoriaBeta = nil then
  Begin
    FormNovaVistoriaBeta := TFormNovaVistoriaBeta.Create(self);
  End;

  FormNovaVistoriaBeta.TabControl1.ActiveTab := FormNovaVistoriaBeta.TabItem1;
  FormNovaVistoriaBeta.LblStatusVistoria.Text := '';

  FormNovaVistoriaBeta.Show;
end;

procedure TFormPrincipalBeta.Rectangle2Click(Sender: TObject);
begin

  if FormNovaAvaliacaoBeta = nil then
  Begin
    FormNovaAvaliacaoBeta := TFormNovaAvaliacaoBeta.Create(self);
  End;

  FormNovaAvaliacaoBeta.TabControl1.ActiveTab := FormNovaAvaliacaoBeta.TabItem1;
  //FormNovaAvaliacaoBeta.TabControl1.ActiveTab := FormNovaAvaliacaoBeta.tab_consulta_placa;

  {$IFDEF MSWINDOWS}

   FormNovaAvaliacaoBeta.Layout4.Width   := 350;
   FormNovaAvaliacaoBeta.layout4.Height  := 500;
   FormNovaAvaliacaoBeta.Layout4.Margins.Left  := 450;
   FormNovaAvaliacaoBeta.Layout4.Margins.Right := 450;

   FormNovaAvaliacaoBeta.Layout15.Margins.Left  := 450;
   FormNovaAvaliacaoBeta.Layout15.Margins.Right := 450;

   FormNovaAvaliacaoBeta.Layout13.Margins.Left  := 290;
   FormNovaAvaliacaoBeta.Layout13.Margins.Right := 290;

   FormNovaAvaliacaoBeta.Layout16.Margins.Left  := 290;
   FormNovaAvaliacaoBeta.Layout16.Margins.Right := 290;

   FormNovaAvaliacaoBeta.Rectangle19.Margins.Left  := 300;
   FormNovaAvaliacaoBeta.Rectangle19.Margins.Right := 300;

   FormNovaAvaliacaoBeta.Layout12.Margins.Left  := 450;
   FormNovaAvaliacaoBeta.Layout12.Margins.Right := 450;

   FormNovaAvaliacaoBeta.Layout10.Margins.Left  := 450;
   FormNovaAvaliacaoBeta.Layout10.Margins.Right := 450;

   FormNovaAvaliacaoBeta.VertScrollBoxFotos.margins.Left  := 450;
   FormNovaAvaliacaoBeta.VertScrollBoxFotos.margins.Right := 450;

   FormNovaAvaliacaoBeta.Layout6.Margins.Left  := 250;
   FormNovaAvaliacaoBeta.Layout6.Margins.Right := 250;

   FormNovaAvaliacaoBeta.Layout7.Margins.Left  := 250;
   FormNovaAvaliacaoBeta.Layout7.Margins.Right := 250;

   FormNovaAvaliacaoBeta.Show;

  {$ENDIF}

  FormNovaAvaliacaoBeta.Show;

end;

procedure TFormPrincipalBeta.Rectangle5Click(Sender: TObject);
begin

 if EditEmailAlteraSenha.Text <> '' then
 Begin

  ResetSenha( EditEmailAlteraSenha.Text );

 End;


end;

procedure TFormPrincipalBeta.Rectangle8Click(Sender: TObject);
begin

 if chave <> EditCodSeg.Text then
 Begin
   ShowMessage('Falha! Código inválido...');
   ABort;
 End
 Else
 Begin
  AlteraSenha( EditEmailAlteraSenha.Text , editNovaSenha.Text, EditCodSeg.Text);
 End;

end;

procedure TFormPrincipalBeta.AlteraSenha( email, nova_senha, cod_seg : string);
var
 query : TUniQuery;
Begin

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionMySQL;

try

   query.SQL.Clear;
   query.SQL.Add('update tbusuarios set senha=:nova_senha where email=:email');
   query.ParamByName('nova_senha').Text := nova_senha;
   query.ParamByName('email').Text      := email;
   query.Execute;

   ShowMessage('Senha alterada com sucesso! Volte para a tela de login e tenta faze-lo');

   Except On E:Exception
   Do Begin
     ShowMessage('Falha ao tentar alterar a senha: ' + e.Message);
   End;

 End;

End;


procedure TFormPrincipalBeta.ResetSenha( email: string);
var
 query : TUniQuery;
Begin

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionMySQL;

  try

   query.SQL.Clear;
   query.SQL.Add('select * from tbusuarios where email=:email');
   query.ParamByName('email').Text := email;
   query.Open;

   if query.RecordCount > 0 then
   Begin

      ResetSenhaEnvioEmail( EditEmailAlteraSenha.Text );

   End
   Else
   Begin
      ShowMessage('Usuário nao encontrado com esse e-mail');
   End;

 Except On E:Exception Do
 Begin
   ShowMessage('Falha ao tentar solicitar reset de senha! ' + E.Message);
 End;
End;

End;

procedure TFormPrincipalBeta.rctAvaliacoesClick(Sender: TObject);
begin

 TLoading.Show(FormPrincipalBeta,  'Aguarde, consultando lista de avaliações...');

 try

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

    TThread.Synchronize(nil, procedure
    Begin

      if FormConsultaAvaliacao = nil then
      Begin
        FormConsultaAvaliacao := TFormConsultaAvaliacao.Create(self);
      End;

      TLoading.Hide;

      FormConsultaAvaliacao.Show;
    End);

  End).Start;

 Except
 On E:Exception do
 Begin
    TLoading.Hide;
    ShowMessage('Falha ao solicitar avaliações! Refaça a operação: ' + E.Message);
 End;

 end;
end;

procedure TFormPrincipalBeta.rctVistoriasClick(Sender: TObject);
begin

  if FormVistoriasBeta = nil then
  Begin
    FormVistoriasBeta := TFormVistoriasBeta.Create(self);
  End;

  FormVistoriasBeta.Show;

end;

end.

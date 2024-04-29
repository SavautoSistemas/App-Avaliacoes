unit UFormAtualizaAPp;

interface

uses

  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, System.Math,

  {$IFDEF MSWINDOWS}
  Winapi.ShellAPI, Winapi.Windows;
  {$ENDIF}

  {$IFDEF ANDROID}
   Androidapi.Helpers, Androidapi.JNI.GraphicsContentViewText;
  {$ENDIF}



type
  TFormAtualizaApp = class(TForm)
    Rectangle1: TRectangle;
    Label1: TLabel;
    procedure img_atualizarClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  {$IFDEF ANDROID}
  procedure Chama_URL(URL: string);
  {$ENDIF}

    { Private declarations }
  public
    { Public declarations }
    link : string;
  end;

var
  FormAtualizaApp: TFormAtualizaApp;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormConsultaAvaliacao, UFormNotificacoes,
  UformNovaAvaliacaoBeta, UformNovaVistoriaBeta, UformPrincipalBeta, UFormTeste,
  UFormVistoriasFeitas, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl;


{$IFDEF ANDROID}
procedure TFormAtualizaApp.Chama_URL(URL: string);
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

procedure TFormAtualizaApp.FormShow(Sender: TObject);
begin

  TLoading.Hide;

end;

procedure TFormAtualizaApp.img_atualizarClick(Sender: TObject);
begin
 {$IFDEF ANDROID}
 DataModuleBancoFB.qAtualizaApp.SQL.Clear;
 DataModuleBancoFB.qAtualizaApp.SQL.Add('select url from tbconfig where tipo = ''mobile''');
 DataModuleBancoFB.qAtualizaApp.Open;

 Chama_URL(DataModuleBancoFB.qAtualizaApp.FieldByName('url').Text);
 Application.Terminate;
 {$ENDIF}

end;



procedure TFormAtualizaApp.Label1Click(Sender: TObject);
begin

 DataModuleBancoFB.qAtualizaApp.SQL.Clear;
 DataModuleBancoFB.qAtualizaApp.SQL.Add('select url from tbconfig where tipo = ''mobile''');
 DataModuleBancoFB.qAtualizaApp.Open;
 {$IFDEF ANDROID}
  Chama_URL(DataModuleBancoFB.qAtualizaApp.FieldByName('url').Text);
 {$ENDIF}

{$IFDEF MSWINDOWS}
  ShellExecute(0, 'OPEN', PChar(DataModuleBancoFB.qAtualizaApp.FieldByName('url').Text), '', '', SW_SHOWNORMAL);
{$ENDIF MSWINDOWS}

 Application.Terminate;

end;

procedure TFormAtualizaApp.Rectangle1Click(Sender: TObject);
begin

     {$IFDEF ANDROID}
      Chama_URL(link);
       Application.Terminate;
     {$ENDIF}

    {$IFDEF MSWINDOWS}
      ShellExecute(0, 'OPEN', PChar(link), '', '', SW_SHOWNORMAL);
       Application.Terminate;
    {$ENDIF MSWINDOWS}

end;

end.

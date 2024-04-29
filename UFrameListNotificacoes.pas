unit UFrameListNotificacoes;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, FMX.TabControl,
  System.ImageList, FMX.ImgList, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, Loading, Data.DB, MemDS, DBAccess, Uni;

type
  TFrameListNotificacoes = class(TFrame)
    Layout1: TLayout;
    Image1: TImage;
    lblPlaca: TLabel;
    lblTitulo: TLabel;
    Rectangle1: TRectangle;
    ImageList1: TImageList;
    GlyphStatus: TGlyph;
    procedure Rectangle1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

uses UFormNotificacoes, UDataModuleBancoFB;

procedure TFrameListNotificacoes.Rectangle1Click(Sender: TObject);
begin

  TLoading.Show(FormNotificacoes, 'Aguarde, Carregando Mensagem...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

   FormNotificacoes.qBuscaAtendimento.Close;
   FormNotificacoes.qBuscaAtendimento.Open;
   FormNotificacoes.qBuscaAtendimento.Filter := 'placa='+QuotedStr(lblPlaca.Text);
   FormNotificacoes.qBuscaAtendimento.Filtered := true;

   FormNotificacoes.qBuscaDadosAgendamento.Close;
   FormNotificacoes.qBuscaDadosAgendamento.Open;
   FormNotificacoes.qBuscaDadosAgendamento.Filter := 'placa='+QuotedStr(lblPlaca.Text);
   FormNotificacoes.qBuscaDadosAgendamento.Filtered := true;

   TThread.Synchronize(nil, procedure
   Begin

      if FormNotificacoes.qBuscaAtendimento.RecordCount > 0 then
      Begin
       //ShowMessage('Clicou na placa: '+lblPlaca.Text);
       TLoading.Hide;
       FormNotificacoes.TabControl1.GotoVisibleTab(1 , TTabTransition.Slide);
       //FormNotificacoes.img_sair.Visible := false;
      End
      Else
      Begin
       TLoading.Hide;
       ShowMessage('Atendimeto da placa '+lblPlaca.Text+' não encontrado, favor acionar o administrador.');
      End;

   End);

  end).Start;

end;

end.

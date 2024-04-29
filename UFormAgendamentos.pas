unit UFormAgendamentos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Layouts, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Uni, FMX.Effects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TFormAgendamentos = class(TForm)
    TabControl1: TTabControl;
    TabItemLista: TTabItem;
    TabItemEdita: TTabItem;
    TabItemMeusAgendamentos: TTabItem;
    LayoutTopo: TLayout;
    RectangleTopo: TRectangle;
    ImageSavauto: TImage;
    Image7: TImage;
    ListViewLista: TListView;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Image1: TImage;
    Image2: TImage;
    rctColetarVeiculo: TRectangle;
    Label7: TLabel;
    ShadowEffect1: TShadowEffect;
    rctMeusAgendamentos: TRectangle;
    Label1: TLabel;
    ShadowEffect2: TShadowEffect;
    Layout2: TLayout;
    Layout3: TLayout;
    Label2: TLabel;
    EditCliente: TEdit;
    VertScrollBox1: TVertScrollBox;
    Layout4: TLayout;
    Label3: TLabel;
    EditTelefone: TEdit;
    Layout5: TLayout;
    Label4: TLabel;
    Layout6: TLayout;
    Label5: TLabel;
    Layout7: TLayout;
    Label6: TLabel;
    Layout8: TLayout;
    Label8: TLabel;
    EditPlaca: TEdit;
    EditModeloVeiculo: TEdit;
    EditCidade: TEdit;
    Layout9: TLayout;
    Label9: TLabel;
    EditUF: TEdit;
    EditEndereco: TEdit;
    Layout10: TLayout;
    Rectangle2: TRectangle;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    ListViewMeusAgendamentos: TListView;
    ImageConfirma: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure ListViewListaItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure rctColetarVeiculoMouseEnter(Sender: TObject);
    procedure rctColetarVeiculoMouseLeave(Sender: TObject);
    procedure rctColetarVeiculoDblClick(Sender: TObject);
    procedure rctColetarVeiculoClick(Sender: TObject);
    procedure rctMeusAgendamentosMouseEnter(Sender: TObject);
    procedure rctMeusAgendamentosMouseLeave(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure rctMeusAgendamentosClick(Sender: TObject);
  private
    procedure ListaAgendamentos;
    procedure ColetaAgendamento(id: integer);
    procedure ListaMeusAgendamentos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgendamentos: TFormAgendamentos;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormFipesAvaliacoesBeta, UFormNotificacoes, UformNovaAvaliacaoBeta,
  UformNovaVistoriaBeta, UformPrincipalBeta, UFormTeste, UFormVistoriasBeta,
  UFrameItensCheck, UFrameListNotificacoes, uOpenViewUrl;

PROCEDURE TFormAgendamentos.ColetaAgendamento(id: integer);
var
 query :TUniQuery;
  MyClass: TObject;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;


 try

  query.SQL.Clear;
  query.SQL.Add('update tbcompras_agendamento set status=:sts , vistoriador=:usuario, endereco=:ende where id=:id');
  query.ParamByName('sts').Text := 'coletado';
  query.ParamByName('usuario').Text := FormPrincipalBeta.editUsuario.Text;
  query.ParamByName('ende').Text := EditEndereco.Text;
  query.ParamByName('id').AsInteger := id;
  query.Execute;

  query.DisposeOf;

  ShowMessage('Agendamento coletado com sucesso e já disponível em Meus Agendamentos!');

  ListaAgendamentos;

 Except
 On E:Exception Do
   Begin

    ShowMessage('Falha ao coletar agendamento '+e.Message);

   End;
 end;

End;


procedure TFormAgendamentos.ListaMeusAgendamentos;
Var
 Query : TUniQuery;
Begin

 ListViewMeusAgendamentos.Items.Clear;

 try

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

  query.SQL.Clear;
  query.SQL.Add('select * from tbcompras_agendamento where status = ''coletado'' and vistoriador=:usuario order by data desc ');
  query.ParamByName('usuario').Text := FormPrincipalBeta.editUsuario.Text;
  query.Open;

  query.First;

  while not query.Eof do
  Begin

   with ListViewMeusAgendamentos.Items.Add do
   Begin

    tag := query.FieldByName('id').AsInteger;

    TListItemText(Objects.FindDrawable('TextTitCliente')).Text := 'Cliente: ';
    TListItemText(Objects.FindDrawable('TextCliente')).Text    := query.FieldByName('cliente').Text;
    TListItemText(Objects.FindDrawable('TextTitPlaca')).Text   := 'Placa: ';
    TListItemText(Objects.FindDrawable('TextPlaca')).Text      := query.FieldByName('placa').Text;
    TListItemText(Objects.FindDrawable('TextModelo')).Text     := query.FieldByName('obs').Text;
    TListItemText(Objects.FindDrawable('TextTitTelefone')).Text:= 'Fone: ';
    TListItemText(Objects.FindDrawable('TextTelefone')).Text   := query.FieldByName('telefone').Text;
    TListItemText(Objects.FindDrawable('TextTitEndereco')).Text:= 'Endereço: ';
    TListItemText(Objects.FindDrawable('TextEndereco')).Text   := query.FieldByName('endereco').Text;
    TListItemText(Objects.FindDrawable('TextTitCidade')).Text  := 'Cidade: ';
    TListItemText(Objects.FindDrawable('TextCidade')).Text     := query.FieldByName('cidade').Text;
    TListItemText(Objects.FindDrawable('TextTitUf')).Text      := 'UF: ';
    TListItemText(Objects.FindDrawable('TextUf')).Text         := query.FieldByName('UF').Text;
    TListItemImage(Objects.FindDrawable('ImgConfirmabox')).Bitmap := ImageConfirma.Bitmap;

   End;

   query.Next;

  End;

 Except
 On E:Exception Do
   Begin
     ShowMessage('Falha ao listar dados! ' + E.Message);
   End;
 end;

End;

procedure TFormAgendamentos.ListaAgendamentos;
Var
 Query : TUniQuery;
Begin

 ListViewLista.Items.Clear;

 try

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

  query.SQL.Clear;
  query.SQL.Add('select * from tbcompras_agendamento where status = ''pendente'' order by data desc ');
  query.Open;

  query.First;

  while not query.Eof do
  Begin

   with ListViewLista.Items.Add do
   Begin

    tag := query.FieldByName('id').AsInteger;

    TListItemText(Objects.FindDrawable('TextTitCliente')).Text := 'Cliente: ';
    TListItemText(Objects.FindDrawable('TextCliente')).Text    := query.FieldByName('cliente').Text;
    TListItemText(Objects.FindDrawable('TextTitPlaca')).Text   := 'Placa: ';
    TListItemText(Objects.FindDrawable('TextPlaca')).Text      := query.FieldByName('placa').Text;
    TListItemText(Objects.FindDrawable('TextModelo')).Text     := query.FieldByName('obs').Text;
    TListItemText(Objects.FindDrawable('TextTitTelefone')).Text:= 'Fone: ';
    TListItemText(Objects.FindDrawable('TextTelefone')).Text   := query.FieldByName('telefone').Text;
    TListItemText(Objects.FindDrawable('TextTitEndereco')).Text:= 'Endereço: ';
    TListItemText(Objects.FindDrawable('TextEndereco')).Text   := query.FieldByName('endereco').Text;
    TListItemText(Objects.FindDrawable('TextTitCidade')).Text  := 'Cidade: ';
    TListItemText(Objects.FindDrawable('TextCidade')).Text     := query.FieldByName('cidade').Text;
    TListItemText(Objects.FindDrawable('TextTitUf')).Text      := 'UF: ';
    TListItemText(Objects.FindDrawable('TextUf')).Text         := query.FieldByName('UF').Text;

   End;

   query.Next;

  End;

 Except
 On E:Exception Do
   Begin
     ShowMessage('Falha ao listar dados! ' + E.Message);
   End;
 end;

End;

procedure TFormAgendamentos.ListViewListaItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

 //ShowMessage('ID: ' + IntToStr(AItem.Tag));

 FormAgendamentos.Tag := AItem.Tag;

 EditCliente.Text := TListItemText(AItem.Objects.FindDrawable('TextCliente')).Text;
 EditTelefone.Text:= TListItemText(AItem.Objects.FindDrawable('TextTelefone')).Text;

 EditPlaca.Text := '';

 EditPlaca.Text   := TListItemText(AItem.Objects.FindDrawable('TextPlaca')).Text;

 if EditPlaca.Text = '' then
 EditPlaca.Text := 'N/A';

 EditModeloVeiculo.Text := TListItemText(AItem.Objects.FindDrawable('TextModelo')).Text;
 EditCidade.Text        := TListItemText(AItem.Objects.FindDrawable('TextCidade')).Text;
 EditUF.Text            := TListItemText(AItem.Objects.FindDrawable('TextUf')).Text;
 EditEndereco.Text      := TListItemText(AItem.Objects.FindDrawable('TextEndereco')).Text;

 EditEndereco.Enabled := true;

 ShowMessage('Você pode editar o endereço se necessário');

 TabControl1.GotoVisibleTab(1, TTabTransition.Slide);

end;

procedure TFormAgendamentos.rctColetarVeiculoClick(Sender: TObject);
begin

  ColetaAgendamento(tag);

  TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormAgendamentos.rctColetarVeiculoDblClick(Sender: TObject);
begin

  TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormAgendamentos.rctColetarVeiculoMouseEnter(Sender: TObject);
begin

 rctColetarVeiculo.opacity := 0.3;

end;

procedure TFormAgendamentos.rctColetarVeiculoMouseLeave(Sender: TObject);
begin

  rctColetarVeiculo.opacity := 1;

end;

procedure TFormAgendamentos.rctMeusAgendamentosClick(Sender: TObject);
begin

  ListaMeusAgendamentos;
  TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

end;

procedure TFormAgendamentos.rctMeusAgendamentosMouseEnter(Sender: TObject);
begin

 rctMeusAgendamentos.Opacity := 0.3;

end;

procedure TFormAgendamentos.rctMeusAgendamentosMouseLeave(Sender: TObject);
begin

 rctMeusAgendamentos.Opacity := 1;

end;

procedure TFormAgendamentos.FormShow(Sender: TObject);
begin

 TabControl1.ActiveTab := TabItemLista;

 ListaAgendamentos;

end;

procedure TFormAgendamentos.Image5Click(Sender: TObject);
begin
  TabControl1.GotoVisibleTab(0, TTabTransition.Slide);
end;

procedure TFormAgendamentos.Image7Click(Sender: TObject);
begin

 Close;

end;

end.

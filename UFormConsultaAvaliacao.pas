unit UFormConsultaAvaliacao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Edit, Data.DB, MemDS, DBAccess,
  Uni, FMX.Layouts, FMX.ListBox, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  {$IFDEF ANDROID}
  FMX.Platform.Screen.Android,
  {$ENDIF}
  FMX.Gestures, FMX.StdCtrls, FMX.DateTimeCtrls, FMX.Memo.Types, FMX.ScrollBox,
  FMX.Memo, FMX.Ani;

type
  TFormConsultaAvaliacao = class(TForm)
    rctTopo: TRectangle;
    TabControl1: TTabControl;
    Tab_ConsultaPlaca: TTabItem;
    Tab_DadosAvaliacao: TTabItem;
    rctTopo2: TRectangle;
    Rectangle3: TRectangle;
    EditPlacaConsultaAval: TEdit;
    Image7: TImage;
    Image1: TImage;
    imgPesq: TImage;
    qBuscaDadosAval: TUniQuery;
    LayoutDados: TLayout;
    Image3: TImage;
    Image4: TImage;
    VertScrollBox1: TVertScrollBox;
    rect_total_pgto: TRectangle;
    Tab_Fotos: TTabItem;
    ListViewFotos: TListView;
    qCarregaFoto: TUniQuery;
    qCarregaFotoFoto: TBlobField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Tab_Visu_Foto: TTabItem;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Image6: TImage;
    LinkControlToField1: TLinkControlToField;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    GestureManager1: TGestureManager;
    ListView1: TListView;
    Tab_Historico_Avaliacoes: TTabItem;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    qBuscaHistorico: TUniQuery;
    qBuscaHistoricodata_avaliacao: TDateTimeField;
    qBuscaHistoricoplaca: TStringField;
    ListViewHistoricoAvaliacoes: TListView;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    qAtualizaAvaliacao: TUniQuery;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    tab_avarias: TTabItem;
    ListViewAvarias: TListView;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Image2: TImage;
    QBuscaAvarias: TUniQuery;
    QBuscaAvariasid: TIntegerField;
    QBuscaAvariasid_vistoria: TIntegerField;
    QBuscaAvariasplaca: TStringField;
    QBuscaAvariasid_reparo: TIntegerField;
    QBuscaAvariasnome_reparo: TStringField;
    QBuscaAvariasvalor_reparo: TFloatField;
    QBuscaAvariastipo_reparo: TStringField;
    QBuscaAvariasenviado: TIntegerField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    tab_propostas: TTabItem;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Image5: TImage;
    qBuscaPropostas: TUniQuery;
    qBuscaPropostasid: TIntegerField;
    qBuscaPropostasnome: TStringField;
    qBuscaPropostastelefone: TStringField;
    qBuscaPropostasmidia: TStringField;
    qBuscaPropostascod_anuncio: TStringField;
    qBuscaPropostasano_modelo: TStringField;
    qBuscaPropostasfipe: TFloatField;
    qBuscaPropostascod_fipe: TStringField;
    qBuscaPropostasproposta: TFloatField;
    qBuscaPropostassituacao: TStringField;
    qBuscaPropostasusuario: TStringField;
    qBuscaPropostascod_usuario: TIntegerField;
    qBuscaPropostasQtdDias: TIntegerField;
    qBuscaPropostasPlaca: TStringField;
    qBuscaPropostasmodelo: TStringField;
    qBuscaPropostasobs: TStringField;
    qBuscaPropostasData: TDateTimeField;
    qBuscaPropostasID_AVALIACAO: TIntegerField;
    qBuscaPropostasVlrAvaliacao: TFloatField;
    qBuscaPropostasUlt_Sit: TStringField;
    ListViewPropostas: TListView;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    Image11: TImage;
    BindSourceDB2: TBindSourceDB;
    Label1: TLabel;
    Rectangle12: TRectangle;
    EditVlrCompra: TEdit;
    Rectangle13: TRectangle;
    Image12: TImage;
    Label2: TLabel;
    Rectangle14: TRectangle;
    EditVlrTroca: TEdit;
    qBuscaTodasAvaliacoesListView: TUniQuery;
    Label3: TLabel;
    DtAvaliacao: TDateEdit;
    Label4: TLabel;
    EditTipo: TEdit;
    lblPlaca: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MemoModelo: TMemo;
    EditAno: TEdit;
    Label7: TLabel;
    EditKM: TEdit;
    Label8: TLabel;
    EditOpc: TEdit;
    Label9: TLabel;
    EditVlrFipe: TEdit;
    Label10: TLabel;
    EditVlrAvarias: TEdit;
    ImgFotos: TImage;
    RectAnimation1: TRectAnimation;
    rctDataAvaliacao: TRectangle;
    rctTipo: TRectangle;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Rectangle17: TRectangle;
    Rectangle18: TRectangle;
    Rectangle19: TRectangle;
    Rectangle20: TRectangle;
    Image13: TImage;
    procedure FormShow(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure ListBox1ItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure EditTotalAvaliadoEnter(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure ListViewFotosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Rectangle2Click(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure FormGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure Rectangle7Click(Sender: TObject);
    procedure ListViewHistoricoAvaliacoesItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure EditTotalAvaliadoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure Image3Click(Sender: TObject);
    procedure EditTotalAvaliadoExit(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure imgPesqClick(Sender: TObject);
    procedure ListView1PullRefresh(Sender: TObject);
    procedure imgPesqMouseEnter(Sender: TObject);
    procedure imgPesqMouseLeave(Sender: TObject);
    procedure EditVlrCompraEnter(Sender: TObject);
    procedure ImgFotosMouseEnter(Sender: TObject);
    procedure ImgFotosMouseLeave(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure ImgFotosClick(Sender: TObject);
    procedure Image13MouseEnter(Sender: TObject);
    procedure Image13MouseLeave(Sender: TObject);
    procedure Image13Click(Sender: TObject);
  private
    { Private declarations }
    foco : TControl;
    procedure ajustarscroll;
    procedure CarregaAvaliacoes(placa: string);
  public
    { Public declarations }
    id_avaliacao : integer;
  end;

var
  FormConsultaAvaliacao: TFormConsultaAvaliacao;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormNotificacoes,
  UformNovaAvaliacaoBeta, UformNovaVistoriaBeta, UformPrincipalBeta, UFormTeste,
  UFormVistoriasFeitas, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl;

procedure TFormConsultaAvaliacao.CarregaAvaliacoes(placa: string);
var
 query : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

    ListView1.Items.Clear;

    query.SQL.Clear;
    query.SQL.Add('select * from tbavaliacoes');
    if placa <> '' then
    query.SQL.Add('where placa like'+ QuotedStr('%' + placa + '%'));
    query.SQL.Add('order by id desc');
    query.SQL.Add('limit 100');
    query.Open;

    query.First;

     while not query.Eof do
     Begin
       with ListView1.Items.Add do
       Begin
         TListItemText(Objects.FindDrawable('TextData')).Text := DateTimeToStr( query.FieldByName('data_avaliacao').AsDateTime );
         TListItemText(Objects.FindDrawable('TextPlaca')).Text := query.FieldByName('placa').Text;
         TListItemText(Objects.FindDrawable('TextTitAno')).Text := 'Ano: ';
         TListItemText(Objects.FindDrawable('TextAno')).Text := query.FieldByName('ano').Text;
         TListItemText(Objects.FindDrawable('TextModelo')).Text := query.FieldByName('modelo').Text;
         TListItemText(Objects.FindDrawable('TextId')).Text := IntToStr( query.FieldByName('id').AsInteger );
       End;
       query.Next;
     End;

    Except
    On E:Exception
    Do Begin
      ShowMessage('Falha ao carregar lista de avaliações! ' + E.Message);
    End
  End;

End;

procedure TFormConsultaAvaliacao.EditTotalAvaliadoEnter(Sender: TObject);
begin

{ foco := TControl(TEdit(sender).Parent);
 ajustarscroll(); }

end;

procedure TFormConsultaAvaliacao.EditTotalAvaliadoExit(Sender: TObject);
begin

 //EditTotalAvaliado.TEXT:= FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(EditTotalAvaliado.TEXT));

end;

procedure TFormConsultaAvaliacao.EditTotalAvaliadoKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
var  s: String;

begin



end;

procedure TFormConsultaAvaliacao.EditVlrCompraEnter(Sender: TObject);
begin

 EditVlrCompra.SelectAll;

end;

procedure TFormConsultaAvaliacao.FormGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
  Var
   LObj: IControl;
   LImage: TImage;
   LImageCenter: TPointF;
   FLastDistance : integer;
  begin
 if EventInfo.GestureID = igiZoom then
 Begin
  LObj := Self.ObjectAtPoint(ClientToScreen(EventInfo.Location));
  if LObj is Timage then
  Begin
   if (not(TInteractiveGestureFlag.gfBegin in EventInfo.Flags)) and
   (not(TInteractiveGestureFlag.gfEnd in eventInfo.Flags)) then
   Begin

    LImage := TImage(LObj.GetObject);
    LImageCenter := LImage.Position.Point + PointF(LImage.Width / 2,
     LImage.Height / 2);
    LImage.Width := LImage.Width + (EventInfo.Distance -  FlastDistance);
    LImage.Height := LImage.Height + (EventInfo.Distance - FLastDistance);
    LImage.Position.X := LImageCenter.X - LImage.Width / 2;
    LImage.Position.Y := LImageCenter.Y - LImage.Height / 2;
   End;
   FLastDistance := EventInfo.Distance;
  End;
 End;
end;

procedure TFormConsultaAvaliacao.FormShow(Sender: TObject);
begin

 if FormPrincipalBeta = nil then
 Begin
  FormPrincipalBeta := TFormPrincipalBeta.Create(self);
 End;

 TabControl1.ActiveTab := Tab_ConsultaPlaca;

 if FormPrincipalBeta.NIVEL_USUARIO > 98 then
 Begin
  EditVlrCompra.Enabled := true;
  EditVlrTroca.Enabled := true;

  CarregaAvaliacoes('');

 End
 Else
 Begin

  EditVlrCompra.Enabled := false;
  EditVlrTroca.Enabled := false;

  qBuscaTodasAvaliacoesListView.Active := true;

 End;

  CarregaAvaliacoes('');

 if EditVlrCompra.Text <> '' then
 Begin
   EditVlrCompra.Text := FormatFloat('R$ ###,###,##0.0000',StrToFloat(EditVlrCompra.Text));
 End;

 if EditVlrTroca.Text <> '' then
 Begin
   EditVlrTroca.Text := FormatFloat('R$ ###,###,##0.0000',StrToFloat(EditVlrTroca.Text));
 End;

end;

procedure TFormConsultaAvaliacao.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin

 VertScrollBox1.Margins.Bottom := 0;

end;

procedure TFormConsultaAvaliacao.ajustarscroll();
Var
 x: integer;
Begin

 with FormConsultaAvaliacao do
 Begin

  VertScrollBox1.Margins.Bottom := 350;
  VertScrollBox1.ViewportPosition := PointF(VertScrollBox1.ViewportPosition.X,
                                            TControl(foco).Position.Y - 90);

 ENd;

End;

procedure TFormConsultaAvaliacao.Image12Click(Sender: TObject);
begin
   try
      if EditVlrTroca.Enabled = true then
      Begin

       if EditVlrTroca.Text <> '' then
       Begin

        TLoading.Show(FormConsultaAvaliacao, 'Atualizando avaliação...');

        TThread.CreateAnonymousThread(procedure
         Begin

          TThread.Synchronize(nil, procedure
          Begin

            qAtualizaAvaliacao.SQL.Clear;
            qAtualizaAvaliacao.SQL.Add('update tbavaliacoes set vlr_troca = :valor where placa = :placa');
            qAtualizaAvaliacao.ParamByName('valor').AsCurrency := StrToCurr(EditVlrTroca.Text);
            qAtualizaAvaliacao.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
            qAtualizaAvaliacao.Execute;

            var query : TUniQuery;
            query := TUniQuery.Create(self);
            query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

            query.SQL.Clear;
            query.SQL.Add('update tbcompras_atendimento set VlrAvaliacao=:vlr where placa=:placa and situacao <> ''Concluido''');
            query.ParamByName('vlr').AsCurrency := StrToCurr(EditVlrCompra.Text);
            query.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
            //query.ParamByName('id').AsInteger := FormGestaoAvaliacoes.DBGrid1.DataSource.DataSet.FieldByName('id').AsInteger;
            query.Execute;

            query.DisposeOf;

            TLoading.Hide;

            ShowMessage('Avaliação atualizada com sucesso!');

          End);

         End).Start;

       End
       Else
       Begin
        TLoading.Hide;
        ShowMessage('Campo valor inválido');
       End;
      End
      Else
      Begin

       TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

      End;
    except
      on e: Exception do Begin
       TLoading.Hide;
       ShowMessage('Falha ao aplicar esta operação, refaça o processo.'+#13+e.Message);
      End;
  end;
end;

procedure TFormConsultaAvaliacao.Image13Click(Sender: TObject);
begin


  QBuscaAvarias.Filter := 'placa ='+QuotedStr(EditPlacaConsultaAval.Text);
  QBuscaAvarias.Filtered := true;
  QBuscaAvarias.Open;

  if QBuscaAvarias.RecordSize > 0 then
  Begin

    TabControl1.GotoVisibleTab(5, TTabTransition.Slide);

  End
  Else
  Begin
    ShowMessage('Nenhuma avaria encontrada!');
  End;


end;

procedure TFormConsultaAvaliacao.Image13MouseEnter(Sender: TObject);
begin

 Image13.Opacity := 0.3;

end;

procedure TFormConsultaAvaliacao.Image13MouseLeave(Sender: TObject);
begin

 Image13.Opacity := 1;

end;

procedure TFormConsultaAvaliacao.Image1Click(Sender: TObject);
begin

  Close;

end;

procedure TFormConsultaAvaliacao.Image2Click(Sender: TObject);
begin

  if EditPlacaConsultaAval.Text = '' then
  Begin
    ShowMessage('Placa deve ser preenchida para a consulta!');
    Abort;
  End;

  TLoading.Show(FormConsultaAvaliacao, 'Consultando placa...Aguarde...');

  TThread.CreateAnonymousThread(procedure
  Begin
  Sleep(2000);

   qBuscaDadosAval.SQL.Clear;
   qBuscaDadosAval.SQL.Add('select * from tbavaliacoes where placa=:placa');
   qBuscaDadosAval.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
   qBuscaDadosAval.Open;

   TThread.Synchronize(nil, procedure
   Begin
    if qBuscaDadosAval.RecordCount > 0 then
    Begin

        DtAvaliacao.DateTime := qBuscaDadosAval.FieldByName('data_avaliacao').AsDateTime;
        EditTipo.Text := qBuscaDadosAval.FieldByName('tipo').Text;
        lblPlaca.Text := qBuscaDadosAval.FieldByName('placa').Text;
        MemoModelo.Text := qBuscaDadosAval.FieldByName('modelo').text;
        EditAno.Text :=  qBuscaDadosAval.FieldByName('ano').text;
        EditKM.text :=  CurrToStr(qBuscaDadosAval.FieldByName('km').AsCurrency);
        EditOpc.text :=  qBuscaDadosAval.FieldByName('opcionais').text;
        if qBuscaDadosAval.FieldByName('vlr_fipe').IsNull then
        EditVlrFipe.text := '0,00'
        Else
        EditVlrFipe. text := CurrToStr(qBuscaDadosAval.FieldByName('vlr_fipe').AsCurrency);

        if qBuscaDadosAval.FieldByName('total_avarias').IsNull then
        EditVlrAvarias.text := '0,00'
        Else
        EditVlrAvarias. text := CurrToStr(qBuscaDadosAval.FieldByName('vlr_fipe').AsCurrency);


        EditVlrCompra.Text := CurrToStr(qBuscaDadosAval.FieldByName('avaliacao').AsCurrency);
        EditVlrTroca.Text := CurrToStr(qBuscaDadosAval.FieldByName('VLR_TROCA').AsCurrency);

        TabControl1.GotoVisibleTab(1, TTabTransition.Slide);
    End
    Else
    Begin
      ShowMessage('Não foi encontrado veículo com estes parametros de consulta');
    ENd;

     TLoading.Hide;

   End);


  End).Start;

end;

procedure TFormConsultaAvaliacao.Image3Click(Sender: TObject);
begin
   try
      if EditVlrCompra.Enabled = true then
      Begin

       if EditVlrCompra.Text <> '' then
       Begin

        TLoading.Show(FormConsultaAvaliacao, 'Atualizando avaliação...');

        TThread.CreateAnonymousThread(procedure
         Begin

          TThread.Synchronize(nil, procedure
          Begin

            qAtualizaAvaliacao.SQL.Clear;
            qAtualizaAvaliacao.SQL.Add('update tbavaliacoes set avaliacao = :valor where placa = :placa');
            qAtualizaAvaliacao.ParamByName('valor').AsCurrency := StrToCurr(EditVlrCompra.Text);
            qAtualizaAvaliacao.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
            qAtualizaAvaliacao.Execute;

            var query : TUniQuery;
            query := TUniQuery.Create(self);
            query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

            query.SQL.Clear;
            query.SQL.Add('update tbcompras_atendimento set VlrAvaliacao=:vlr where placa=:placa and situacao <> ''Concluido''');
            query.ParamByName('vlr').AsCurrency := StrToCurr(EditVlrCompra.Text);
            query.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
            //query.ParamByName('id').AsInteger := FormGestaoAvaliacoes.DBGrid1.DataSource.DataSet.FieldByName('id').AsInteger;
            query.Execute;

            query.DisposeOf;

            TLoading.Hide;

            ShowMessage('Avaliação atualizada com sucesso!');

          End);

         End).Start;

       End
       Else
       Begin
        TLoading.Hide;
        ShowMessage('Campo valor inválido');
       End;
      End
      Else
      Begin

       TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

      End;
    except
      on e: Exception do Begin
       TLoading.Hide;
       ShowMessage('Falha ao aplicar esta operação, refaça o processo.'+#13+e.Message);
      End;
  end;

end;

procedure TFormConsultaAvaliacao.Image4Click(Sender: TObject);
begin

  TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormConsultaAvaliacao.ImgFotosClick(Sender: TObject);
begin

  TLoading.Show(FormConsultaAvaliacao, 'Buscando fotos...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

   qCarregaFoto.SQL.Clear;
   qCarregaFoto.SQL.Add('select Foto from tbFotosAvaliacoes where placa=:placa and id_avaliacao=:id');
   qCarregaFoto.ParamByName('id').AsInteger := id_avaliacao;
   qCarregaFoto.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
   qCarregaFoto.Open;

   TThread.Synchronize(nil, procedure
   Begin

    TLoading.Hide;

    TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

   End);

  End).Start;

end;

procedure TFormConsultaAvaliacao.ImgFotosMouseEnter(Sender: TObject);
begin

 ImgFotos.Opacity := 0.3;

end;

procedure TFormConsultaAvaliacao.ImgFotosMouseLeave(Sender: TObject);
begin

 ImgFotos.Opacity := 1;

end;

procedure TFormConsultaAvaliacao.imgPesqClick(Sender: TObject);
begin

 TLoading.Show(FormConsultaAvaliacao, 'Consultando placa...');

 TThread.CreateAnonymousThread(procedure
 Begin
  Sleep(1000);
   TThread.Synchronize(nil, procedure
   Begin

     CarregaAvaliacoes( EditPlacaConsultaAval.Text );

      TLoading.Hide;

   End);

 End).Start;

end;

procedure TFormConsultaAvaliacao.imgPesqMouseEnter(Sender: TObject);
begin

 imgPesq.Opacity := 0.3;

end;

procedure TFormConsultaAvaliacao.imgPesqMouseLeave(Sender: TObject);
begin

 imgPesq.Opacity := 1;

end;

procedure TFormConsultaAvaliacao.ListBox1ItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin

 if Item.Text = 'TOTAL AVARIA: R$ 0' then
 Begin
   ShowMessage('Não há avarias adicionadas a este veículo!');
 End
 Else
 Begin

  QBuscaAvarias.Filter := 'placa ='+QuotedStr(EditPlacaConsultaAval.Text);
  QBuscaAvarias.Filtered := true;
  QBuscaAvarias.Open;

  TabControl1.GotoVisibleTab(5, TTabTransition.Slide);

 End;

 if Item.Text = '>> VISUALIZAR FOTOS <<' then
 Begin

  TLoading.Show(FormConsultaAvaliacao, 'Buscando fotos...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);
   qCarregaFoto.SQL.Clear;
   qCarregaFoto.SQL.Add('select Foto from tbFotosAvaliacoes where placa=:placa');
   qCarregaFoto.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
   qCarregaFoto.Open;

   TThread.Synchronize(nil, procedure
   Begin

    TLoading.Hide;

    TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

   End);

  End).Start;

 End;

 if Item.Text = '>> HISTÓRICO <<' then
 Begin
    if not DataModuleBancoFB.UniConnectionMySQL.Connected then
           DataModuleBancoFB.UniConnectionMySQL.Connect;

           qBuscaHistorico.SQL.Clear;
           qBuscaHistorico.SQL.Add('select * from tbavaliacoes where placa = :placa');
           qBuscaHistorico.ParamByName('placa').Text := EditPlacaConsultaAval.Text;
           qBuscaHistorico.Open;

           if qBuscaHistorico.RecordCount > 1 then
           Begin

                TabControl1.GotoVisibleTab(4, TTabTransition.Slide);

           End
           Else
           Begin

              ShowMessage('Não há histórico de avaliações para a placa');

           End;
 End;

 if Item.Text = '>> PROPOSTAS <<' then
 Begin

  TLoading.Show(FormConsultaAvaliacao, 'Consultando Propostas...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

   qBuscaPropostas.Close;
   qBuscaPropostas.Filter := 'placa='+QuotedStr(EditPlacaConsultaAval.Text);
   qBuscaPropostas.Filtered := true;
   qBuscaPropostas.Open;

   TThread.Synchronize(nil, procedure
   Begin

    if qBuscaPropostas.RecordCount > 0 then
    Begin
      TLoading.Hide;
      TabControl1.GotoVisibleTab(6, TTabTransition.Slide);
    End
    Else
    Begin
      TLoading.Hide;
      ShowMessage('Nenhuma proposta para esta placa encontrada');
      Abort;
    End;

   End);

  End).Start;

 End;


end;

procedure TFormConsultaAvaliacao.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

  EditPlacaConsultaAval.Text := TListItemText( AItem.Objects.FindDrawable('TextPlaca')).Text;

  TLoading.Show(FormConsultaAvaliacao, 'Consultando placa '+EditPlacaConsultaAval.Text+'...Aguarde...');

  TThread.CreateAnonymousThread(procedure
  Begin
  Sleep(2000);

   qBuscaDadosAval.SQL.Clear;
   qBuscaDadosAval.SQL.Add('select * from tbavaliacoes where placa=:placa and modelo=:modelo and id=:id');
   qBuscaDadosAval.ParamByName('placa').Text := TListItemText( AItem.Objects.FindDrawable('TextPlaca')).Text;
   qBuscaDadosAval.ParamByName('modelo').Text := TListItemText( AItem.Objects.FindDrawable('TextModelo')).Text;
   qBuscaDadosAval.ParamByName('id').AsInteger := StrToInt(TListItemText( AItem.Objects.FindDrawable('TextId')).Text);

   id_avaliacao := StrToInt(TListItemText( AItem.Objects.FindDrawable('TextId')).Text);

   qBuscaDadosAval.Open;

   TThread.Synchronize(nil, procedure
   Begin
    if qBuscaDadosAval.RecordCount > 0 then
    Begin

      DtAvaliacao.DateTime := qBuscaDadosAval.FieldByName('data_avaliacao').AsDateTime;
      EditTipo.Text := qBuscaDadosAval.FieldByName('tipo').Text;
      lblPlaca.Text := qBuscaDadosAval.FieldByName('placa').Text;
      MemoModelo.Text := qBuscaDadosAval.FieldByName('modelo').text;
      EditAno.Text :=  qBuscaDadosAval.FieldByName('ano').text;
      EditKM.text :=  CurrToStr(qBuscaDadosAval.FieldByName('km').AsCurrency);
      EditOpc.text :=  qBuscaDadosAval.FieldByName('opcionais').text;
      if qBuscaDadosAval.FieldByName('vlr_fipe').IsNull then
      EditVlrFipe.text := '0,00'
      Else
      EditVlrFipe. text := CurrToStr(qBuscaDadosAval.FieldByName('vlr_fipe').AsCurrency);

      if qBuscaDadosAval.FieldByName('total_avarias').IsNull then
      EditVlrAvarias.text := '0,00'
      Else
      EditVlrAvarias. text := CurrToStr(qBuscaDadosAval.FieldByName('total_avarias').AsCurrency);


      EditVlrCompra.Text := CurrToStr(qBuscaDadosAval.FieldByName('avaliacao').AsCurrency);
      EditVlrTroca.Text := CurrToStr(qBuscaDadosAval.FieldByName('VLR_TROCA').AsCurrency);

      TabControl1.GotoVisibleTab(1, TTabTransition.Slide);
    End
    Else
    Begin
      ShowMessage('Não foi encontrado veículo com estes parametros de consulta');
    end;

     TLoading.Hide;

   End);


  End).Start;

end;

procedure TFormConsultaAvaliacao.ListView1PullRefresh(Sender: TObject);
begin

 EditPlacaConsultaAval.Text := '';

 TLoading.Show(FormConsultaAvaliacao , 'Aguarde, atualizando avaliações...');

 TThread.CreateAnonymousThread(procedure
 Begin
  Sleep(1000);

  qBuscaTodasAvaliacoesListView.SQL.Clear;
  qBuscaTodasAvaliacoesListView.SQL.Add('select placa, data_avaliacao, nome_cliente, telefone,');
  qBuscaTodasAvaliacoesListView.SQL.Add('modelo, TIPO  from tbavaliacoes order by data_avaliacao desc');
  qBuscaTodasAvaliacoesListView.Open;

  TThread.Synchronize(nil, procedure
  Begin

   TLoading.Hide;

   ShowMessage('Avaliações atualizadas!');

  End);

 End).Start;

end;

procedure TFormConsultaAvaliacao.ListViewFotosItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

   TabControl1.GotoVisibleTab(3, TTabTransition.Slide);

end;

procedure TFormConsultaAvaliacao.ListViewHistoricoAvaliacoesItemClick(
  const Sender: TObject; const AItem: TListViewItem);
begin

 EditPlacaConsultaAval.Text := qBuscaHistoricoplaca.Text;
 TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormConsultaAvaliacao.Rectangle2Click(Sender: TObject);
begin

       TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

end;

procedure TFormConsultaAvaliacao.Rectangle5Click(Sender: TObject);
begin

  TabControl1.GotoVisibleTab(1, TTabTransition.Slide);

end;

procedure TFormConsultaAvaliacao.Rectangle7Click(Sender: TObject);
begin
  TabControl1.GotoVisibleTab(1, TTabTransition.Slide);
end;

end.

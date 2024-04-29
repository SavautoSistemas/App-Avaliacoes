unit UformNovaAvaliacaoBeta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Colors,
  FMX.ListBox, FMX.Ani, FMX.Layouts, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, Data.DB, MemDS, DBAccess, Uni, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Media,
  FMX.ISMobilePhotoGallery, u99Permissions, System.Permissions, FMX.DialogService,
  System.Actions, FMX.ActnList, FMX.MediaLibrary.Actions, FMX.StdActns, System.StrUtils,
  {$IFDEF ANDROID}
  Androidapi.Helpers,
  Androidapi.JNI.Os,
  {$ENDIF}
  System.JSON.Types, System.JSON, uFancyDialog, UFrameListaFotos;

type
  TFormNovaAvaliacaoBeta = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem3: TTabItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    EditKM: TEdit;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    ComboCores: TComboBox;
    ComboOpcionais: TComboBox;
    ComboBoxPortas: TComboBox;
    LblStatusAvaliacao: TLabel;
    StyleBook1: TStyleBook;
    VertScrollBox1: TVertScrollBox;
    Layout1: TLayout;
    Image3: TImage;
    Rectangle10: TRectangle;
    img_voltar: TImage;
    Img_atualizar: TImage;
    img_avancar: TImage;
    Layout2: TLayout;
    Rectangle11: TRectangle;
    Image2: TImage;
    Image4: TImage;
    Image7: TImage;
    tab_fipe: TTabItem;
    Layout3: TLayout;
    Rectangle2: TRectangle;
    Image1: TImage;
    Rectangle3: TRectangle;
    EditAno: TEdit;
    rectTopBusca: TRectangle;
    editNomeModelo: TEdit;
    qBuscaFipe: TUniQuery;
    qBuscaFipemarca: TStringField;
    qBuscaFipemodelo: TStringField;
    qBuscaFipecod_fipe: TStringField;
    qBuscaFipevlr_fipe: TFloatField;
    ÿ: TImage;
    Img_buscar_fipe: TImage;
    tab_checkList: TTabItem;
    tab_CheckListItens: TTabItem;
    Rectangle12: TRectangle;
    Image5: TImage;
    Image8: TImage;
    VertScrollBox2: TVertScrollBox;
    rectTopo: TRectangle;
    Label2: TLabel;
    Tab_Fotos: TTabItem;
    Rectangle13: TRectangle;
    Image10: TImage;
    Image11: TImage;
    qBuscaItensCheck: TUniQuery;
    qBuscaItensCheckid: TIntegerField;
    qBuscaItensChecktipo: TStringField;
    qBuscaItensChecknome: TStringField;
    qBuscaItensCheckvalor: TFloatField;
    img_voltar_check: TImage;
    Image12: TImage;
    qRemoveReparos: TUniQuery;
    Rectangle17: TRectangle;
    Image13: TImage;
    Image14: TImage;
    img_voltar_camera: TImage;
    img_foto: TImage;
    CameraComponent1: TCameraComponent;
    ActionList1: TActionList;
    Action1: TAction;
    TakePhotoFromLibrary: TTakePhotoFromLibraryAction;
    TakePhotoFromCamera: TTakePhotoFromCameraAction;
    img_finaliza_Avaliacao: TImage;
    img_avanca_foto: TImage;
    Rectangle19: TRectangle;
    Label3: TLabel;
    ComboBoxCat: TComboBox;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    EditPlacaAvaliacao: TEdit;
    Image15: TImage;
    Rectangle4: TRectangle;
    Image17: TImage;
    ComboBoxTipo: TComboBox;
    Rectangle20: TRectangle;
    Image18: TImage;
    EditTelefone: TEdit;
    Rectangle21: TRectangle;
    Image19: TImage;
    EditClienteAvaliacao: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    qAtualizaReparoAvaliacao: TUniQuery;
    qInsereFoto: TUniQuery;
    Layout5: TLayout;
    ListViewFipesAvaliacao: TListView;
    Tab_fipeAPI: TTabItem;
    Layout6: TLayout;
    ListView2: TListView;
    Layout7: TLayout;
    Rectangle22: TRectangle;
    EditAnoFipe: TEdit;
    Rectangle23: TRectangle;
    EditModeloFipe: TEdit;
    Image20: TImage;
    Rectangle24: TRectangle;
    Image21: TImage;
    Image22: TImage;
    BtnFormTesteShow: TButton;
    Label12: TLabel;
    Rectangle25: TRectangle;
    ComboBoxIPVA: TComboBox;
    ListViewTiposPreparo: TListView;
    tab_consulta_placa: TTabItem;
    Layout8: TLayout;
    Rectangle14: TRectangle;
    Image23: TImage;
    img_voltar_consultaPlaca: TImage;
    Image25: TImage;
    img_Confirmar_ConsultaPlaca: TImage;
    Layout9: TLayout;
    Rectangle15: TRectangle;
    Label13: TLabel;
    EditConsultaPlaca: TEdit;
    btnConsultaPlaca: TRectangle;
    Label14: TLabel;
    Layout10: TLayout;
    Layout11: TLayout;
    ComboCategoriaItem: TComboBox;
    Label15: TLabel;
    Layout12: TLayout;
    Layout13: TLayout;
    Label16: TLabel;
    Rectangle16: TRectangle;
    MemoObs: TMemo;
    Layout14: TLayout;
    Image6: TImage;
    Image9: TImage;
    tab_listaFotos: TTabItem;
    Rectangle9: TRectangle;
    Image24: TImage;
    Image26: TImage;
    Rectangle18: TRectangle;
    Image16: TImage;
    img_galeria: TImage;
    img_camera: TImage;
    img_upload_foto: TImage;
    Rectangle26: TRectangle;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    ListBoxItensReparo: TListBox;
    img_check: TImage;
    img_uncheck: TImage;
    Layout15: TLayout;
    Layout16: TLayout;
    ImageWatts: TImage;
    OpenDialog1: TOpenDialog;
    PhotoGalery: TISPhotoGallery;
    imgExcluirLista: TImage;
    btnEnviarFotos: TButton;
    VertScrollBoxFotos: TVertScrollBox;
    Label9: TLabel;
    Rectangle27: TRectangle;
    editMecanico: TEdit;
    Rectangle28: TRectangle;
    Rectangle29: TRectangle;
    Image31: TImage;
    editPesqNomeAvaria: TEdit;
    TabItemAlteracoesVeiculares: TTabItem;
    Rectangle30: TRectangle;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    VertScrollBoxAlteracaoVeicular: TVertScrollBox;
    Rectangle31: TRectangle;
    Rectangle32: TRectangle;
    Edit1: TEdit;
    Image36: TImage;
    ListBoxItensAlterVeiculares: TListBox;
    procedure btnVoltar2Click(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboCoresEnter(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Img_atualizarClick(Sender: TObject);
    procedure img_avancarClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure img_voltarClick(Sender: TObject);
    procedure btn_busca_fipeClick(Sender: TObject);
    procedure ÿClick(Sender: TObject);
    procedure Img_buscar_fipeClick(Sender: TObject);
    procedure rctMecanicaClick(Sender: TObject);
    procedure img_voltar_checkClick(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure ListBoxItensCheckListClick(Sender: TObject);
    procedure rectLatariaClick(Sender: TObject);
    procedure Rectangle15Click(Sender: TObject);
    procedure Rectangle14Click(Sender: TObject);
    procedure img_voltar_cameraClick(Sender: TObject);
    procedure img_cameraClick(Sender: TObject);
    procedure img_galeriaClick(Sender: TObject);
    procedure img_upload_fotoClick(Sender: TObject);
    procedure img_finaliza_AvaliacaoClick(Sender: TObject);
    procedure img_avanca_fotoClick(Sender: TObject);
    procedure CameraComponent1SampleBufferReady(Sender: TObject;
      const ATime: TMediaTime);
    procedure FormActivate(Sender: TObject);
    procedure TakePhotoFromCameraDidFinishTaking(Image: TBitmap);
    procedure TakePhotoFromLibraryDidFinishTaking(Image: TBitmap);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnFormTesteShowClick(Sender: TObject);
    procedure Image22Click(Sender: TObject);
    procedure Image20Click(Sender: TObject);
    procedure ListView2ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewItensReparosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewTiposPreparoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure img_finaliza_AvaliacaoMouseEnter(Sender: TObject);
    procedure img_finaliza_AvaliacaoMouseLeave(Sender: TObject);
    procedure img_voltar_cameraMouseEnter(Sender: TObject);
    procedure img_voltar_cameraMouseLeave(Sender: TObject);
    procedure img_avancarMouseEnter(Sender: TObject);
    procedure img_avancarMouseLeave(Sender: TObject);
    procedure img_cameraMouseEnter(Sender: TObject);
    procedure img_cameraMouseLeave(Sender: TObject);
    procedure EditPlacaAvaliacaoExit(Sender: TObject);
    procedure img_voltar_consultaPlacaClick(Sender: TObject);
    procedure img_voltar_consultaPlacaMouseEnter(Sender: TObject);
    procedure img_voltar_consultaPlacaMouseLeave(Sender: TObject);
    procedure img_Confirmar_ConsultaPlacaMouseEnter(Sender: TObject);
    procedure img_Confirmar_ConsultaPlacaMouseLeave(Sender: TObject);
    procedure btnConsultaPlacaMouseEnter(Sender: TObject);
    procedure btnConsultaPlacaMouseLeave(Sender: TObject);
    procedure btnConsultaPlacaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewTiposPreparoItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure MemoObsMouseEnter(Sender: TObject);
    procedure MemoObsMouseLeave(Sender: TObject);
    procedure ListViewItensReparosItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure Image9Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure ListBoxItensReparoItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure EditTelefoneExit(Sender: TObject);
    procedure ImageWattsMouseEnter(Sender: TObject);
    procedure ImageWattsMouseLeave(Sender: TObject);
    procedure MemoObsEnter(Sender: TObject);
    procedure MemoObsExit(Sender: TObject);
    procedure PhotoGaleryTakePhoto(Sender: TObject; aBitmap: TBitmap);
    procedure ListViewFotosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewFotosItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure btnEnviarFotosClick(Sender: TObject);
    procedure imgExcluirListaClick(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure Image36Click(Sender: TObject);

  private
    { Private declarations }

    dialog : TFancyDialog;

    QtdFotosEnviadas, ID, ID_REPARO : integer;
    VLR_REPARO : Currency;

    Permissao : T99Permissions;
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage, T : string;

    procedure LibraryPermissionRequestResult(
    Sender : Tobject; const APermissons: TArray<string>;
    const AGrantResults: TArray<TPermissionStatus> );

   procedure DisplayCamera(Sender : TObject; const APermissions: TArray<string>;
                                          const APostProc: TProc);

    procedure DisplayMessageLibrary(
    Sender : TObject;
    const APermissions: TArray<string>;
    const APostProc: TProc
    );
    procedure TakePictureReqResult(Sender: TObject;
      const APerissions: TArray<string>;
      const AGrantResults: TArray<tpermissionstatus>);
    procedure AddFipeLV(id: integer; modelo, marca, cod_fipe, ano, comb: string; valor: Currency);
    procedure GetFipe;
    procedure ProcessarGET;
    procedure ProcessarGetErro(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure CarregaReparos(tipo: string);
    procedure ProcessaCheck(id: integer; nome, tamanho: string; valor: currency);
    procedure InsereReparoAvaliacao(id_avaliacao, id_preparo: integer; placa,
      nome_reparo: string; valor_reparo: currency; tipo_reparo, tamanho: string);
    procedure ListaTipoPreparo;
    procedure InsereReparoVistoria(id_avaliacao, id_preparo: integer; placa,
      nome_reparo: string; valor_reparo: currency; tipo_reparo: string);
    procedure ConsultaPlaca(placa: string);
    procedure ConsultaPlacaBeta(placa: string);
    procedure InsereAvaliacao(id_atn:integer; placa, modelo, ano, cod_fipe: string;
      vlr_fipe: Currency; nome, portas, cor, opcionais, telefone, tipo,
      ipva: string);
    procedure AtualizaCategoriaReparo(tipo: string);
    procedure GeraCategoriaParaItens(id: integer);
    procedure ProcessaTamanhoReparo(id, id_reparo: integer; tamanho: string);
    procedure LimpaProcessaCheck(id: integer; nome, tamanho: string;
      valor: currency);
    procedure DeletaReparoAvaliacao(id_avaliacao, id_preparo: integer; placa,
      nome_reparo: string; valor_reparo: currency; tipo_reparo,
      tamanho: string);
    procedure ProcessaImagem(listview: TListViewItem);
    procedure ConsultaExisteAvaliacao(placa: string);
    procedure CarregaCores(combo: TComboBox);
    procedure VerificaWatts;
    procedure ClickExcluir(Sender: TObject);
    procedure ClickRct(Sender: TObject);
    procedure ClickEnviaFoto(Sender: TObject);
    procedure ClearVertScrollBox(VSBox: TVertScrollBox; Index: integer=-1);
    procedure FilterLst(Astr: string);
    procedure CarregaReparosNome(tipo, nome: string);
    procedure CarregaListaAltVeiculares(nome: string);
  public
    { Public declarations }
    VREF_FIPE, VMODELO, VCOD_FIPE, VANO, TIPO_REPARO, COMB, NOME_REPARO : String;
    VVLR_FIPE : Currency;
    Enviada, LIBERADO, ID_LISTVIEW, id_listbox, id_fotos : integer;
    Imagem : TBitmap;
    procedure EnviaFoto(foto: TBitmap; id: integer);
    procedure EnviaFotoTry(foto: TBitmap; id: integer);


  end;

var
  FormNovaAvaliacaoBeta: TFormNovaAvaliacaoBeta;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaVistoriaBeta, UformPrincipalBeta, UFormTeste,
  UFormVistoriasFeitas, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl, UFrameItemReparoCheckBox,
  UDataModulePuschNotification, UFormApp, UFormAvariasBeta,
  UFrameItemAlteracaoVeicular;



function GetClickedDrawable(const AItem: TListViewItem; APoint: TPointF): TListItemDrawable;
var
  I: Integer;
begin
  Result := nil;
  // Fudge for statusbar height if using iOS. Should be done properly
  APoint := PointF(APoint.X, APoint.Y - 20);
  for I := 0 to AItem.Objects.ViewList.Count - 1 do
  begin
    if AItem.Objects.ViewList[I].InLocalRect(APoint) then
    begin
      Result := AItem.Objects.ViewList[I];
      Break;
    end;
  end;
end;

procedure TFormNovaAvaliacaoBeta.ListaTipoPreparo;
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

  ListViewTiposPreparo.Items.Clear;

  query.SQL.Clear;
  query.SQL.Add('select * from tbtiporeparo order by id');
  query.Open;

  query.First;

  while not query.Eof do
  Begin

    with ListViewTiposPreparo.Items.Add Do
    Begin
      TListItemText(Objects.FindDrawable('TextTipoPreparo')).Text   := query.FieldByName('nome').Text;
      TListItemText(Objects.FindDrawable('TextCategoria')).Text     := 'Categoria';

      if query.FieldByName('categoria').Text = '' then
       TListItemText(Objects.FindDrawable('TextItemCategoria')).Text := '???'
      Else
       TListItemText(Objects.FindDrawable('TextItemCategoria')).Text := query.FieldByName('categoria').Text;

    End;
    Query.Next;
  End;

    Except
    On E:Exception Do
    Begin
      ShowMessage('Falha ao listar tipos de reparo! ' + E.Message);
    End;
 End;

End;

procedure TFormNovaAvaliacaoBeta.InsereReparoVistoria(
 id_avaliacao : integer;
 id_preparo : integer;
 placa : string;
 nome_reparo : string;
 valor_reparo : currency;
 tipo_reparo : string);
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

   TLoading.Show( FormNovaAvaliacaoBeta, 'Aguarde...' );

   TThread.CreateAnonymousThread(procedure
   Begin

      Sleep(1000);

      QueryConf.SQL.Clear;
      QueryConf.SQL.Add('select * from tbvistoriareparos where id_vistoria=:id and id_reparo=:id_reparo');
      QueryConf.ParamByName('id').AsInteger := id_avaliacao;
      QueryConf.ParamByName('id_reparo').AsInteger := id_preparo;
      QueryConf.Open;

      TThread.Synchronize( TThread.CurrentThread,
      procedure
      Begin

         if QueryConf.RecordCount > 0 then
         Begin

          query.SQL.Clear;
          query.SQL.Add('delete from tbvistoriareparos where id_vistoria=:id and id_reparo=:id_reparo');
          query.ParamByName('id').AsInteger := id_avaliacao;
          query.ParamByName('id_reparo').AsInteger := id_preparo;
          query.Execute;

          //CarregaReparos( tipo_reparo );

          TLoading.Hide;

         End
         Else
         Begin

          query.SQL.Clear;
          query.SQL.Add('insert into tbvistoriareparos ( id_vistoria, placa, id_reparo, nome_reparo, valor_reparo, tipo_reparo )');
          query.SQL.Add('values (:id, :placa, :id_reparo, :nome_reparo, :vlr, :tipo_reparo)');
          query.ParamByName('id').AsInteger := id_avaliacao;
          query.ParamByName('id_reparo').AsInteger := id_preparo;
          query.ParamByName('placa').Text := placa;
          query.ParamByName('nome_reparo').Text := nome_reparo;
          query.ParamByName('vlr').AsCurrency := valor_reparo;
          query.ParamByName('tipo_reparo').Text := tipo_reparo;
          query.ExecSQL;

          //aCarregaReparos( tipo_reparo );

          TLoading.Hide;

         End;

         TLoading.Hide;

      End);

   End).Start;

ENd;

procedure TFormNovaAvaliacaoBeta.InsereReparoAvaliacao(
 id_avaliacao : integer;
 id_preparo : integer;
 placa : string;
 nome_reparo : string;
 valor_reparo : currency;
 tipo_reparo, tamanho : string);
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;


 try

      QueryConf.SQL.Clear;
      QueryConf.SQL.Add('select * from tbavaliacoesreparos where id_vistoria=:id and id_reparo=:id_reparo');
      QueryConf.ParamByName('id').AsInteger := id_avaliacao;
      QueryConf.ParamByName('id_reparo').AsInteger := id_preparo;
      QueryConf.Open;

         if QueryConf.RecordCount > 0 then
         Begin

          query.SQL.Clear;
          query.SQL.Add('delete from tbavaliacoesreparos where id_vistoria=:id and id_reparo=:id_reparo');
          query.ParamByName('id').AsInteger := id_avaliacao;
          query.ParamByName('id_reparo').AsInteger := id_preparo;
          query.Execute;

         End
         Else
         Begin

          query.SQL.Clear;
          query.SQL.Add('insert into tbavaliacoesreparos ( id_vistoria, placa, id_reparo, nome_reparo, valor_reparo, tipo_reparo, tamanho )');
          query.SQL.Add('values (:id, :placa, :id_reparo, :nome_reparo, :vlr, :tipo_reparo, :tamanho)');
          query.ParamByName('id').AsInteger := id_avaliacao;
          query.ParamByName('id_reparo').AsInteger := id_preparo;
          query.ParamByName('placa').Text := placa;
          query.ParamByName('nome_reparo').Text := nome_reparo;
          query.ParamByName('vlr').AsCurrency := valor_reparo;
          query.ParamByName('tipo_reparo').Text := tipo_reparo;
          query.ParamByName('tamanho').Text := tamanho;
          query.ExecSQL;

          query.DisposeOf;


         End;

  Except On
   E:Exception Do
    Begin

       dialog.Show( TIconDialog.Error , ':(' , 'Falha ao processar item: ' + e.Message);

    End;

 End;
End;

procedure TFormNovaAvaliacaoBeta.DeletaReparoAvaliacao(
 id_avaliacao : integer;
 id_preparo : integer;
 placa : string;
 nome_reparo : string;
 valor_reparo : currency;
 tipo_reparo, tamanho : string);
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;


 try

      QueryConf.SQL.Clear;
      QueryConf.SQL.Add('select * from tbavaliacoesreparos where id_vistoria=:id and id_reparo=:id_reparo');
      QueryConf.ParamByName('id').AsInteger := id_avaliacao;
      QueryConf.ParamByName('id_reparo').AsInteger := id_preparo;
      QueryConf.Open;

         if QueryConf.RecordCount > 0 then
         Begin

          query.SQL.Clear;
          query.SQL.Add('delete from tbavaliacoesreparos where id_vistoria=:id and id_reparo=:id_reparo');
          query.ParamByName('id').AsInteger := id_avaliacao;
          query.ParamByName('id_reparo').AsInteger := id_preparo;
          query.Execute;

          query.DisposeOf;


         End;

  Except On
   E:Exception Do
    Begin

       dialog.Show( TIconDialog.Error , ':(' , 'Falha ao Deletar item: ' + e.Message);

    End;

 End;

End;


procedure TFormNovaAvaliacaoBeta.ClickExcluir(Sender: TObject); // btnMenu
var
      f: TFrameListaFotos;
    btn: TSpeedButton;
    lb : TListBoxItem;
begin

    //lb := TListBoxItem.Create(ListBoxFotos);

    btn := Sender as TSpeedButton;

    // Capturar frame que contem o botao clicado...
    f := btn.Parent as TFrameListaFotos;

    //f := TFrameListaFotos.Create(btn.Parent);

    //f.Parent := lb;

    //ListBoxFotos.Items.Delete( lb.Index );
    f.DisposeOf;

    //ListBoxFotos.Items.
    //f.lblStatusFoto.text := 'Clicou em excluir id ' + f.Tag.ToString ;
    //ListBoxFotos.Items.Delete( f.Tag );
end;


procedure TFormNovaAvaliacaoBeta.ClickRct(Sender: TObject);
begin
//
end;

procedure TFormNovaAvaliacaoBeta.ClickEnviaFoto(Sender: TObject);
var
      f: TFrameListaFotos;
    img: TImage;
begin

    TLoading.Show( FormNovaAvaliacaoBeta, 'Enviando foto...' );

    TThread.CreateAnonymousThread(procedure
    Begin
     Sleep(500);

        TThread.Synchronize(nil, procedure
        Begin

          img := Sender as TImage;
          f := img.Parent as TFrameListaFotos;
          EnviaFotoTry( f.imageFoto.Bitmap , DataModuleBancoFB.ID_AVALIACAO );

          TLoading.Hide;

          if Enviada = 1 then
          Begin
              f.lblStatusFoto.Text := 'Foto enviada com sucesso';
              f.btnLixeira.Visible := false;
              f.imgRefresh.Visible := false;
          End;
          Enviada := 0;

        End);

     End).Start;

end;

procedure TFormNovaAvaliacaoBeta.TakePhotoFromCameraDidFinishTaking(
  Image: TBitmap);
begin

 img_foto.Bitmap := Image;

end;

procedure TFormNovaAvaliacaoBeta.PhotoGaleryTakePhoto(Sender: TObject;
  aBitmap: TBitmap);
  var
   img :  TImage;
   Fframe : TFrameListaFotos;
   item : TVertScrollBox;
   i : integer;
Begin

           //ClearVertScrollBox(VertScrollBoxFotos);

           VertScrollBoxFotos.BeginUpdate;

           img := TImage.Create(self);
           img.Bitmap := aBitmap;

           //cria frame
           Fframe := TFrameListaFotos.Create(nil);
           Fframe.Position.Y := 9999999999;
           Fframe.Align := TAlignLayout.Top;
           Fframe.imageFoto.Bitmap := img.Bitmap;
           Fframe.lblStatusFoto.Text := 'Foto pendente de envio ' + id_fotos.ToString;
           FFrame.btnLixeira.OnClick   := ClickExcluir;
           FFrame.imgRefresh.OnClick   := ClickEnviaFoto;
           FFrame.Tag                  := id_fotos;

           VertScrollBoxFotos.AddObject(Fframe);

           VertScrollBoxFotos.EndUpdate;

           img.DisposeOf;

           id_fotos := id_fotos +1;


end;


procedure TFormNovaAvaliacaoBeta.ProcessaCheck(id : integer; nome, tamanho : string; valor: currency);
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

   if DataModuleBancoFB.ID_VISTORIA > 0 then
   Begin
    InsereReparoVistoria( DataModuleBancoFB.ID_VISTORIA,
                          id,
                          FormNovaVistoriaBeta.EditPlaca.Text,
                          nome,
                          valor,
                          TIPO_REPARO );
   End;

   if DataModuleBancoFB.ID_AVALIACAO > 0 then
   Begin
    InsereReparoAvaliacao( DataModuleBancoFB.ID_AVALIACAO,
                           id,
                           FormNovaAvaliacaoBeta.EditPlacaAvaliacao.Text,
                           nome,
                           valor,
                           TIPO_REPARO,
                           tamanho );
   End;

   Except
   On E:Exception Do
   Begin

    ShowMessage('Falha ao atualizar lista de reparos! ' + E.Message);

   End;

 End;

End;

procedure TFormNovaAvaliacaoBeta.LimpaProcessaCheck(id : integer; nome, tamanho : string; valor: currency);
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

   if DataModuleBancoFB.ID_VISTORIA > 0 then
   Begin
    InsereReparoVistoria( DataModuleBancoFB.ID_VISTORIA,
                          id,
                          FormNovaVistoriaBeta.EditPlaca.Text,
                          nome,
                          valor,
                          TIPO_REPARO );
   End;

   if DataModuleBancoFB.ID_AVALIACAO > 0 then
   Begin
    DeletaReparoAvaliacao( DataModuleBancoFB.ID_AVALIACAO,
                           id,
                           FormNovaAvaliacaoBeta.EditPlacaAvaliacao.Text,
                           nome,
                           valor,
                           TIPO_REPARO,
                           tamanho );
   End;

   Except
   On E:Exception Do
   Begin

    ShowMessage('Falha ao atualizar lista de reparos! ' + E.Message);

   End;

 End;

End;

procedure TFormNovaAvaliacaoBeta.CarregaReparos(tipo : string);
var
 query, QueryConf : TUniQuery;
 item : TListBoxItem;
 FFrame: TFrameItemReparoCheckBox;
begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

  ListBoxItensReparo.Items.Clear;

  query.SQL.Clear;
  query.SQL.Add('select * from tbreparos where tipo=:tipo order by ID');
  query.ParamByName('tipo').Text := tipo;
  query.Open;

  query.First;

  while not query.Eof do
  Begin

      ListBoxItensReparo.BeginUpdate;

      item := TListBoxItem.Create(self);
      FFrame := TFrameItemReparoCheckBox.Create(self);
      FFrame.Name := 'FFrame'+ IntToStr(query.FieldByName('id').asinteger);

      FFrame.Parent := item;
      FFrame.Align := TAlignLayout.Client;

      item.Height := 102;

      FFrame.lblItemReparo.Text := query.FieldByName('nome').Text;
      FFrame.lblId.Text         := IntToStr(query.FieldByName('id').AsInteger);
      FFrame.lblVlrReparo.Text  := CurrToStr(query.FieldByName('valor').AsCurrency);
      FFrame.imgCheck.Bitmap    := FFrame.img_uncheck.Bitmap;
      FFrame.lblIdPlaca.Text    := '';


      FFrame.img_check.Visible   := false;
      FFrame.img_uncheck.Visible := false;

        if DataModuleBancoFB.ID_VISTORIA > 0 then
        Begin
          QueryConf.SQL.Clear;
          QueryConf.SQL.Add('select * from tbVistoriaReparos where id_vistoria=:id and id_reparo=:id_reparo');
          QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_VISTORIA;
          QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
          QueryConf.Open;

          FFrame.lblIdPlaca.Text := IntToStr( DataModuleBancoFB.ID_VISTORIA );
          FFrame.lblIdPlaca.Visible := false;

         if QueryConf.RecordCount > 0 then
         Begin

          FFrame.imgCheck.Bitmap := FFrame.img_check.Bitmap;

         End
         Else
         Begin

           FFrame.imgCheck.Bitmap := FFrame.img_uncheck.Bitmap;

         End;
        End;

        if DataModuleBancoFB.ID_AVALIACAO > 0 then
        Begin
          QueryConf.SQL.Clear;
          QueryConf.SQL.Add('select * from tbavaliacoesReparos where id_vistoria=:id and id_reparo=:id_reparo');
          QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_AVALIACAO;
          QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
          QueryConf.Open;

          FFrame.lblIdPlaca.Text := IntToStr( DataModuleBancoFB.ID_AVALIACAO );

         if QueryConf.RecordCount > 0 then
         Begin
           FFrame.imgCheck.Bitmap := FFrame.img_check.Bitmap;
         End
         Else
         Begin
           FFrame.imgCheck.Bitmap := FFrame.img_uncheck.Bitmap;
         End;
        End;

   FFrame.lblId.Visible        := false;
   FFrame.lblVlrReparo.Visible := false;
   FFrame.lblIdPlaca.Visible   := false;

   ListBoxItensReparo.EndUpdate;

   item.Parent := ListBoxItensReparo;

   Query.Next;

  End;

  TLoading.Hide;

  TabControl1.GotoVisibleTab( 3 , TTabTransition.Slide);

    Except
    On E:Exception Do
    Begin

     ShowMessage('Falha ao Carregar item! ' + E.Message);

    End;

 End;
End;

procedure TFormNovaAvaliacaoBeta.CarregaReparosNome(tipo, nome : string);
var
 query, QueryConf : TUniQuery;
 item : TListBoxItem;
 FFrame: TFrameItemReparoCheckBox;
begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

  ListBoxItensReparo.Items.Clear;

  query.SQL.Clear;
  query.SQL.Add('select * from tbreparos where tipo=:tipo and Upper(nome) like ' + QuotedStr('%'+UpperCase( nome )+'%') +  ' order by ID');
  query.ParamByName('tipo').Text := tipo;
  query.Open;

  query.First;

  while not query.Eof do
  Begin

      ListBoxItensReparo.BeginUpdate;

      item := TListBoxItem.Create(self);
      FFrame := TFrameItemReparoCheckBox.Create(self);
      FFrame.Name := 'FFrame'+ IntToStr(query.FieldByName('id').asinteger);

      FFrame.Parent := item;
      FFrame.Align := TAlignLayout.Client;

      item.Height := 102;

      FFrame.lblItemReparo.Text := query.FieldByName('nome').Text;
      FFrame.lblId.Text         := IntToStr(query.FieldByName('id').AsInteger);
      FFrame.lblVlrReparo.Text  := CurrToStr(query.FieldByName('valor').AsCurrency);
      FFrame.imgCheck.Bitmap    := FFrame.img_uncheck.Bitmap;
      FFrame.lblIdPlaca.Text    := '';


      FFrame.img_check.Visible   := false;
      FFrame.img_uncheck.Visible := false;

        if DataModuleBancoFB.ID_VISTORIA > 0 then
        Begin
          QueryConf.SQL.Clear;
          QueryConf.SQL.Add('select * from tbVistoriaReparos where id_vistoria=:id and id_reparo=:id_reparo');
          QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_VISTORIA;
          QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
          QueryConf.Open;

          FFrame.lblIdPlaca.Text := IntToStr( DataModuleBancoFB.ID_VISTORIA );
          FFrame.lblIdPlaca.Visible := false;

         if QueryConf.RecordCount > 0 then
         Begin

          FFrame.imgCheck.Bitmap := FFrame.img_check.Bitmap;

         End
         Else
         Begin

           FFrame.imgCheck.Bitmap := FFrame.img_uncheck.Bitmap;

         End;
        End;

        if DataModuleBancoFB.ID_AVALIACAO > 0 then
        Begin
          QueryConf.SQL.Clear;
          QueryConf.SQL.Add('select * from tbavaliacoesReparos where id_vistoria=:id and id_reparo=:id_reparo');
          QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_AVALIACAO;
          QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
          QueryConf.Open;

          FFrame.lblIdPlaca.Text := IntToStr( DataModuleBancoFB.ID_AVALIACAO );

         if QueryConf.RecordCount > 0 then
         Begin
           FFrame.imgCheck.Bitmap := FFrame.img_check.Bitmap;
         End
         Else
         Begin
           FFrame.imgCheck.Bitmap := FFrame.img_uncheck.Bitmap;
         End;
        End;

   FFrame.lblId.Visible        := false;
   FFrame.lblVlrReparo.Visible := false;
   FFrame.lblIdPlaca.Visible   := false;

   ListBoxItensReparo.EndUpdate;

   item.Parent := ListBoxItensReparo;

   Query.Next;

  End;

  TLoading.Hide;

  TabControl1.GotoVisibleTab( 3 , TTabTransition.Slide);

    Except
    On E:Exception Do
    Begin

     ShowMessage('Falha ao Carregar item! ' + E.Message);

    End;

 End;
End;

procedure TFormNovaAvaliacaoBeta.FilterLst(Astr: string);
begin
  ListBoxItensReparo.FilterPredicate := function(X: string): Boolean
    begin
      var
        str: String := Astr;
      Result := Trim(str).IsEmpty or X.ToLower.Contains(str.ToLower);
    end;
end;


procedure TFormNovaAvaliacaoBeta.ProcessarGET;
Var
 json : string;
 arrayFipes : TJSONArray;
 i : integer;
Begin

 if DataModuleAPI.ReqFipeRefModeloAno.Response.StatusCode <> 200 then
 Begin
   ShowMessage('Ocorreu uma falha na consulta ' + IntToStr(DataModuleAPI.ReqFipeRefModeloAno.Response.StatusCode));
 End;

 try

   ListView2.BeginUpdate;

   json := DataModuleAPI.ReqFipeRefModeloAno.Response.JSONValue.ToString;
   arrayFipes := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONArray;

   for I := 0 to arrayFipes.Size -1 do

      AddFipeLV(arrayFipes.Get(i).GetValue<integer>('id',0),
                 arrayFipes.Get(i).GetValue<string>('modelo', ''),
                 arrayFipes.Get(i).GetValue<string>('marca', ''),
                 arrayFipes.Get(i).GetValue<string>('codFipe', ''),
                 arrayFipes.Get(i).GetValue<string>('ano', ''),
                 arrayFipes.Get(i).GetValue<string>('combustivel', ''),
                 arrayFipes.Get(i).GetValue<currency>('valor', 0));

       arrayFipes.DisposeOf;

   finally

   ListView2.EndUpdate;

 end;

End;

procedure TFormNovaAvaliacaoBeta.ProcessarGetErro(Sender: TObject);
Begin
 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);
End;

procedure TFormNovaAvaliacaoBeta.GetFipe;
Var
 Ref: string;
Begin

 TLoading.Show( FormNovaAvaliacaoBeta , 'Carregando Fipe...' );

   TThread.CreateAnonymousThread(procedure
   Begin

      Sleep(1000);

      TThread.Synchronize( TThread.CurrentThread,
      procedure
      Begin
         try
          DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
          DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
          DataModuleBancoFB.qBuscaRefFipe.Open;

          if ComboBoxTipo.Selected.Text = 'Compra na porta' then
          Begin
           Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeFipeCompraPorta.AsString, '/', '', [rfReplaceAll] )  // FIPE COMPRAS
          End;
          if ComboBoxTipo.Selected.Text = 'Compra em troca' then
          Begin
           Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeFipeCompraTroca.AsString, '/', '', [rfReplaceAll] ); // FIPE AVALIAÇÕES
          End;
          if ComboBoxTipo.Selected.Text = 'Compra Belem' then
          Begin
           Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeFipeCompraBelem.AsString, '/', '', [rfReplaceAll] ); // FIPE AVALIAÇÕES
          End;
          if ComboBoxTipo.Selected.Text = 'Compra Externa' then
          Begin
           Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeFipeCompraExterna.AsString, '/', '', [rfReplaceAll] ); // FIPE AVALIAÇÕES
          End;

           DataModuleAPI.ReqFipeRefModeloAno.Resource := 'fipe/' + ref + '/' + EditModeloFipe.Text + '/' + EditAnoFipe.Text;

           ListView2.Items.Clear;

           DataModuleAPI.ReqFipeRefModeloAno.ExecuteAsync(ProcessarGET, true, true, ProcessarGetErro);

           TLoading.Hide;

           except on ex:Exception do
              Begin
               TLoading.Hide;
               ShowMessage('Falha ao carregar lista de fipe!' + ex.Message);
              End;
         end;
      End);

   End).Start;

End;

procedure TFormNovaAvaliacaoBeta.AddFipeLV(id : integer;
                               modelo,
                               marca,
                               cod_fipe,
                               ano, comb : string;
                               valor : Currency);
Begin

   with ListView2.Items.Add do
   Begin
    Height := 50;

    Tag := id;

    TListItemText(Objects.FindDrawable('TextModelo')).Text := modelo;
    TListItemText(Objects.FindDrawable('TextMarca')).Text  := marca;
    TListItemText(Objects.FindDrawable('TextCodFipe')).Text:= cod_fipe;
    TListItemText(Objects.FindDrawable('TextValor')).Text  := CurrToStr( valor );

    if UpperCase(Comb) = 'GGG' then
    //TListItemText(Objects.FindDrawable('TextComb')).Text := 'Gasolina';
    TListItemText(Objects.FindDrawable('TextComb')).Text := 'GGG';

    if UpperCase(Comb) = 'AAA' then
    //TListItemText(Objects.FindDrawable('TextComb')).Text := 'Alcool';
    TListItemText(Objects.FindDrawable('TextComb')).Text := 'AAA';

    if UpperCase(Comb) = 'DDD' then
    //TListItemText(Objects.FindDrawable('TextComb')).Text := 'Diesel';
    TListItemText(Objects.FindDrawable('TextComb')).Text := 'DDD';

   End;

End;

procedure TFormNovaAvaliacaoBeta.TakePhotoFromLibraryDidFinishTaking(
  Image: TBitmap);
begin

 img_foto.Bitmap := Image;

end;

procedure TFormNovaAvaliacaoBeta.TakePictureReqResult(Sender : TObject; const APerissions: TArray<string>;
const AGrantResults: TArray<tpermissionstatus>);
Begin

 if (Length(AGrantResults) = 3)
 and (AGrantResults[0] = TPermissionStatus.Granted)
 and (AGrantResults[1] = TPermissionStatus.Granted)
 and (AGrantResults[2] = TPermissionStatus.Granted) then
 Begin
   TakePhotoFromCamera.Execute;
   //CameraComponent1.Active := true;
 End
 Else
 Begin
   TDialogService.ShowMessage('Não é possível acessar a camera por falta de permissão!');
 End;
End;

procedure TFormNovaAvaliacaoBeta.DisplayCamera(Sender : TObject; const APermissions: TArray<string>;
                                          const APostProc: TProc);
Begin

 TDialogService.ShowMessage('O app precisa acessar a camera para fotos da Avaliacao!',
                            procedure(const AResult: TModalResult)
                            Begin
                               APostProc;
                            End);

End;



procedure TFormNovaAvaliacaoBeta.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
    TDialogService.ShowMessage('O app precisa acessar as fotos do celular',
    Procedure(const AResult: TModalResult)
    Begin
       APostProc;
    End);
end;



procedure TFormNovaAvaliacaoBeta.EditPlacaAvaliacaoExit(Sender: TObject);
begin

 ConsultaPlaca( EditPlacaAvaliacao.Text );

end;

procedure TFormNovaAvaliacaoBeta.EditTelefoneExit(Sender: TObject);
begin

 EditTelefone.Text := StringReplace( EditTelefone.Text , '(', '', [rfReplaceAll] );
 EditTelefone.Text := StringReplace( EditTelefone.Text , ')', '', [rfReplaceAll] );
 EditTelefone.Text := StringReplace( EditTelefone.Text , ' ', '', [rfReplaceAll] );

end;

procedure TFormNovaAvaliacaoBeta.ConsultaPlaca( placa: string );
Var
 query : TUniQuery;
Begin

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionMySQL;

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, consultando placa...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);
   TThread.Synchronize(nil, procedure
   Begin

    try

      query.SQL.Clear;
      query.SQL.Add('select * from tbavaliacoes where placa=:placa order by id desc');
      query.ParamByName('placa').Text := placa;
      query.Open;

       if query.RecordCount > 0 then
       Begin
         query.First;

          EditClienteAvaliacao.Text := query.FieldByName('nome_cliente').Text;
          EditTelefone.Text         := query.FieldByName('telefone').Text;

          ComboBoxIPVA.ItemIndex    := ComboBoxIPVA.Items.IndexOf(query.FieldByName('ipva').Text );
          ComboBoxPortas.ItemIndex  := ComboBoxPortas.Items.IndexOf(query.FieldByName('portas').Text );
          ComboCores.ItemIndex      := ComboCores.Items.IndexOf(query.FieldByName('cor').Text );
          EditAnoFipe.Text          := query.FieldByName('ano').Text;
          EditModeloFipe.Text       := query.FieldByName('modelo').Text;
          EditKM.Text               := IntToStr( query.FieldByName('km').AsInteger );

          DataModuleBancoFB.ID_AVALIACAO := query.FieldByName('id').AsInteger;

          TLoading.Hide;

          dialog.Show( TIconDialog.Success, '', 'Alguns dados foram carregados automaticamente, pois já existe uma avaliação para esta placa' );

       End
       Else
       Begin

        query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

        query.SQL.Clear;
        query.SQL.Add('select * from tbcompras_atendimento where placa=:placa order by id desc');
        query.ParamByName('placa').Text := placa;
        query.Open;

         if query.RecordCount > 0 then
         Begin
           query.First;

          EditClienteAvaliacao.Text := query.FieldByName('nome').Text;
          EditTelefone.Text         := query.FieldByName('telefone').Text;
          EditAnoFipe.Text          := query.FieldByName('ano_modelo').Text;
          EditModeloFipe.Text       := query.FieldByName('modelo').Text;

          TLoading.Hide;

          dialog.Show( TIconDialog.Success, '', 'Alguns dados foram carregados automaticamente, pois já existe um atendimento para esta placa' );

         End;

       End;

       TLoading.Hide;

     Except On
      E: Exception Do
      Begin
         TLoading.Hide;
         ShowMessage('Falha ao tentar consultar placa! ' + E.Message);
      End;

    End;

   End);

  End).Start;

End;

procedure TFormNovaAvaliacaoBeta.btnAtualizaClick(Sender: TObject);
begin
 // CORES

  TLoading.Show(FormNovaAvaliacaoBeta, 'Atualizando Cores...');

   Sleep(1000);

   ComboCores.Clear;
   ComboBoxPortas.Clear;

   TThread.CreateAnonymousThread(procedure
   Begin

   DataModuleBancoFB.qBuscaCoresSQLite.SQL.Clear;
   DataModuleBancoFB.qBuscaCoresSQLite.SQL.Add('select nome from tbCores order by nome');
   DataModuleBancoFB.qBuscaCoresSQLite.Open;

   TThread.Synchronize(nil, procedure
    Begin

    DataModuleBancoFB.qBuscaCoresSQLite.First;
    while not DataModuleBancoFB.qBuscaCoresSQLite.Eof do
     Begin
      ComboCores.Items.Add(DataModuleBancoFB.qBuscaCoresSQLite.FieldByName('nome').Text);
      DataModuleBancoFB.qBuscaCoresSQLite.Next;
     End;

     TLoading.Hide;

    End);

   End).Start;

   TLoading.Show(FormNovaAvaliacaoBeta, 'Atualizando Fornecedores...');

   Sleep(2000);

   TThread.CreateAnonymousThread(procedure
   Begin

        DataModuleCargaDados.qLimpaDadosSQLite.sql.clear;
        DataModuleCargaDados.qLimpaDadosSQLite.sql.add('delete from tbFornecedorVeiculo');
        DataModuleCargaDados.qLimpaDadosSQLite.Execute;

        TThread.Synchronize(nil, procedure
        Begin

        DataModuleCargaDados.qBuscaFornecedores.First;

        while not DataModuleCargaDados.qBuscaFornecedores.eof do
           Begin
           DataModuleCargaDados.qInsereDadosSQLite.sql.clear;
           DataModuleCargaDados.qInsereDadosSQLite.sql.add('insert into tbFornecedorVeiculo (id, nome)');
           DataModuleCargaDados.qInsereDadosSQLite.sql.add('values (:id, :nome)');
           DataModuleCargaDados.qInsereDadosSQLite.parambyname('id').AsInteger := DataModuleCargaDados.qBuscaFornecedores.fieldByName('id').AsInteger;
           DataModuleCargaDados.qInsereDadosSQLite.parambyname('nome').text := DataModuleCargaDados.qBuscaFornecedores.fieldByName('nome').text;
           DataModuleCargaDados.qInsereDadosSQLite.ExecSql();

           DataModuleCargaDados.qBuscaFornecedores.next;
           End;

           TLoading.Hide;

          End);

   End).Start;

   ComboBoxPortas.Items.Add('2');
   ComboBoxPortas.Items.Add('4');

end;

procedure TFormNovaAvaliacaoBeta.btnConsultaPlacaClick(Sender: TObject);
begin

  if EditConsultaPlaca.Text = '' then
  Begin
    dialog.Show(TIconDialog.Error,  ':(' , 'Placa inválida!');
  End
   Else
    Begin
      ConsultaPlacaBeta( EditConsultaPlaca.Text );
    End;

end;

procedure TFormNovaAvaliacaoBeta.ConsultaPlacaBeta( placa: string );
Var
 msg : TMemo;
 query, QConfPlaca : TUniQuery;
Begin

  msg := TMemo.Create(self);
  msg.Lines.Clear;

  query      := TUniQuery.Create(self);
  QConfPlaca := TUniQuery.Create(self);

  query.Connection      := DataModuleBancoFB.UniConnectionMySQL;
  QConfPlaca.Connection := DataModuleBancoFB.UniConnectionMySQL;

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, consultando placa...');

  TThread.CreateAnonymousThread(procedure
    Begin
         Sleep(1000);
         TThread.Synchronize(nil, procedure
         Begin

            try
                query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

                query.SQL.Clear;
                query.SQL.Add('select * from tbcompras_atendimento where placa=:placa order by id desc');
                query.ParamByName('placa').Text := placa;
                query.Open;

                 if query.RecordCount > 0 then
                 Begin
                  query.First;

                  msg.Lines.Clear;

                  if (query.FieldByName('nome').Text = '') or (query.FieldByName('telefone').Text = '(  )      -    ') then
                  msg.Lines.Add('Nome/Fone do cliente');
                  if Query.FieldByName('ipva').Text = '' then
                  msg.Lines.Add('Ipva');
                  if (Query.FieldByName('ano_modelo').Text = '') or (Query.FieldByName('modelo').Text = '') then
                  msg.Lines.Add('Ano / Modelo');
                  if Query.FieldByName('tipo').Text = '' then
                  msg.Lines.Add('Tipo de Compra');
                  if Query.FieldByName('opcionais').Text = '' then
                  msg.Lines.Add('Dados do Veículo');

                      if msg.Lines.Text <> '' then
                      Begin

                        TLoading.Hide;

                        dialog.Show( TIconDialog.Warning, 'Verifique o atendimento', '' + #13 + msg.Text );

                      End
                   Else
                  Begin
                      EditClienteAvaliacao.Text := query.FieldByName('nome').Text;
                      EditTelefone.Text         := query.FieldByName('telefone').Text;
                      EditAnoFipe.Text          := query.FieldByName('ano_modelo').Text;
                      EditModeloFipe.Text       := query.FieldByName('modelo').Text;

                      QConfPlaca.SQL.Clear;
                      QConfPlaca.SQL.Add('select * from tbavaliacoes where placa=:placa order by id desc limit 1');
                      QConfPlaca.ParamByName('placa').Text := placa;
                      QConfPlaca.Open;

                      if QConfPlaca.RecordCount <= 0 then
                      Begin

                        InsereAvaliacao( query.FieldByName('id').AsInteger,
                                         query.FieldByName('placa').Text,
                                         query.FieldByName('modelo').Text,
                                         query.FieldByName('ano_modelo').Text,
                                         query.FieldByName('cod_fipe').Text,
                                         query.FieldByName('fipe').AsCurrency,
                                         query.FieldByName('nome').Text,
                                         query.FieldByName('portas').Text,
                                         query.FieldByName('cor').Text,
                                         query.FieldByName('opcionais').Text,
                                         query.FieldByName('telefone').Text,
                                         query.FieldByName('tipo').Text,
                                         query.FieldByName('ipva').Text
                                          );

                      QConfPlaca.SQL.Clear;
                      QConfPlaca.SQL.Add('select * from tbavaliacoes where placa=:placa order by id desc limit 1');
                      QConfPlaca.ParamByName('placa').Text := placa;
                      QConfPlaca.Open;

                      DataModuleBancoFB.ID_AVALIACAO := QConfPlaca.FieldByName('id').AsInteger;

                        TLoading.Hide;

                        ListaTipoPreparo;

                       tAbControl1.GotoVisibleTab( 2 , TTabTransition.Slide );
                      End
                      ELse

                      DataModuleBancoFB.ID_AVALIACAO := QConfPlaca.FieldByName('id').AsInteger;
                      TLoading.Hide;

                      ListaTipoPreparo;

                     tAbControl1.GotoVisibleTab( 2 , TTabTransition.Slide );
                   End;
               End
                 Else
                Begin
                  TLoading.Hide;
                  dialog.Show( TIconDialog.Warning, ':(', 'Nenhum veículo encontrado' );
                End;

             Except On
              E: Exception Do
              Begin
                 TLoading.Hide;
                 ShowMessage('Falha ao tentar consultar placa! ' + E.Message);
              End;
           End;

         End);

    End).Start;

End;

procedure TFormNovaAvaliacaoBeta.ConsultaExisteAvaliacao( placa: string);
var
 query : TUniQuery;
 msg: TMemo;
Begin


End;

procedure TFormNovaAvaliacaoBeta.InsereAvaliacao(id_atn:integer; placa,
modelo, ano, cod_fipe : string; vlr_fipe: Currency; nome, portas, cor, opcionais, telefone, tipo, ipva: string);
var
 query : TUniQuery;
Begin

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionMySQL;

  try

    query.SQL.Clear;
    query.SQL.Add('insert into tbavaliacoes (data_avaliacao, placa, ano, modelo, nome_cliente, telefone, tipo, portas, km, cor,');
    query.SQL.Add('opcionais, total_avarias, avaliacao, vlr_troca, cod_fipe, vlr_fipe, usuario, categoria, id_atendimento, IPVA, situacao)');
    query.SQL.Add('values (:dt, :placa, :ano, :modelo, :nome, :telefone, :tipo, :portas, :km, :cor, :opcionais,');
    query.SQL.Add(':avarias, :avaliacao, :troca, :cod_fipe, :vlr_fipe, :usuario, :cat, :id, :ipva, 0) ');
    query.ParamByName('dt').AsDate := NOW;
    query.ParamByName('placa').Text := placa;
    query.ParamByName('ano').Text := ano;
    query.ParamByName('modelo').Text := modelo;
    query.ParamByName('nome').Text := nome;
    query.ParamByName('telefone').Text := telefone;
    query.ParamByName('tipo').Text := tipo;
    query.ParamByName('portas').Text := portas;
    query.ParamByName('km').AsFloat := 0;
    query.ParamByName('cor').Text := cor;
    query.ParamByName('opcionais').Text := opcionais;
    query.ParamByName('avarias').AsCurrency := 0;
    query.ParamByName('avaliacao').AsCurrency := 0;
    query.ParamByName('troca').AsCurrency := 0;
    query.ParamByName('cod_fipe').Text := cod_fipe;
    query.ParamByName('vlr_fipe').AsCurrency := vlr_fipe;
    query.ParamByName('usuario').Text := FormPrincipalBeta.editUsuario.Text;
    query.ParamByName('cat').Text := '';
    query.ParamByName('id').AsInteger := id_atn;
    query.ParamByName('ipva').Text := ipva;
    query.ExecSQL;

   Except On
    E:Exception Do
    Begin
       ShowMessage('Falha ao tentar criar veículo! ' + E.Message);
    End;

  End;

End;


procedure TFormNovaAvaliacaoBeta.btnConsultaPlacaMouseEnter(Sender: TObject);
begin

 btnConsultaPlaca.Opacity := 0.3;

end;

procedure TFormNovaAvaliacaoBeta.btnConsultaPlacaMouseLeave(Sender: TObject);
begin

 btnConsultaPlaca.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.BtnFormTesteShowClick(Sender: TObject);
begin

 if FormTeste = nil then
 Begin
   FormTeste := TFormTeste.Create(self);
 End;

    FormTeste.Show;

end;

procedure TFormNovaAvaliacaoBeta.btnVoltar1Click(Sender: TObject);
begin
 if LblStatusAvaliacao.Text = 'Editando' then
 Begin
  Close;
 End
 Else
 Begin
  Close;
 End;
end;

procedure TFormNovaAvaliacaoBeta.btnVoltar2Click(Sender: TObject);
begin

 if LblStatusAvaliacao.Text = 'Editando' then
 Begin
  Close;
 End
 Else
 Begin
  TabControl1.ActiveTab := TabItem1;
 End;

end;

procedure TFormNovaAvaliacaoBeta.btn_busca_fipeClick(Sender: TObject);
begin


  DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
  DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
  DataModuleBancoFB.qBuscaRefFipe.Open;

  VREF_FIPE := DataModuleBancoFB.qBuscaRefFipe.FieldByName('refAvaliacoes').Text;

{  TLoading.Show(FormNovaAvaliacaoBeta, 'Consultando FIPE...');

 TThread.CreateAnonymousThread(procedure
 Begin
  Sleep(1000);
   TThread.Synchronize(nil, procedure
    Begin

     try
}
      with qBuscaFipe do
      begin
       Close;
       Sql.Clear;
       Sql.Add('select marca, modelo, cod_fipe, ANO'+EditAno.Text+' as Vlr_Fipe from TBFIPE where ANO'+EditAno.Text+' > 0 and modelo');
       sql.Add('like '+QuotedStr('%'+editNomeModelo.Text+'%'));
       sql.Add('and ref = :ref');
       ParamByName('ref').Text := VREF_FIPE;
       Open;

       First;
      End;
{
      TLoading.Hide;

     Except
     on e : exception do

      ShowMessage('Falha ao carregar dados da Fipe! Refaça a operação!');

     End;

    ENd);

   TLoading.Hide;

 End).Start;
}
end;

procedure TFormNovaAvaliacaoBeta.btnEnviarFotosClick(Sender: TObject);
var
    i: integer;
    frame: TFrameListaFotos;
begin

    TLoading.Show( FormNovaAvaliacaoBeta , 'Enviando lotes de fotos...' );

    TThread.CreateAnonymousThread( procedure
    Begin
     Sleep(1000);

      TThread.Synchronize(nil, procedure
      Begin
        var i: integer;
        try
            VertScrollBoxFotos.BeginUpdate;

            for i := VertScrollBoxFotos.Content.ChildrenCount - 1 downto 0 do
                if VertScrollBoxFotos.Content.Children[i] is TFrame then
                Begin
                    //TLoading.Hide;
                    //TLoading.Show( FormNovaAvaliacaoBeta , 'Enviando foto '+ i.ToString +' ...' );
                    frame := VertScrollBoxFotos.Content.Children[i] as TFrameListaFotos;
                    //frame := TFrame(VSBox.Content.Children[i]);
                    //frame.DisposeOf;
                    //TFrame(VertScrollBox.Content.Children[i]).DisposeOf;
                    EnviaFotoTry( frame.imageFoto.Bitmap , DataModuleBancoFB.ID_AVALIACAO );

                   { if Enviada = 1 then
                    Begin
                      frame.lblStatusFoto.Text := 'Foto enviada com sucesso';
                      frame.imgRefresh.Visible := false;
                      frame.btnLixeira.Visible := false;
                    End; }
                    //ShowMessage( frame.Tag.ToString );
                End;
            TLoading.Hide;
        finally
            VertScrollBoxFotos.EndUpdate;
            TLoading.Hide;
            ClearVertScrollBox(VertScrollBoxFotos);
            dialog.Show( TIconDialog.Success, 'Fotos enviadas com sucesso', '' );
        end;
      End);

    End).Start;

end;

procedure TFormNovaAvaliacaoBeta.ClearVertScrollBox(VSBox: TVertScrollBox; Index: integer=-1);
var
    i: integer;
    frame: TFrame;
begin
    try
        VSBox.BeginUpdate;

        if Index >= 0 then
            TFrame(VSBox.Content.Children[Index]).DisposeOf
        else
        for i := VSBox.Content.ChildrenCount - 1 downto 0 do
            if VSBox.Content.Children[i] is TFrame then
                //frame := VSBox.Content.Children[i] as TFrame;
                //frame := TFrame(VSBox.Content.Children[i]);
                //frame.DisposeOf;
                TFrame(VSBox.Content.Children[i]).DisposeOf;

    finally
        VSBox.EndUpdate;
        id_fotos := 0;
    end;
end;



procedure TFormNovaAvaliacaoBeta.CameraComponent1SampleBufferReady(
  Sender: TObject; const ATime: TMediaTime);
begin
   CameraComponent1.SampleBufferToBitmap(img_foto.Bitmap, true);
end;

procedure TFormNovaAvaliacaoBeta.ComboCoresEnter(Sender: TObject);
begin

{ DataModuleBancoFB.qBuscaCoresSQLite.SQL.Clear;
 DataModuleBancoFB.qBuscaCoresSQLite.SQL.Add('select nome from tbCores order by nome');
 DataModuleBancoFB.qBuscaCoresSQLite.Open;

 DataModuleBancoFB.qBuscaCoresSQLite.First;
 while not DataModuleBancoFB.qBuscaCoresSQLite.Eof do
 Begin
   ComboCores.Items.Add(DataModuleBancoFB.qBuscaCoresSQLite.FieldByName('nome').Text);
   DataModuleBancoFB.qBuscaCoresSQLite.Next;
 End;
}
end;


procedure TFormNovaAvaliacaoBeta.FormActivate(Sender: TObject);
begin
  {$IFDEF ANDROID}
  PermissaoCamera       := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  PermissaoReadStorage  := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  PermissaoWriteStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
  {$ENDIF}
end;

procedure TFormNovaAvaliacaoBeta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 //DataModuleBancoFB.qBuscaID.Close;
 DataModuleBancoFB.ID_AVALIACAO := 0;

 dialog.DisposeOf;

end;

procedure TFormNovaAvaliacaoBeta.FormCreate(Sender: TObject);
begin

 dialog := TFancyDialog.Create(FormNovaAvaliacaoBeta);

end;

procedure TFormNovaAvaliacaoBeta.FormShow(Sender: TObject);
Begin

  MemoOBS.Text := '';

  img_check.Visible := false;
  img_uncheck.Visible := false;

  img_upload_foto.Visible := false;

  // zera count das fotos quando vem do google drive
  id_fotos := 0;


  {pUncheck.Visible := false;
  pCheck.Visible := false;
  mUncheck.Visible := false;
  mCheck.Visible := false;
  gUncheck.Visible := false;
  gCheck.Visible := false;}

 CarregaCores( ComboCores );

  VerificaWatts;

  ListaTipoPreparo;

 { if LblStatusAvaliacao.Text <> 'Editando' then
  Begin
   TabControl1.ActiveTab := TabItem1;
  End; }

  Top := 0;
  Left := 0;
  Width := Screen.Width;
  Height := Screen.Height;

end;

procedure TFormNovaAvaliacaoBeta.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin

   VertScrollBox1.Margins.Bottom := 0;

end;

procedure TFormNovaAvaliacaoBeta.VerificaWatts;
var
 query : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

   query.SQL.Clear;
   query.SQL.Add('select envia_watts from tbconfig where tipo=:tipo ');
   query.ParamByName('tipo').Text := 'mobile';
   query.Open;

   if query.FieldByName('envia_watts').AsInteger = 1 then
   Begin
    ImageWatts.Visible := true;
   End
   Else
   Begin
    ImageWatts.Visible := false;
   End;

  Except On E:Exception
  Do Begin
    dialog.Show(TIconDialog.Warning, 'Aviso', 'Falha ao carregar componente de wattsapp');
  End;
 End;

End;

procedure TFormNovaAvaliacaoBeta.CarregaCores( combo: TComboBox);
var
 query : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;

 combo.Items.Clear;

 try

  query.SQL.Clear;
  query.SQL.Add('select * from tbcores order by nome');
  query.Open;

   if query.RecordCount > 0 then
   Begin
     query.First;
     while not query.Eof do
     Begin
       combo.Items.Add(query.FieldByName('nome').Text);
       query.Next;
     End;
   End;

  Except On E:Exception Do
  Begin
    dialog.Show( TIconDialog.Warning, 'Aviso', 'Falha ao carregar cores ' + e.Message );
  End;
 End;

End;

procedure TFormNovaAvaliacaoBeta.Image12Click(Sender: TObject);
begin

 if ComboCategoriaItem.ItemIndex = -1 then
 Begin

    dialog.Show( TIconDialog.Warning , 'Ops', 'Selecione uma categoria para o item' );

 End
 Else
 Begin

     //ListBoxItensCheckList.Clear;

     AtualizaCategoriaReparo( TIPO_REPARO );

     TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

 End;

end;

procedure TFormNovaAvaliacaoBeta.AtualizaCategoriaReparo( tipo: string );
var
 query : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

    query.SQL.Clear;
    query.SQL.Add('update tbtiporeparo set categoria=:cat where nome=:tipo');
    query.ParamByName('tipo').Text := tipo;
    query.ParamByName('cat').Text  := ComboCategoriaItem.Selected.Text;
    query.Execute;

    ListaTipoPreparo;

    Except On
    E:Exception Do
    Begin
      dialog.Show( TIconDialog.Error , 'Ops', 'Falha ao atualizar categoria do item' );
    End;

  End;

End;

procedure TFormNovaAvaliacaoBeta.Image20Click(Sender: TObject);
Var
 Ref : string;
 begin

 try

   GetFipe;

   except on ex:Exception do

   ShowMessage('Falha ao carregar lista de fipe! Refaça a operação! ' + ex.Message);

 End;


end;

procedure TFormNovaAvaliacaoBeta.Image22Click(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormNovaAvaliacaoBeta.Image31Click(Sender: TObject);
begin

 TLoading.Show( FormNovaAvaliacaoBeta , 'Aguarde...' );

 TThread.CreateAnonymousThread(procedure
 Begin

   sleep(1200);

   tthread.Synchronize(nil, procedure
   Begin
     CarregaReparosNome( TIPO_REPARO , editPesqNomeAvaria.Text );
     TLoading.Hide;
   End);

 End).Start;


end;

procedure TFormNovaAvaliacaoBeta.Image36Click(Sender: TObject);
begin

 // carrega lista

end;


procedure TFormNovaAvaliacaoBeta.CarregaListaAltVeiculares(nome : string);
var
 query, QueryConf : TUniQuery;
 item : TListBoxItem;
 FFrame: TFrameitemAlteracaoVeicular;

begin
 {
 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);

 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

  ListBoxItens.Items.Clear;

  query.SQL.Clear;
  query.SQL.Add('select * from tbreparos where tipo=:tipo and Upper(nome) like ' + QuotedStr('%'+UpperCase( nome )+'%') +  ' order by ID');
  query.ParamByName('tipo').Text := tipo;
  query.Open;

  query.First;

  while not query.Eof do
  Begin

      ListBoxItensReparo.BeginUpdate;

      item := TListBoxItem.Create(self);
      FFrame := TFrameItemReparoCheckBox.Create(self);
      FFrame.Name := 'FFrame'+ IntToStr(query.FieldByName('id').asinteger);

      FFrame.Parent := item;
      FFrame.Align := TAlignLayout.Client;

      item.Height := 102;

      FFrame.lblItemReparo.Text := query.FieldByName('nome').Text;
      FFrame.lblId.Text         := IntToStr(query.FieldByName('id').AsInteger);
      FFrame.lblVlrReparo.Text  := CurrToStr(query.FieldByName('valor').AsCurrency);
      FFrame.imgCheck.Bitmap    := FFrame.img_uncheck.Bitmap;
      FFrame.lblIdPlaca.Text    := '';


      FFrame.img_check.Visible   := false;
      FFrame.img_uncheck.Visible := false;

        if DataModuleBancoFB.ID_VISTORIA > 0 then
        Begin
          QueryConf.SQL.Clear;
          QueryConf.SQL.Add('select * from tbVistoriaReparos where id_vistoria=:id and id_reparo=:id_reparo');
          QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_VISTORIA;
          QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
          QueryConf.Open;

          FFrame.lblIdPlaca.Text := IntToStr( DataModuleBancoFB.ID_VISTORIA );
          FFrame.lblIdPlaca.Visible := false;

         if QueryConf.RecordCount > 0 then
         Begin

          FFrame.imgCheck.Bitmap := FFrame.img_check.Bitmap;

         End
         Else
         Begin

           FFrame.imgCheck.Bitmap := FFrame.img_uncheck.Bitmap;

         End;
        End;

        if DataModuleBancoFB.ID_AVALIACAO > 0 then
        Begin
          QueryConf.SQL.Clear;
          QueryConf.SQL.Add('select * from tbavaliacoesReparos where id_vistoria=:id and id_reparo=:id_reparo');
          QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_AVALIACAO;
          QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
          QueryConf.Open;

          FFrame.lblIdPlaca.Text := IntToStr( DataModuleBancoFB.ID_AVALIACAO );

         if QueryConf.RecordCount > 0 then
         Begin
           FFrame.imgCheck.Bitmap := FFrame.img_check.Bitmap;
         End
         Else
         Begin
           FFrame.imgCheck.Bitmap := FFrame.img_uncheck.Bitmap;
         End;
        End;

   FFrame.lblId.Visible        := false;
   FFrame.lblVlrReparo.Visible := false;
   FFrame.lblIdPlaca.Visible   := false;

   ListBoxItensReparo.EndUpdate;

   item.Parent := ListBoxItensReparo;

   Query.Next;

  End;

  TLoading.Hide;

  TabControl1.GotoVisibleTab( 3 , TTabTransition.Slide);

    Except
    On E:Exception Do
    Begin

     ShowMessage('Falha ao Carregar item! ' + E.Message);

    End;

 End; }
End;

procedure TFormNovaAvaliacaoBeta.img_voltar_consultaPlacaClick(Sender: TObject);
begin

 Close;

end;

procedure TFormNovaAvaliacaoBeta.img_voltar_consultaPlacaMouseEnter(
  Sender: TObject);
begin

 img_voltar_consultaPlaca.Opacity := 0.3;

end;

procedure TFormNovaAvaliacaoBeta.img_voltar_consultaPlacaMouseLeave(
  Sender: TObject);
begin

 img_voltar_consultaPlaca.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.Image4Click(Sender: TObject);
begin

 FormNovaAvaliacaoBeta.Hide;

end;

procedure TFormNovaAvaliacaoBeta.Image6Click(Sender: TObject);
begin

 img_foto.Bitmap.FlipHorizontal;

end;

procedure TFormNovaAvaliacaoBeta.Image7Click(Sender: TObject);
begin

  if EditPlacaAvaliacao.Text <> '' then
  Begin
   if  EditClienteAvaliacao.Text <> '' then
   Begin
    if EditTelefone.Text <> '' then
     Begin
      if ComboBoxTipo.Selected.Text <> '' then
      Begin
       if ComboBoxIPVA.Selected.Text <> '' then
       Begin
        TabControl1.GotoVisibleTab(5, TTabTransition.Slide);
       End;
      End;
    End;
   End;
  End;
end;

procedure TFormNovaAvaliacaoBeta.Image9Click(Sender: TObject);
begin

 // girar

 img_foto.Bitmap.Rotate(90);

end;



procedure TFormNovaAvaliacaoBeta.ImageWattsMouseEnter(Sender: TObject);
begin

 ImageWatts.Opacity := 0.3;

end;

procedure TFormNovaAvaliacaoBeta.ImageWattsMouseLeave(Sender: TObject);
begin

  ImageWatts.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.imgExcluirListaClick(Sender: TObject);
begin

  ClearVertScrollBox(VertScrollBoxFotos);

end;

procedure TFormNovaAvaliacaoBeta.Img_atualizarClick(Sender: TObject);
begin
 // CORES

  TLoading.Show(FormNovaAvaliacaoBeta, 'Atualizando Cores...');

   Sleep(1000);

   ComboCores.Clear;
   ComboBoxPortas.Clear;

   TThread.CreateAnonymousThread(procedure
   Begin

   DataModuleBancoFB.qBuscaCoresSQLite.SQL.Clear;
   DataModuleBancoFB.qBuscaCoresSQLite.SQL.Add('select nome from tbCores order by nome');
   DataModuleBancoFB.qBuscaCoresSQLite.Open;

   TThread.Synchronize(nil, procedure
    Begin

    DataModuleBancoFB.qBuscaCoresSQLite.First;
    while not DataModuleBancoFB.qBuscaCoresSQLite.Eof do
     Begin
      ComboCores.Items.Add(DataModuleBancoFB.qBuscaCoresSQLite.FieldByName('nome').Text);
      DataModuleBancoFB.qBuscaCoresSQLite.Next;
     End;

     TLoading.Hide;

    End);

   End).Start;

   TLoading.Show(FormNovaAvaliacaoBeta, 'Atualizando Fornecedores...');

   Sleep(2000);

   TThread.CreateAnonymousThread(procedure
   Begin

        DataModuleCargaDados.qLimpaDadosSQLite.sql.clear;
        DataModuleCargaDados.qLimpaDadosSQLite.sql.add('delete from tbFornecedorVeiculo');
        DataModuleCargaDados.qLimpaDadosSQLite.Execute;

        TThread.Synchronize(nil, procedure
        Begin

        DataModuleCargaDados.qBuscaFornecedores.First;

        while not DataModuleCargaDados.qBuscaFornecedores.eof do
         Begin
         DataModuleCargaDados.qInsereDadosSQLite.sql.clear;
         DataModuleCargaDados.qInsereDadosSQLite.sql.add('insert into tbFornecedorVeiculo (id, nome)');
         DataModuleCargaDados.qInsereDadosSQLite.sql.add('values (:id, :nome)');
         DataModuleCargaDados.qInsereDadosSQLite.parambyname('id').AsInteger := DataModuleCargaDados.qBuscaFornecedores.fieldByName('id').AsInteger;
         DataModuleCargaDados.qInsereDadosSQLite.parambyname('nome').text := DataModuleCargaDados.qBuscaFornecedores.fieldByName('nome').text;
         DataModuleCargaDados.qInsereDadosSQLite.ExecSql();

         DataModuleCargaDados.qBuscaFornecedores.next;
         End;

         TLoading.Hide;

        End);

   End).Start;

   ComboBoxPortas.Items.Add('2');
   ComboBoxPortas.Items.Add('4');
end;


procedure TFormNovaAvaliacaoBeta.img_avancarClick(Sender: TObject);
Var
 Fipe, vErro, qSQL: String;
 qInsereAvaliacao : TUniQuery;
  begin

  if ComboBoxPortas.Selected.Text = '' then
  Begin
   ShowMessage('Selecione a quantidade de portas');
   Abort;
  End;

  if EditKM.Text = '' then
  Begin
   ShowMessage('Kilometragem do veículo inválida');
   Abort;
  End;

  if ComboCores.Selected.Text = '' then
  Begin
   ShowMessage('Cor do veículo inválida');
   Abort;
  End;

  if ComboOpcionais.Selected.Text = '' then
  Begin
   ShowMessage('Tipo de Opcionais do veículo inválido');
   Abort;
  End;

   if qInsereAvaliacao = nil then
   Begin
     qInsereAvaliacao := TUniQuery.Create(FormNovaAvaliacaoBeta);
     qInsereAvaliacao.Connection := DataModuleBancoFB.UniConnectionMySQL;
   End;

   TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde...Atualizando Avaliacao');

   TThread.CreateAnonymousThread(procedure
   Begin
    Sleep(1000);

    TThread.Synchronize(nil, procedure
    Begin

      try

      qInsereAvaliacao.SQL.Clear;
      QinsereAvaliacao.SQL.Add('insert into tbAvaliacoes');
      QinsereAvaliacao.SQL.Add('(');
      qInsereAvaliacao.SQL.Add('nome_cliente, telefone, tipo, placa, ano, modelo, portas, usuario, cod_fipe, vlr_fipe, Data_Avaliacao, KM, cor, opcionais, ipva, comb, mecanico)');
      qInsereAvaliacao.SQL.Add('values');
      qInsereAvaliacao.SQL.Add('(:nome, :telefone, :tipo, :placa, :ano_modelo, :modelo, :portas, :usuario, :cod_fipe, :vlr_fipe, :DTV, :KM, :cor, :op, :ipva, :comb, :mecanico)');
      qInsereAvaliacao.ParamByName('nome').text := EditClienteAvaliacao.Text;
      qInsereAvaliacao.ParamByName('telefone').text := EditTelefone.Text;
      qInsereAvaliacao.ParamByName('tipo').text := ComboBoxTipo.Selected.Text;
      qInsereAvaliacao.ParamByName('placa').Text := EditPlacaAvaliacao.Text;
      qInsereAvaliacao.ParamByName('ano_modelo').Text := VANO;
      qInsereAvaliacao.ParamByName('portas').AsInteger := StrToInt(ComboBoxPortas.Selected.Text);
      qInsereAvaliacao.ParamByName('modelo').Text := VMODELO;
      qInsereAvaliacao.ParamByName('usuario').Text := FormPrincipalBeta.NOME_USUARIO;
      qInsereAvaliacao.ParamByName('cod_fipe').Text := VCOD_FIPE;
      qInsereAvaliacao.ParamByName('vlr_fipe').AsCurrency := VVLR_FIPE;
      qInsereAvaliacao.ParamByName('DTV').AsDateTime := NOW;
      qInsereAvaliacao.ParamByName('KM').AsFloat := StrToFloat(EditKM.Text);
      qInsereAvaliacao.ParamByName('cor').Text := ComboCores.Selected.Text;
      qInsereAvaliacao.ParamByName('op').Text := ComboOpcionais.Selected.Text;
      ///qInsereAvaliacao.ParamByName('obs').Text := MemoOBS.Text;
      qInsereAvaliacao.ParamByName('ipva').Text := ComboBoxIPVA.Selected.Text;
      qInsereAvaliacao.ParamByName('comb').Text := COMB;
      qInsereAvaliacao.ParamByName('mecanico').Text := editMecanico.Text;
      qInsereAvaliacao.ExecSQL;

      qInsereAvaliacao.DisposeOf;

      DataModuleBancoFB.qBuscaID.SQL.Clear;
      DataModuleBancoFB.qBuscaID.SQL.Add('select ID from tbavaliacoes where placa=:pl order by Data_Avaliacao desc limit 1');
      DataModuleBancoFB.qBuscaID.ParamByName('pl').Text := EditPlacaAvaliacao.Text;
      DataModuleBancoFB.qBuscaID.Open;

      DataModuleBancoFB.ID_AVALIACAO := DataModuleBancoFB.qBuscaID.FieldByName('ID').AsInteger;

      DataModuleBancoFB.qBuscaID.Close;

      TLoading.Hide;

      ListaTipoPreparo;

      TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

      Except On
       E:Exception Do
       Begin

        TLoading.Hide;

        dialog.Show( TIconDialog.Warning , 'Aviso', 'Falha ao tentar enviar avaliação, refaça a operação. ' + E.Message );

       End;
     End;

    End);

   End).Start;

 end;

procedure TFormNovaAvaliacaoBeta.img_avancarMouseEnter(Sender: TObject);
begin

 img_avancar.Opacity := 0.8;

end;

procedure TFormNovaAvaliacaoBeta.img_avancarMouseLeave(Sender: TObject);
begin

 img_avancar.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.img_avanca_fotoClick(Sender: TObject);
var
 TotalAvaria : Currency;
begin

  if qAtualizaReparoAvaliacao = nil then
  Begin
   qAtualizaReparoAvaliacao := TUniQuery.Create(FormNovaAvaliacaoBeta);
   qAtualizaReparoAvaliacao.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  qAtualizaReparoAvaliacao.SQL.Clear;
  qAtualizaReparoAvaliacao.SQL.Add('select coalesce(sum(valor_reparo),0) as total from tbavaliacoesreparos where id_vistoria=:id');
  qAtualizaReparoAvaliacao.ParamByName('id').AsInteger := DataModuleBancoFB.ID_AVALIACAO;
  qAtualizaReparoAvaliacao.Open;

  TotalAvaria := qAtualizaReparoAvaliacao.FieldByName('total').AsCurrency;

  qAtualizaReparoAvaliacao.SQL.Clear;
  qAtualizaReparoAvaliacao.SQL.Add('update tbavaliacoes set total_avarias=:total, Categoria=:cat, obs=:obs where id=:id');
  qAtualizaReparoAvaliacao.ParamByName('total').AsCurrency := TotalAvaria;
  qAtualizaReparoAvaliacao.ParamByName('cat').Text := ComboBoxCat.Selected.Text;
  qAtualizaReparoAvaliacao.ParamByName('id').AsInteger := DataModuleBancoFB.ID_AVALIACAO;
  qAtualizaReparoAvaliacao.ParamByName('obs').Text := MemoObs.Text;
  qAtualizaReparoAvaliacao.Execute;

  GeraCategoriaParaItens( DataModuleBancoFB.ID_AVALIACAO );

  FreeAndNil(qAtualizaReparoAvaliacao);

  TabControl1.GotoVisibleTab(4, TTabTransition.Slide);

end;

procedure TFormNovaAvaliacaoBeta.GeraCategoriaParaItens( id: integer);
Var
 query, queryAjusta: TUniQuery;
Begin

 query := TUniQuery.Create(self);
 queryAjusta := TUniQuery.Create(self);
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;
 queryAjusta.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

   query.SQL.Clear;
   query.SQL.Add('select * from tbtiporeparo where categoria <> '''' ');
   query.Open;

   if query.RecordCount > 0 then
   Begin

     query.First;

      while not query.Eof do
      Begin

       queryAjusta.SQL.Clear;
       queryAjusta.SQL.Add('update tbavaliacoesreparos set categoria=:cat where tipo_reparo=:tipo and id_vistoria=:id');
       queryAjusta.ParamByName('cat').Text    := query.FieldByName('categoria').Text;
       queryAjusta.ParamByName('tipo').Text   := query.FieldByName('NOME').Text;
       queryAjusta.ParamByName('id').AsInteger:= id;
       queryAjusta.Execute;

       queryAjusta.SQL.Clear;
       queryAjusta.SQL.Add('update tbtiporeparo set categoria=:cat where nome=:nome');
       queryAjusta.ParamByName('cat').Text  := '';
       queryAjusta.ParamByName('nome').Text := query.FieldByName('NOME').Text;
       queryAjusta.Execute;

       query.Next;
      End;

   End
    Else
     Begin
       queryAjusta.SQL.Clear;
       queryAjusta.SQL.Add('update tbtiporeparo set categoria=:cat');
       queryAjusta.ParamByName('cat').Text  := '';
       queryAjusta.Execute;
     End;

  Except On
   E:Exception Do
    Begin
      dialog.Show( TIconDialog.Error, 'Ops' , 'Falha ao atualizar categorias dos itens, verifique' );
    End;
  End;

End;

procedure TFormNovaAvaliacaoBeta.Img_buscar_fipeClick(Sender: TObject);
Var
 Ref : string;
 begin
{
  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, carregando fipes...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);
 }
      DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
      DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
      DataModuleBancoFB.qBuscaRefFipe.Open;

      Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeprincipal.AsString, '/', '', [rfReplaceAll] );
 {
      TThread.Synchronize(nil, procedure
      Begin
 }
         DataModuleAPI.RESTFipe.BaseURL := 'http://169.57.147.37:9000/fipe/'+ Ref +'/'+editNomeModelo.Text+'/'+EditAno.Text;

         GetFipe;

  {       TLoading.Hide;
      End);

  End).Start;


 // Carregamento de Fipe por API

{    // Carregamento de Fipe por Query
  if DataModuleBancoFB.qBuscaRefFipe = nil then
  Begin
    DataModuleBancoFB.qBuscaRefFipe := TUniQuery.Create(FormNovaAvaliacaoBeta);
    DataModuleBancoFB.qBuscaRefFipe.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;
  End;
  if qBuscaFipe = nil then
  Begin
    qBuscaFipe := TUniQuery.Create(FormNovaAvaliacaoBeta);
    qBuscaFipe.Connection := DataModuleBancoFB.UniConnectionDBMesclaPlan;
  End;

  DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
  DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
  DataModuleBancoFB.qBuscaRefFipe.Open;

  REF_FIPE := DataModuleBancoFB.qBuscaRefFipe.FieldByName('refAvaliacoes').Text;

      with qBuscaFipe do
      begin
       Close;
       Sql.Clear;
       Sql.Add('select marca, modelo, cod_fipe, ANO'+EditAno.Text+' as Vlr_Fipe from TBFIPE where ANO'+EditAno.Text+' > 0 and modelo');
       sql.Add('like '+QuotedStr('%'+editNomeModelo.Text+'%'));
       sql.Add('and ref = :ref');
       ParamByName('ref').Text := REF_FIPE;
       Open;

       First;
      End;
      }
end;

procedure TFormNovaAvaliacaoBeta.img_cameraClick(Sender: TObject);
begin
 PermissionsService.RequestPermissions([
                                       PermissaoReadStorage, PermissaoWriteStorage, PermissaoCamera
                                       ],
                                       TakePictureReqResult,
                                       DisplayMessageLibrary
                                       );

end;

procedure TFormNovaAvaliacaoBeta.img_cameraMouseEnter(Sender: TObject);
begin

 img_camera.Opacity := 0.08;

end;

procedure TFormNovaAvaliacaoBeta.img_cameraMouseLeave(Sender: TObject);
begin

  img_camera.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.img_Confirmar_ConsultaPlacaMouseEnter(
  Sender: TObject);
begin

 img_Confirmar_ConsultaPlaca.Opacity := 0.3;

end;

procedure TFormNovaAvaliacaoBeta.img_Confirmar_ConsultaPlacaMouseLeave(
  Sender: TObject);
begin

 img_Confirmar_ConsultaPlaca.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.img_finaliza_AvaliacaoClick(Sender: TObject);
begin
       img_foto.Bitmap.Assign(nil);

       EditConsultaPlaca.Text := '';
       EditPlacaAvaliacao.Text := '';
       EditClienteAvaliacao.Text := '';
       EditTelefone.Text := '';
       EditKM.Text := '';

       ComboBoxIPVA.ItemIndex := -1;
       ComboBoxTipo.ItemIndex := -1;

       dialog.Show( TIconDialog.Success, ':)', 'Avaliação criada com sucesso' );

       //TabControl1.ActiveTab := tab_consulta_placa;
       TabControl1.ActiveTab := TabItem1;
end;

procedure TFormNovaAvaliacaoBeta.img_finaliza_AvaliacaoMouseEnter(
  Sender: TObject);
begin

 img_finaliza_Avaliacao.Opacity := 0.3;

end;

procedure TFormNovaAvaliacaoBeta.img_finaliza_AvaliacaoMouseLeave(
  Sender: TObject);
begin

 img_finaliza_Avaliacao.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.img_galeriaClick(Sender: TObject);
  var
   img :  TImage;
   Fframe : TFrameListaFotos;
   i : integer;
Begin

  {$IFDEF ANDROID}
  PermissionsService.RequestPermissions([
                                       PermissaoReadStorage, PermissaoWriteStorage],
                                       LibraryPermissionRequestResult,
                                       DisplayMessageLibrary
                                       );
  {$ENDIF}

  {$IFDEF MSWINDOWS}
   ClearVertScrollBox(VertScrollBoxFotos);

    if OpenDialog1.Execute() then
    Begin

         for I := 0 to OpenDialog1.Files.Count -1 do
         Begin

           VertScrollBoxFotos.BeginUpdate;

           img := TImage.Create(self);
           img.Bitmap.LoadFromFile( OpenDialog1.Files[i] );

           //cria frame
           Fframe := TFrameListaFotos.Create(nil);
           Fframe.Position.Y := 9999999999;
           Fframe.Align := TAlignLayout.Top;
           Fframe.imageFoto.Bitmap := img.Bitmap;
           Fframe.lblStatusFoto.Text := 'Foto pendente de envio ' + i.ToString;
           FFrame.btnLixeira.OnClick   := ClickExcluir;
           FFrame.imgRefresh.OnClick   := ClickEnviaFoto;
           FFrame.Tag                  := i;

           VertScrollBoxFotos.AddObject(Fframe);

           VertScrollBoxFotos.EndUpdate;

           img.DisposeOf;
         End;

    End;
  {$ENDIF}

end;

procedure TFormNovaAvaliacaoBeta.EnviaFoto( foto: TBitmap; id: integer);
Var
  ImgSalvar : TMemoryStream;
  arq, arqto, ext, data, hora, nome, placa, diretorio : string;
  //Frame : TFrameImagemFoto;
  I : integer;
  QInsereFoto : TUniQuery;
begin

   Enviada := 0;

   QInsereFoto := TUniQuery.Create(FormNovaAvaliacaoBeta);
   QInsereFoto.Connection := DataModuleBancoFB.UniConnectionMySQL;

   TLoading.Show(FormNovaAvaliacaoBeta, 'Enviando foto aguarde...');

   TThread.CreateAnonymousThread(procedure
   Begin

     Sleep(500);

       TThread.Synchronize(nil, procedure
        Begin
          Try
           if EditPlacaAvaliacao.Text <> '' then
             Begin

                QInsereFoto.SQL.Clear;
                QInsereFoto.SQL.Add('INSERT INTO tbfotosavaliacoes (placa, Foto, id_Avaliacao) values(:placa, :foto, :id)');
                QInsereFoto.ParamByName('placa').AsString := EditPlacaAvaliacao.Text;
                QInsereFoto.ParamByName('id').AsInteger   := id;
                ImgSalvar := TMemoryStream.Create;
                foto.SaveToStream( ImgSalvar );
                ImgSalvar.Seek(0,0);
                QInsereFoto.ParamByName('Foto').LoadFromStream( ImgSalvar, ftBlob);
                QInsereFoto.ExecSQL;

                TLoading.Hide;

                Enviada := 1;

                dialog.Show( TIconDialog.Success, '', 'Foto enviada com sucesso! ' );

                QInsereFoto.DisposeOf;

                foto := nil;
             End;
           Except
            on e : exception do
            Begin

            TLoading.Hide;

            dialog.Show( TIconDialog.Error, '', 'Falha ao enviar foto! ' + E.Message);

            End;
         End;

       End);
   End).Start;
End;

procedure TFormNovaAvaliacaoBeta.EnviaFotoTry( foto: TBitmap; id: integer);
Var
  ImgSalvar : TMemoryStream;
  arq, arqto, ext, data, hora, nome, placa, diretorio : string;
  I : integer;
  QInsereFoto : TUniQuery;
begin

   Enviada := 0;

   QInsereFoto := TUniQuery.Create(FormNovaAvaliacaoBeta);
   QInsereFoto.Connection := DataModuleBancoFB.UniConnectionMySQL;

   try

      QInsereFoto.SQL.Clear;
      QInsereFoto.SQL.Add('INSERT INTO tbfotosavaliacoes (placa, Foto, id_Avaliacao) values(:placa, :foto, :id)');
      QInsereFoto.ParamByName('placa').AsString := EditPlacaAvaliacao.Text;
      QInsereFoto.ParamByName('id').AsInteger   := id;
      ImgSalvar := TMemoryStream.Create;
      foto.SaveToStream( ImgSalvar );
      ImgSalvar.Seek(0,0);
      QInsereFoto.ParamByName('Foto').LoadFromStream( ImgSalvar, ftBlob);
      QInsereFoto.ExecSQL;

      //dialog.Show( TIconDialog.Success, '', 'Foto enviada com sucesso! ' );

      Enviada := 1;

      QInsereFoto.DisposeOf;
      ImgSalvar.DisposeOf;

      foto := nil;

   Except
    on e : exception do
    Begin

     Enviada := 0;
     if TLoading <> nil then
     TLoading.Hide;
     dialog.Show( TIconDialog.Error, '', 'Falha ao enviar foto! ' + E.Message);

    End;
   End;

End;


procedure TFormNovaAvaliacaoBeta.img_upload_fotoClick(Sender: TObject);
var
 I : integer;
 item: TListItemText;
 image : TImage;
begin

End;

procedure TFormNovaAvaliacaoBeta.img_voltarClick(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(0, TTabTransition.Slide);
end;

procedure TFormNovaAvaliacaoBeta.img_voltar_cameraClick(Sender: TObject);
begin
   TabControl1.GotoVisibleTab(2, TTabTransition.Slide);
end;

procedure TFormNovaAvaliacaoBeta.img_voltar_cameraMouseEnter(Sender: TObject);
begin

 img_voltar_camera.Opacity := 0.3;

end;

procedure TFormNovaAvaliacaoBeta.img_voltar_cameraMouseLeave(Sender: TObject);
begin
 img_voltar_camera.Opacity := 1;

end;

procedure TFormNovaAvaliacaoBeta.img_voltar_checkClick(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(1, TTabTransition.Slide);

end;

procedure TFormNovaAvaliacaoBeta.LibraryPermissionRequestResult(Sender: Tobject;
  const APermissons: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin

 if (Length(AGrantResults) = 2) and
 (AGrantResults[0] = TPermissionStatus.Granted) and
 (AGrantResults[1] = TPermissionStatus.Granted) then

  //TakePhotoFromLibrary.Execute
  PhotoGalery.TakePhotoFromGallery

  Else

  TDialogService.ShowMessage('Voce nao tem permissao para acessar as fotos!');

end;

procedure TFormNovaAvaliacaoBeta.ListBoxItensCheckListClick(Sender: TObject);
begin

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, processando reparo...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);
   TThread.Synchronize(nil, procedure
   Begin
      TLoading.Hide;
   End);

  End).Start;

end;


procedure TFormNovaAvaliacaoBeta.ListBoxItensReparoItemClick(
  const Sender: TCustomListBox; const Item: TListBoxItem);
  var
   FFrame : TFrameItemReparoCheckBox;
begin

  //ShowMessage('Index: '  + IntToStr(ListBoxItensReparo.ItemIndex ));

//  CarregaReparos( TIPO_REPARO );

end;

procedure TFormNovaAvaliacaoBeta.ListView1ItemClick(
  const Sender: TObject; const AItem: TListViewItem);
begin

    VMODELO   := TListItemText( AItem.Objects.FindDrawable('TextModelo') ).Text;
    VCOD_FIPE := TListItemText ( AItem.Objects.FindDrawable('TextCodFipe') ).Text;
    VVLR_FIPE := StrToCurr( TListItemText ( AItem.Objects.FindDrawable('TextValor')).Text);
    VANO := EditAno.Text;

    {MODELO   :=  qBuscaFipe.FieldByName('modelo').Text;
    COD_FIPE :=  qBuscaFipe.FieldByName('cod_fipe').Text;
    VLR_FIPE :=  qBuscaFipe.FieldByName('Vlr_Fipe').AsCurrency;

    qBuscaFipe.Close;}

    //ListView1.Items.Clear;

    TabControl1.GotoVisibleTab(2, TTabTransition.Slide);
end;


procedure TFormNovaAvaliacaoBeta.ListView2ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

 try
    VMODELO   := TListItemText( AItem.Objects.FindDrawable('TextModelo') ).Text;
    VCOD_FIPE := TListItemText ( AItem.Objects.FindDrawable('TextCodFipe') ).Text;
    VVLR_FIPE := StrToCurr( TListItemText ( AItem.Objects.FindDrawable('TextValor')).Text);
    VANO := EditAnoFipe.Text;
    COMB :=      TListItemText ( AItem.Objects.FindDrawable('TextComb') ).Text;
    //ShowMessage(comb);

    ListView2.Items.Clear;

    TabControl1.GotoVisibleTab(1, TTabTransition.Slide);
   except
   on E:exception do
     Begin
       ShowMessage('Falha ao selecionar modelo do veículo, refaça a consulta e procedimento. Caso o erro persista, acione o time de adm   :' + e.Message);

       ListView2.Items.Clear;
     End;
 end;

end;

procedure TFormNovaAvaliacaoBeta.ListViewFotosItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin


  Imagem := TListItemImage(AItem.Objects.FindDrawable('ImgFoto')).Bitmap;
  ID_LISTVIEW := AItem.Index;

{
   if LIBERADO = 1 then
   Begin
     if TListItemImage(Aitem.Objects.FindDrawable('ImageLixo')).Visible = true then
     Begin
       TLoading.Show( FormNovaAvaliacaoBeta, 'enviando foto...' );
       TListItemText(AItem.Objects.FindDrawable('TextStatus')).Text := 'Enviando foto...';

       TThread.CreateAnonymousThread(procedure
       Begin
        Sleep(100);
        EnviaFotoTry( TListItemImage(AItem.Objects.FindDrawable('ImgFoto')).Bitmap , DataModuleBancoFB.ID_AVALIACAO );
        TThread.Synchronize(nil, procedure
        Begin
           TLoading.Hide;
           if Enviada = 1 then
           Begin
             TListItemText(AItem.Objects.FindDrawable('TextStatus')).Text      := 'Foto Enviada';
             TListItemText(AItem.Objects.FindDrawable('TextStatus')).TextColor := TAlphaColorRec.Blue;
             TListItemImage(Aitem.Objects.FindDrawable('ImageLixo')).Visible := false;
           End
           Else
           Begin
             TListItemText(AItem.Objects.FindDrawable('TextStatus')).Text := 'Clique na foto para envia-la';
             TListItemText(AItem.Objects.FindDrawable('TextStatus')).TextColor := TAlphaColorRec.Red;
           End
        End);

       End).Start;
     End
     Else
     Begin
       dialog.Show( TIconDialog.Warning, 'Aviso', 'Foto já enviada' );
     End;
   End;
}
end;

procedure TFormNovaAvaliacaoBeta.ListViewFotosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin

 LIBERADO := 0;

// Limpa dados do item efetuados
 if TListView(sender).Selected <> nil then
begin
    if ItemObject is TListItemImage then
    begin
      if TListItemImage(ItemObject).Name = 'ImageLixo' then
        begin


           ShowMessage('Imagem lixo click ID: ' + IntToStr( ID_LISTVIEW ) );


        end;
     end;
 end;

 if TListView(sender).Selected <> nil then
begin
    if ItemObject is TListItemImage then
    begin
      if TListItemImage(ItemObject).Name = 'ImageRefresh' then
        begin


          if Imagem <> nil then
          Begin
            ShowMessage('Recebeu imagem');
            Imagem := nil;
          End;


        end;
     end;
 end;

end;

procedure TFormNovaAvaliacaoBeta.ListViewItensReparosItemClick(
  const Sender: TObject; const AItem: TListViewItem);
bEGIN

 ID_REPARO   := StrToInt( TListItemText(AItem.Objects.FindDrawable('TextId')).Text );
 NOME_REPARO := TListItemText(AItem.Objects.FindDrawable('TextReparo')).Text;
 VLR_REPARO  := StrToCurr( TListItemText(AItem.Objects.FindDrawable('TextVlr')).Text );

 //ProcessaImagem( Aitem );

 //CarregaReparos( TIPO_REPARO );

end;

procedure TFormNovaAvaliacaoBeta.ProcessaImagem( listview : TListViewItem);
var
 query : TUniQuery;
Begin


End;

procedure TFormNovaAvaliacaoBeta.ListViewItensReparosItemClickEx(
  const Sender: TObject; ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
  Var
  item: TListItemText;
begin


end;


procedure TFormNovaAvaliacaoBeta.ProcessaTamanhoReparo(id, id_reparo: integer; tamanho: string);
Var
 query : TUniQuery;
Begin

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 try

   // ShowMessage('id_vistoria: ' + inttoStr(id) +  'id_reparo: ' + inttoStr(id_reparo) );

   query.SQL.Clear;
   query.SQL.Add('update tbavaliacoesreparos set tamanho=:tam where id_vistoria=:id_vistoria and id_reparo=:id_reparo');
   query.ParamByName('tam').Text := tamanho;
   query.ParamByName('id_vistoria').AsInteger := id;
   query.ParamByName('id_reparo').AsInteger := id_reparo;
   query.Execute;

   query.DisposeOf;

  Except

  On E:Exception
    Do Begin

     dialog.Show(TIconDialog.Error, ':(' , 'Falha ao processar item, refaça a operação: ' + e.Message);

    End;

 End;

End;

procedure TFormNovaAvaliacaoBeta.ListViewTiposPreparoItemClick(
  const Sender: TObject; const AItem: TListViewItem);
begin

   TLoading.Show( FormNovaAvaliacaoBeta, 'Carregando itens...' );

   TThread.CreateAnonymousThread(procedure
   Begin
   Sleep(500);

    TThread.Synchronize( TThread.CurrentThread,
        procedure
        Begin

         try

               TIPO_REPARO := TListItemText(AItem.Objects.FindDrawable('TextTipoPreparo')).Text;

               if TListItemText(AItem.Objects.FindDrawable('TextItemCategoria')).Text <> '???' then
               ComboCategoriaItem.ItemIndex    := ComboCategoriaItem.Items.IndexOf(TListItemText(AItem.Objects.FindDrawable('TextItemCategoria')).Text)
               Else
               ComboCategoriaItem.ItemIndex := -1;

               CarregaReparos( TIPO_REPARO );

           Except ON E:Exception Do
           Begin
             TLoading.Hide;
             dialog.Show( TIconDialog.Warning , 'Aviso', 'Falha ao processar item. Tente novamente.');
           ENd;
         End;
             TLoading.Hide;
        End);

   End).Start;

end;

procedure TFormNovaAvaliacaoBeta.ListViewTiposPreparoItemClickEx(
  const Sender: TObject; ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin

// Limpa dados do item efetuados
{ if TListView(sender).Selected <> nil then
begin
    if ItemObject is TListItemText then
    begin
      if TListItemText(ItemObject).Name = 'TextItemCategoria' then
        begin



        end;
     end;
 end;
  }
end;

procedure TFormNovaAvaliacaoBeta.ÿClick(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(0, TTabTransition.Slide);
end;

procedure TFormNovaAvaliacaoBeta.MemoObsEnter(Sender: TObject);
begin

 Layout13.Margins.Bottom := 300;

end;

procedure TFormNovaAvaliacaoBeta.MemoObsExit(Sender: TObject);
begin

 Layout13.Margins.Bottom := 0;

end;

procedure TFormNovaAvaliacaoBeta.MemoObsMouseEnter(Sender: TObject);
begin

 Layout13.Margins.Bottom := 300;

end;

procedure TFormNovaAvaliacaoBeta.MemoObsMouseLeave(Sender: TObject);
begin

 Layout13.Margins.Bottom := 0;

end;

procedure TFormNovaAvaliacaoBeta.rctMecanicaClick(Sender: TObject);
var
 item : TListBoxItem;
 Frame: TFrameCheckListItens;
begin

 

 { if qRemoveReparos = nil then
  Begin
   qRemoveReparos := TUniQuery.Create(FormNovaVistoriaBeta);
   qRemoveReparos.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  if qBuscaItensCheck = nil then
  Begin
   qBuscaItensCheck := TUniQuery.Create(FormNovaVistoriaBeta);
   qBuscaItensCheck.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  qBuscaItensCheck.SQL.Clear;
  qBuscaItensCheck.SQL.Add('select * from tbreparos');
  qBuscaItensCheck.Open;

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbavaliacoesreparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := lblMecanica.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_Avaliacao;
      qRemoveReparos.Execute;

      qBuscaItensCheck.Open;
      qBuscaItensCheck.Filter := 'tipo='+QuotedStr(lblMecanica.Text);
      qBuscaItensCheck.Filtered := true;

      qBuscaItensCheck.First;

    TThread.Synchronize(nil, procedure
    Begin
      try

        ListBoxItensCheckList.BeginUpdate;

        for var I := 0 to qBuscaItensCheck.RecordCount -1 do
        Begin
          item := TListBoxItem.Create(self);
          Frame := TFrameCheckListItens.Create(self);
          Frame.Name := 'Frame'+ StringReplace( qBuscaItensCheck.FieldByName('nome').Text, ' ', '_', [rfReplaceAll]) ;
          Frame.TIPO := 'MECANICA';

          Frame.Parent := item;
          Frame.Align := TAlignLayout.Client;
          item.Height := 140;

          Frame.lblNome.Text := qBuscaItensCheck.FieldByName('nome').Text;

          item.Parent := ListBoxItensCheckList;

          qBuscaItensCheck.Next;

        End;



       Finally

        TLoading.Hide;
          ListBoxItensCheckList.EndUpdate;
          TabControl1.GotoVisibleTab(5, TTabTransition.Slide);
        FreeAndNil(qRemoveReparos);
        FreeAndNil(qBuscaItensCheck);

      end;
    End);

  End).Start; }
end;

procedure TFormNovaAvaliacaoBeta.Rectangle14Click(Sender: TObject);
var
 item : TListBoxItem;
 Frame: TFrameCheckListItens;
begin


{
  if qRemoveReparos = nil then
  Begin
   qRemoveReparos := TUniQuery.Create(FormNovaVistoriaBeta);
   qRemoveReparos.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  if qBuscaItensCheck = nil then
  Begin
   qBuscaItensCheck := TUniQuery.Create(FormNovaVistoriaBeta);
   qBuscaItensCheck.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  qBuscaItensCheck.SQL.Clear;
  qBuscaItensCheck.SQL.Add('select * from tbreparos');
  qBuscaItensCheck.Open;

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbavaliacoesreparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := LblAcessorios.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_Avaliacao;
      qRemoveReparos.Execute;

      qBuscaItensCheck.Open;
      qBuscaItensCheck.Filter := 'tipo='+QuotedStr(LblAcessorios.Text);
      qBuscaItensCheck.Filtered := true;

      qBuscaItensCheck.First;
    TThread.Synchronize(nil, procedure
    Begin
      try

        ListBoxItensCheckList.BeginUpdate;

        for var I := 0 to qBuscaItensCheck.RecordCount -1 do
        Begin
          item := TListBoxItem.Create(self);
          Frame := TFrameCheckListItens.Create(self);
          Frame.Name := 'Frame'+ StringReplace( qBuscaItensCheck.FieldByName('nome').Text, ' ', '_', [rfReplaceAll]) ;
          Frame.TIPO := 'ACESSORIOS';

          Frame.Parent := item;
          Frame.Align := TAlignLayout.Client;
          item.Height := 140;

          Frame.lblNome.Text := qBuscaItensCheck.FieldByName('nome').Text;

          item.Parent := ListBoxItensCheckList;

          qBuscaItensCheck.Next;

        End;
       finally
        TLoading.Hide;
        ListBoxItensCheckList.EndUpdate;
        TabControl1.GotoVisibleTab(5, TTabTransition.Slide);
        FreeAndNil(qRemoveReparos);
        FreeAndNil(qBuscaItensCheck);
      end;
    End);

  End).Start;  }
End;

procedure TFormNovaAvaliacaoBeta.Rectangle15Click(Sender: TObject);
var
 item : TListBoxItem;
 Frame: TFrameCheckListItens;
begin


 { if qRemoveReparos = nil then
  Begin
   qRemoveReparos := TUniQuery.Create(FormNovaVistoriaBeta);
   qRemoveReparos.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  if qBuscaItensCheck = nil then
  Begin
   qBuscaItensCheck := TUniQuery.Create(FormNovaVistoriaBeta);
   qBuscaItensCheck.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  qBuscaItensCheck.SQL.Clear;
  qBuscaItensCheck.SQL.Add('select * from tbreparos');
  qBuscaItensCheck.Open;

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbavaliacoesreparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := lblEstofamento.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_AVALIACAO;
      qRemoveReparos.Execute;

      qBuscaItensCheck.Open;
      qBuscaItensCheck.Filter := 'tipo='+QuotedStr(lblEstofamento.Text);
      qBuscaItensCheck.Filtered := true;

      qBuscaItensCheck.First;
    TThread.Synchronize(nil, procedure
    Begin
      try

        ListBoxItensCheckList.BeginUpdate;

        for var I := 0 to qBuscaItensCheck.RecordCount -1 do
        Begin
          item := TListBoxItem.Create(self);
          Frame := TFrameCheckListItens.Create(self);
          Frame.Name := 'Frame'+ StringReplace( qBuscaItensCheck.FieldByName('nome').Text, ' ', '_', [rfReplaceAll]) ;
          Frame.TIPO := 'ESTOFAMENTO';

          Frame.Parent := item;
          Frame.Align := TAlignLayout.Client;
          item.Height := 140;

          Frame.lblNome.Text := qBuscaItensCheck.FieldByName('nome').Text;

          item.Parent := ListBoxItensCheckList;

          qBuscaItensCheck.Next;

        End;
       finally
        TLoading.Hide;
        ListBoxItensCheckList.EndUpdate;
        TabControl1.GotoVisibleTab(5, TTabTransition.Slide);
        FreeAndNil(qRemoveReparos);
        FreeAndNil(qBuscaItensCheck);
      end;
    End);

  End).Start; }
End;

procedure TFormNovaAvaliacaoBeta.rectLatariaClick(Sender: TObject);
var
 item : TListBoxItem;
 Frame: TFrameCheckListItens;
begin

{
  if qRemoveReparos = nil then
  Begin
   qRemoveReparos := TUniQuery.Create(FormNovaVistoriaBeta);
   qRemoveReparos.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  if qBuscaItensCheck = nil then
  Begin
   qBuscaItensCheck := TUniQuery.Create(FormNovaVistoriaBeta);
   qBuscaItensCheck.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  qBuscaItensCheck.SQL.Clear;
  qBuscaItensCheck.SQL.Add('select * from tbreparos');
  qBuscaItensCheck.Open;

  TLoading.Show(FormNovaAvaliacaoBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbavaliacoesreparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := lblLataria.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_Avaliacao;
      qRemoveReparos.Execute;

      qBuscaItensCheck.Open;
      qBuscaItensCheck.Filter := 'tipo='+QuotedStr(lblLataria.Text);
      qBuscaItensCheck.Filtered := true;

      qBuscaItensCheck.First;

    TThread.Synchronize(nil, procedure
    Begin
      try

        ListBoxItensCheckList.BeginUpdate;

        for var I := 0 to qBuscaItensCheck.RecordCount -1 do
        Begin
          item := TListBoxItem.Create(self);
          Frame := TFrameCheckListItens.Create(self);
          Frame.Name := 'Frame'+ StringReplace( qBuscaItensCheck.FieldByName('nome').Text, ' ', '_', [rfReplaceAll]) ;
          Frame.TIPO := 'LATARIA';

          Frame.Parent := item;
          Frame.Align := TAlignLayout.Client;
          item.Height := 140;

          Frame.lblNome.Text := qBuscaItensCheck.FieldByName('nome').Text;

          item.Parent := ListBoxItensCheckList;

          qBuscaItensCheck.Next;

        End;
       finally
        TLoading.Hide;
        ListBoxItensCheckList.EndUpdate;
        TabControl1.GotoVisibleTab(5, TTabTransition.Slide);

        FreeAndNil(qRemoveReparos);
        FreeAndNil(qBuscaItensCheck);
      end;
    End);

  End).Start; }
end;

procedure staranimation(rectbtn: TRectangle;
                        lbl : TLabel;
                        text : string;
                        icon : TImage;
                        animation : TFloatAnimation);
Begin

 icon.Visible := true;
 animation.Start;

 rectbtn.Opacity := 0.99;
 rectbtn.Enabled := false;

 lbl.TagString := lbl.Text;
 lbl.Text := 'Aguarde...';

End;

procedure stopanimation(rectbtn: TRectangle;
                        lbl : TLabel;
                        icon : TImage;
                        animation : TFloatAnimation;
                        HideIcon: Boolean);
Begin

 if lbl.TagString <> '' then
 lbl.Text := lbl.TagString;

 rectbtn.Opacity := 1;
 rectbtn.Enabled := true;

 icon.Visible := not HideIcon;

 animation.Stop;

End;

end


.


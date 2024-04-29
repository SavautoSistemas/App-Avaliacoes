unit UformNovaVistoriaBeta;

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
  System.Actions, FMX.ActnList, FMX.MediaLibrary.Actions, FMX.StdActns,
  {$IFDEF ANDROID}
  Androidapi.Helpers,
  Androidapi.JNI.Os, Androidapi.Input,
  {$ENDIF}
  System.JSON, REST.Types, System.JSON.Types, System.JSON.Serializers, System.JSON.Utils;

type
  TFormNovaVistoriaBeta = class(TForm)
    StyleBook1: TStyleBook;
    qBuscaItensCheck: TUniQuery;
    qBuscaItensCheckid: TIntegerField;
    qBuscaItensChecktipo: TStringField;
    qBuscaItensChecknome: TStringField;
    qBuscaItensCheckvalor: TFloatField;
    qRemoveReparos: TUniQuery;
    CameraComponent1: TCameraComponent;
    ActionList1: TActionList;
    Action1: TAction;
    TakePhotoFromLibrary: TTakePhotoFromLibraryAction;
    TakePhotoFromCamera: TTakePhotoFromCameraAction;
    qAtualizaReparoVistoria: TUniQuery;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Label1: TLabel;
    Rectangle1: TRectangle;
    EditPlaca: TEdit;
    Label4: TLabel;
    Rectangle4: TRectangle;
    ComboFornecedor: TComboBox;
    Layout2: TLayout;
    Rectangle11: TRectangle;
    Image2: TImage;
    Image4: TImage;
    Image7: TImage;
    tabfipe_new: TTabItem;
    Rectangle20: TRectangle;
    Image15: TImage;
    Image17: TImage;
    Layout5: TLayout;
    Rectangle21: TRectangle;
    EditAnoFipe: TEdit;
    Rectangle22: TRectangle;
    EditModeloFipe: TEdit;
    Image18: TImage;
    ListView1: TListView;
    TabItem3: TTabItem;
    VertScrollBox1: TVertScrollBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LblStatusVistoria: TLabel;
    Rectangle5: TRectangle;
    ComboBoxPortas: TComboBox;
    Rectangle6: TRectangle;
    EditKM: TEdit;
    Rectangle7: TRectangle;
    ComboCores: TComboBox;
    Rectangle8: TRectangle;
    ComboOpcionais: TComboBox;
    Rectangle9: TRectangle;
    MemoOBS: TMemo;
    Layout1: TLayout;
    Rectangle10: TRectangle;
    Image3: TImage;
    img_voltar: TImage;
    Img_atualizar: TImage;
    img_avancar: TImage;
    tab_checkList: TTabItem;
    Rectangle12: TRectangle;
    Image5: TImage;
    Image8: TImage;
    img_voltar_check: TImage;
    img_avanca_foto: TImage;
    tab_checkList_ItensTipo: TTabItem;
    Rectangle16: TRectangle;
    Image6: TImage;
    Image9: TImage;
    tab_CheckListItens: TTabItem;
    ListBoxItensCheckList: TListBox;
    Rectangle13: TRectangle;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Tab_Fotos: TTabItem;
    Rectangle17: TRectangle;
    Image13: TImage;
    Image14: TImage;
    img_voltar_camera: TImage;
    img_finaliza_vistoria: TImage;
    Rectangle18: TRectangle;
    Image16: TImage;
    img_galeria: TImage;
    img_camera: TImage;
    img_upload_foto: TImage;
    img_foto: TImage;
    Rectangle19: TRectangle;
    Label3: TLabel;
    ComboBoxCat: TComboBox;
    rectTopo: TRectangle;
    Label10: TLabel;
    ListView2: TListView;
    ListViewItensReparo: TListView;
    imgCheck: TImage;
    ImgUCheck: TImage;
    procedure btnVoltar2Click(Sender: TObject);
    procedure btnAtualizaClick(Sender: TObject);
    procedure ComboFornecedorEnter(Sender: TObject);
    procedure ComboCoresEnter(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure MemoOBSEnter(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure Img_atualizarClick(Sender: TObject);
    procedure img_avancarClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure img_voltarClick(Sender: TObject);
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
    procedure img_finaliza_vistoriaClick(Sender: TObject);
    procedure img_avanca_fotoClick(Sender: TObject);
    procedure CameraComponent1SampleBufferReady(Sender: TObject;
      const ATime: TMediaTime);
    procedure FormActivate(Sender: TObject);
    procedure TakePhotoFromCameraDidFinishTaking(Image: TBitmap);
    procedure TakePhotoFromLibraryDidFinishTaking(Image: TBitmap);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image17Click(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure ListView2ItemClick(const Sender: TObject;
      const BItem: TListViewItem);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ComboFornecedorChange(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure ListView3ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewItensReparoItemClick(const Sender: TObject;
      const AItem: TListViewItem);



  private
    { Private declarations }

    QtdFotosEnviadas : integer;

    Permissao : T99Permissions;
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage : string;

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
    //procedure AddFipeLV(cod_fipe, modelo: string);
    //procedure GetFipes;
    //procedure ProcessarGET;
    procedure ProcessarGETErro(Sender: Tobject);

    procedure ProcessarGET;

  
    procedure AddFipeLV(id: integer; modelo, marca, cod_fipe: string;
      valor: Currency);
    function POST_vistoria(verbo: TRestRequestMethod; placa, ano, modelo,
      fornecedor: string; portas: integer; km: currency; cor, opcionais: string;
      vlr_avaria: currency; cod_fipe: string; vlr_fipe: currency; usuario, obs,
      categoria, cep, cidade, uf, bairro, logradouro: string;
      out erro: string): boolean;
    procedure GetFornecedor;
    procedure ProcessarGETFornecedor;
    procedure ProcessarGETErroFornecedor(Sender: Tobject);
    procedure ListaTipoReparo;
    procedure CarregaReparos(tipo: string);
    procedure ProcessaCheck(id: integer; nome: string; valor: currency);
    procedure InsereReparoAvaliacao(id_avaliacao, id_preparo: integer; placa,
      nome_reparo: string; valor_reparo: currency; tipo_reparo: string);
    procedure InsereReparoVistoria(id_avaliacao, id_preparo: integer; placa,
      nome_reparo: string; valor_reparo: currency; tipo_reparo: string);
    procedure GetFipe(ref: string);
 

   


  public
    { Public declarations }
    REF_FIPE, MODELO, COD_FIPE, ANO, cep, cidade, uf, bairro, logradouro, Fornecedor, TIPO_REPARO : String;
    VLR_FIPE : Currency;
  end;

var
  FormNovaVistoriaBeta: TFormNovaVistoriaBeta;

implementation

uses

 uOpenViewUrl, UFrameListNotificacoes, UFrameItensCheck,
 UFormVistoriasFeitas, UFormTeste, UformPrincipalBeta, UformNovaAvaliacaoBeta,
  UFormNotificacoes, UFormConsultaAvaliacao, UFormAtualizaAPp, UDataModuleCargaDados,
  UDataModuleBancoFB, UDataModuleAPI, Notificacao, Loading,
  UFormFipesAvaliacoesBeta;

  {$R *.fmx}


procedure TFormNovaVistoriaBeta.InsereReparoVistoria(
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

   TLoading.Show( FormNovaVistoriaBeta, 'Aguarde Atualizando...' );

   TThread.CreateAnonymousThread(procedure
   Begin

      Sleep(1000);

      TThread.Synchronize( TThread.CurrentThread,
      procedure
      Begin

      QueryConf.SQL.Clear;
      QueryConf.SQL.Add('select * from tbvistoriareparos where id_vistoria=:id and id_reparo=:id_reparo');
      QueryConf.ParamByName('id').AsInteger := id_avaliacao;
      QueryConf.ParamByName('id_reparo').AsInteger := id_preparo;
      QueryConf.Open;

         if QueryConf.RecordCount > 0 then
         Begin

          query.SQL.Clear;
          query.SQL.Add('delete from tbvistoriareparos where id_vistoria=:id and id_reparo=:id_reparo');
          query.ParamByName('id').AsInteger := id_avaliacao;
          query.ParamByName('id_reparo').AsInteger := id_preparo;
          query.Execute;

          TLoading.Hide;
          //CarregaReparos( tipo_reparo );


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

          TLoading.Hide;
          //CarregaReparos( tipo_reparo );


         End;

         TLoading.Hide;

      End);

   End).Start;

ENd;


procedure TFormNovaVistoriaBeta.InsereReparoAvaliacao(
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

   TLoading.Show( FormNovaVistoriaBeta, 'Aguarde Atualizando...' );

   TThread.CreateAnonymousThread(procedure
   Begin

      Sleep(500);

      TThread.Synchronize( TThread.CurrentThread,
      procedure
      Begin

      QueryConf.SQL.Clear;
      QueryConf.SQL.Add('select * from tbvistoriareparos where id_vistoria=:id and id_reparo=:id_reparo');
      QueryConf.ParamByName('id').AsInteger := id_avaliacao;
      QueryConf.ParamByName('id_reparo').AsInteger := id_preparo;
      QueryConf.Open;

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

          //CarregaReparos( tipo_reparo );
          TLoading.Hide;

         End;

         TLoading.Hide;

      End);

   End).Start;

ENd;


procedure TFormNovaVistoriaBeta.ProcessaCheck(id : integer; nome : string; valor: currency);
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
    InsereReparoVistoria( DataModuleBancoFB.ID_VISTORIA, id, FormNovaVistoriaBeta.EditPlaca.Text, nome, valor, TIPO_REPARO );
   End;

   if DataModuleBancoFB.ID_AVALIACAO > 0 then
   Begin
    InsereReparoAvaliacao( DataModuleBancoFB.ID_AVALIACAO, id, FormNovaAvaliacaoBeta.EditPlacaAvaliacao.Text, nome, valor, TIPO_REPARO );
   End;

   Except
   On E:Exception Do
   Begin

    ShowMessage('Falha ao atualizar lista de reparos! ' + E.Message);

   End;

 End;

End;

procedure TFormNovaVistoriaBeta.CarregaReparos(tipo : string);
var
 query, QueryConf : TUniQuery;
Begin

 query := TUniQuery.Create(self);
 QueryConf := TUniQuery.Create(self);
 QueryConf.Connection := DataModuleBancoFB.UniConnectionMySQL;
 query.Connection := DataModuleBancoFB.UniConnectionMySQL;

 TLoading.Show( FormNovaVistoriaBeta, 'Aguarde Atualizando lista...' );

          TThread.CreateAnonymousThread(procedure
           Begin

            Sleep(500);

            TThread.Synchronize(TThread.CurrentThread,
            Procedure
            Begin

                 try

                  query.SQL.Clear;
                  query.SQL.Add('select * from tbreparos where tipo=:tipo order by nome');
                  query.ParamByName('tipo').Text := tipo;
                  query.Open;

                  ListViewItensReparo.Items.Clear;

                  query.First;

                  while not query.Eof do
                  Begin

                     with ListViewItensReparo.Items.Add Do
                     Begin

                      TListItemText(Objects.FindDrawable('TextId')).Text := IntToStr(query.FieldByName('id').AsInteger);
                      TListItemText(Objects.FindDrawable('TextNome')).Text := query.FieldByName('nome').Text;
                      TListItemText(Objects.FindDrawable('TextVlr')).Text := CurrToStr(query.FieldByName('valor').AsCurrency);

                      TListItemText(Objects.FindDrawable('TextIdTipo')).Text := IntToStr(query.FieldByName('id_tipo').AsInteger);

                        if DataModuleBancoFB.ID_VISTORIA > 0 then
                        Begin
                        QueryConf.SQL.Clear;
                        QueryConf.SQL.Add('select * from tbVistoriaReparos where id_vistoria=:id and id_reparo=:id_reparo');
                        QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_VISTORIA;
                        QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
                        QueryConf.Open;

                         if QueryConf.RecordCount > 0 then
                         Begin
                           TListItemImage(Objects.FindDrawable('ImageCheck')).Bitmap := imgCheck.Bitmap;
                         End
                         Else
                         Begin
                           TListItemImage(Objects.FindDrawable('ImageCheck')).Bitmap := ImgUCheck.Bitmap;
                         End;
                        End;

                        if DataModuleBancoFB.ID_AVALIACAO > 0 then
                        Begin
                        QueryConf.SQL.Clear;
                        QueryConf.SQL.Add('select * from tbavaliacoesReparos where id_vistoria=:id and id_reparo=:id_reparo');
                        QueryConf.ParamByName('id').AsInteger :=  DataModuleBancoFB.ID_AVALIACAO;
                        QueryConf.ParamByName('id_reparo').AsInteger := query.FieldByName('id').AsInteger;
                        QueryConf.Open;

                         if QueryConf.RecordCount > 0 then
                         Begin
                           TListItemImage(Objects.FindDrawable('ImageCheck')).Bitmap := imgCheck.Bitmap;
                         End
                         Else
                         Begin
                           TListItemImage(Objects.FindDrawable('ImageCheck')).Bitmap := ImgUCheck.Bitmap;
                         End;
                        End;

                     End;

                   Query.Next;

                  End;

                  TLoading.Hide;
                  TabControl1.GotoVisibleTab( 5 , TTabTransition.Slide);

                    Except
                    On E:Exception Do
                    Begin

                     TLoading.Hide;
                     ShowMessage('Falha ao selecionar item! ' + E.Message);

                    End;

                 End;

             TLoading.Hide;

            End);

           End).Start;

End;

procedure TFormNovaVistoriaBeta.ProcessarGETErro(Sender: Tobject);
Begin

 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);

End;

procedure TFormNovaVistoriaBeta.ListaTipoReparo;
var
 query : TUniQuery;
Begin


 ListView2.Items.Clear;

  query := TUniQuery.Create(self);
  query.Connection := DataModuleBancoFB.UniConnectionMySQL;

  query.SQL.Clear;
  query.SQL.Add('select * from tbtiporeparo order by id');
  query.Open;

  try

    while not query.Eof do
    Begin

     with ListView2.Items.Add do
     Begin
       TListItemText(Objects.FindDrawable('Text1')).Text := query.FieldByName('nome').Text;
     End;

     query.Next;

    End;

    Except
    On E:Exception Do
    Begin
      ShowMessage('Falha ao listar tipos de reparo! ' + E.Message);
    End;

  End;


End;



procedure TFormNovaVistoriaBeta.LibraryPermissionRequestResult(
 Sender : Tobject; const APermissons: TArray<string>;
 const AGrantResults: TArray<TPermissionStatus>
 );
Begin

 if (Length(AGrantResults) = 2) and
 (AGrantResults[0] = TPermissionStatus.Granted) and
 (AGrantResults[1] = TPermissionStatus.Granted) then

  TakePhotoFromLibrary.Execute
  //PhotoGalery.TakePhotoFromGallery

  Else

  TDialogService.ShowMessage('Voce nao tem permissao para acessar as fotos!');


End;

procedure TFormNovaVistoriaBeta.TakePhotoFromCameraDidFinishTaking(
  Image: TBitmap);
begin

 img_foto.Bitmap := Image;

end;

procedure TFormNovaVistoriaBeta.TakePhotoFromLibraryDidFinishTaking(
  Image: TBitmap);
begin

 img_foto.Bitmap := Image;

end;

procedure TFormNovaVistoriaBeta.TakePictureReqResult(Sender : TObject; const APerissions: TArray<string>;
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

procedure TFormNovaVistoriaBeta.DisplayCamera(Sender : TObject; const APermissions: TArray<string>;
                                          const APostProc: TProc);
Begin

 TDialogService.ShowMessage('O app precisa acessar a camera para fotos da vistoria!',
                            procedure(const AResult: TModalResult)
                            Begin
                               APostProc;
                            End);

End;



procedure TFormNovaVistoriaBeta.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
    TDialogService.ShowMessage('O app precisa acessar as fotos do celular',
    Procedure(const AResult: TModalResult)
    Begin
       APostProc;
    End);
end;

procedure TFormNovaVistoriaBeta.btnAtualizaClick(Sender: TObject);
begin
 // CORES

  TLoading.Show(FormNovaVistoriaBeta, 'Atualizando Cores...');

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

   TLoading.Show(FormNovaVistoriaBeta, 'Atualizando Fornecedores...');

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




procedure TFormNovaVistoriaBeta.btnVoltar1Click(Sender: TObject);
begin
 if LblStatusVistoria.Text = 'Editando' then
 Begin
  Close;
 End
 Else
 Begin
  Close;
 End;
end;

procedure TFormNovaVistoriaBeta.btnVoltar2Click(Sender: TObject);
begin

 if LblStatusVistoria.Text = 'Editando' then
 Begin
  Close;
 End
 Else
 Begin
  TabControl1.ActiveTab := TabItem1;
 End;

end;

procedure TFormNovaVistoriaBeta.CameraComponent1SampleBufferReady(
  Sender: TObject; const ATime: TMediaTime);
begin
   CameraComponent1.SampleBufferToBitmap(img_foto.Bitmap, true);
end;

procedure TFormNovaVistoriaBeta.ComboCoresEnter(Sender: TObject);
begin
 DataModuleBancoFB.qBuscaCoresSQLite.SQL.Clear;
 DataModuleBancoFB.qBuscaCoresSQLite.SQL.Add('select nome from tbCores order by nome');
 DataModuleBancoFB.qBuscaCoresSQLite.Open;

 DataModuleBancoFB.qBuscaCoresSQLite.First;
 while not DataModuleBancoFB.qBuscaCoresSQLite.Eof do
 Begin
   ComboCores.Items.Add(DataModuleBancoFB.qBuscaCoresSQLite.FieldByName('nome').Text);
   DataModuleBancoFB.qBuscaCoresSQLite.Next;
 End;

end;

procedure TFormNovaVistoriaBeta.ProcessarGETErroFornecedor(Sender: Tobject);
Begin

 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);

End;

procedure TFormNovaVistoriaBeta.ProcessarGETFornecedor;
Var
 json : string;
 arrayFornecedor : TJSONArray;
 ObjFornecedor : TJSONObject;
 i : integer;
Begin

 if DataModuleAPI.ReqFornecedor.Response.StatusCode <> 200 then
 Begin
   ShowMessage('Ocorreu uma falha na consulta ' + IntToStr(DataModuleAPI.ReqFornecedor.Response.StatusCode));
 End;

   json := DataModuleAPI.ReqFornecedor.Response.JSONValue.ToString;

   ShowMessage(json);

   arrayFornecedor := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONArray;

   //ObjFornecedor := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONObject;

   cep        := arrayFornecedor.Get(i).GetValue<string>('cep','');
   cidade     := arrayFornecedor.Get(i).GetValue<string>('cidade','');
   bairro     := arrayFornecedor.Get(i).GetValue<string>('bairro','');
   uf         := arrayFornecedor.Get(i).GetValue<string>('uf','');
   logradouro := arrayFornecedor.Get(i).GetValue<string>('logradouro','');

   arrayFornecedor.DisposeOf;

End;

procedure TFormNovaVistoriaBeta.GetFornecedor;
Begin

  DataModuleAPI.ReqFornecedor.Resource := 'fornecedor/' +  Fornecedor;

 try
   DataModuleAPI.ReqFornecedor.ExecuteAsync(ProcessarGETFornecedor, true, true, ProcessarGetErroFornecedor);
   except on ex:Exception do
   ShowMessage('Falha ao carregar lista de Fornecedor!' + ex.Message);
 end;

End;

procedure TFormNovaVistoriaBeta.ComboFornecedorChange(Sender: TObject);
Var
 QBuscaDadosFor : TUniQuery;
Begin

  QBuscaDadosFor := TUniQuery.Create(nil);

  QBuscaDadosFor.Connection := DataModuleBancoFB.UniConnectionMySQL;

  Fornecedor := ComboFornecedor.Selected.Text;

  //GetFornecedor;

  try

    QBuscaDadosFor.SQL.Clear;
    QBuscaDadosFor.SQL.Add('select * from tbFornecedorVeiculo where nome = ' + QuotedStr(Fornecedor) +  '');
    QBuscaDadosFor.Open;

    cep := QBuscaDadosFor.FieldByName('cep').Text;
    cidade := QBuscaDadosFor.FieldByName('cidade').Text;
    bairro := QBuscaDadosFor.FieldByName('bairro').Text;
    uf := QBuscaDadosFor.FieldByName('uf').Text;
    logradouro := QBuscaDadosFor.FieldByName('logradouro').Text;

   except
    On E : Exception do

    ShowMessage('Ocorreu uma falha na consulta! Refaça a operação!' + E.Message);

  end;

  QBuscaDadosFor.DisposeOf;

end;

procedure TFormNovaVistoriaBeta.ComboFornecedorEnter(Sender: TObject);
begin

 ComboFornecedor.Items.Clear;

 DataModuleBancoFB.qBuscaForneSQLite.SQL.Clear;
 DataModuleBancoFB.qBuscaForneSQLite.SQL.Add('select * from tbFornecedorVeiculo order by nome');
 DataModuleBancoFB.qBuscaForneSQLite.Open;

 DataModuleBancoFB.qBuscaForneSQLite.First;
 while not DataModuleBancoFB.qBuscaForneSQLite.Eof do
 Begin
   ComboFornecedor.Items.Add(DataModuleBancoFB.qBuscaForneSQLite.FieldByName('nome').Text);
   DataModuleBancoFB.qBuscaForneSQLite.Next;
 End;
end;

procedure TFormNovaVistoriaBeta.FormActivate(Sender: TObject);
begin
  {$IFDEF ANDROID}

  PermissaoCamera       := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  PermissaoReadStorage  := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  PermissaoWriteStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);

  {$ENDIF}
end;

procedure TFormNovaVistoriaBeta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 //FormNovaVistoriaBeta.Free;

 DataModuleBancoFB.qBuscaID.Close;
 DataModuleBancoFB.ID_VISTORIA := 0;

end;

procedure TFormNovaVistoriaBeta.FormShow(Sender: TObject);
begin

 imgCheck.Visible := FALSE;
 ImgUCheck.Visible := false;

 ListaTipoReparo;

end;

procedure TFormNovaVistoriaBeta.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin

   VertScrollBox1.Margins.Bottom := 0;

end;

procedure TFormNovaVistoriaBeta.Image12Click(Sender: TObject);
begin

 ListBoxItensCheckList.Clear;

 TabControl1.GotoVisibleTab(3, TTabTransition.Slide);

end;

procedure TFormNovaVistoriaBeta.Image17Click(Sender: TObject);
begin

   TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormNovaVistoriaBeta.Image18Click(Sender: TObject);
Var
 Ref : string;
 begin

      DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
      DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
      DataModuleBancoFB.qBuscaRefFipe.Open;

      // Busca Fipe Vistoria nova culuna 28/08/2021 - Matheus

      Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeFipeVistoria.AsString, '/', '', [rfReplaceAll] );

      GetFipe( ref );

end;

procedure TFormNovaVistoriaBeta.Image4Click(Sender: TObject);
begin

 Close;

end;

procedure TFormNovaVistoriaBeta.Image7Click(Sender: TObject);
begin

 if FormFipesAvaliacoesBeta = nil then
 Begin
   FormFipesAvaliacoesBeta := TFormFipesAvaliacoesBeta.Create(self);
 End;


 if ComboFornecedor.Selected.Text <> '' then
 Begin
  if EditPlaca.Text <> '' then
   Begin
    FormFipesAvaliacoesBeta.Show;
   End;
 End;

end;

procedure TFormNovaVistoriaBeta.Img_atualizarClick(Sender: TObject);
begin
 // CORES

  TLoading.Show(FormNovaVistoriaBeta, 'Atualizando Cores...');

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

   TLoading.Show(FormNovaVistoriaBeta, 'Atualizando Fornecedores...');

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

function TFormNovaVistoriaBeta.POST_vistoria(verbo: TRestRequestMethod;
                                            placa,
                                            ano,
                                            modelo,
                                            fornecedor: string;
                                            portas: integer;
                                            km: currency;
                                            cor,
                                            opcionais : string;
                                            vlr_avaria : currency;
                                            cod_fipe: string;
                                            vlr_fipe : currency;
                                            usuario,
                                            obs,
                                            categoria,
                                            cep,
                                            cidade,
                                            uf,
                                            bairro,
                                            logradouro
                                            : string;
                                            //dt : Tdate;
                                            out erro: string): boolean;
Var
 JsonBody : TJSONObject;
Begin

 try

    try

       Result := false;
       erro := '';

       JsonBody := TJSONObject.Create;

       JsonBody.AddPair('PLACA', placa);
       JsonBody.AddPair('ANO', ano);
       JsonBody.AddPair('MODELO', modelo);
       JsonBody.AddPair('FORNECEDOR', fornecedor);
       JsonBody.AddPair('PORTAS', IntToStr( portas ));
       JsonBody.AddPair('KM', CurrToStr( km ) );
       JsonBody.AddPair('COR', cor);
       JsonBody.AddPair('OPCIONAIS', opcionais);
       JsonBody.AddPair('TOTAL_AVARIAS', CurrToStr( vlr_avaria ));
       JsonBody.AddPair('COD_FIPE', cod_fipe);
       JsonBody.AddPair('VLR_FIPE', CurrToStr(vlr_fipe) );
       JsonBody.AddPair('USUARIO', usuario);
       JsonBody.AddPair('OBS', obs);
       JsonBody.AddPair('CATEGORIA', categoria);
      // JsonBody.AddPair('DATA', DateToStr( dt ) );
      JsonBody.AddPair('CEP', cep);
      JsonBody.AddPair('CIDADE', cidade);
      JsonBody.AddPair('UF', uf);
      JsonBody.AddPair('BAIRRO', bairro);
      JsonBody.AddPair('LOGRADOURO', logradouro);


       // PUT...

       // POST...
       DataModuleAPI.ReqVistoriaPost.Params.Clear;
       DataModuleAPI.ReqVistoriaPost.Body.ClearBody;
       DataModuleAPI.ReqVistoriaPost.Method := verbo;
       DataModuleAPI.ReqVistoriaPost.Body.Add( JsonBody.ToString, ContentTypeFromString( 'application/json' ) );
       DataModuleAPI.ReqVistoriaPost.Execute;

       // tratamento retorno
       if (DataModuleAPI.ReqVistoriaPost.Response.StatusCode <> 200) and
          (DataModuleAPI.ReqVistoriaPost.Response.StatusCode <> 201) then
          Begin
            Result := false;
            ShowMessage('Falha ao salvar/gravar dados: ' + DataModuleAPI.ReqVistoriaPost.Response.StatusText);
            exit;
          End;
          Result := true;

     except on ex:exception do
     Begin
         Result := false;
         erro := 'ocorreu um erro ' + ex.Message;
     End;
    end;
 finally
  JsonBody.DisposeOf;
 End;

End;


procedure TFormNovaVistoriaBeta.img_avancarClick(Sender: TObject);
Var
 Fipe, vErro, qSQL, erro: String;
 qInsereVistoria : TUniQuery;
  begin

  if qInsereVistoria = nil then
  Begin
   qInsereVistoria := TUniQuery.Create(FormNovaVistoriaBeta);
   qInsereVistoria.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

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


    if not POST_vistoria( rmPOST,
                         EditPlaca.Text,
                         ANO,
                         MODELO,
                         ComboFornecedor.Selected.Text,
                         StrToInt(ComboBoxPortas.Selected.Text),
                         StrToFloat(EditKM.Text),
                         ComboCores.Selected.Text,
                         ComboOpcionais.Selected.Text,
                         0,
                         COD_FIPE,
                         VLR_FIPE,
                         FormPrincipalBeta.NOME_USUARIO,
                         MemoOBS.Text,
                         '',
                         cep,
                         cidade,
                         uf,
                         bairro,
                         logradouro,
                         erro)

      then
      Begin
         TLoading.Hide;
         ShowMessage('Falha ao inserir! Refaça a operação!');
         Abort;
      End;

      DataModuleBancoFB.qBuscaID.SQL.Clear;
      DataModuleBancoFB.qBuscaID.SQL.Add('select ID from tbVistoria where placa=:pl');
      DataModuleBancoFB.qBuscaID.ParamByName('pl').Text := EditPlaca.Text;
      DataModuleBancoFB.qBuscaID.Open;

      DataModuleBancoFB.ID_VISTORIA := DataModuleBancoFB.qBuscaID.FieldByName('ID').AsInteger;

      DataModuleBancoFB.qBuscaID.Close;

      TLoading.Hide;

      TabControl1.GotoVisibleTab(3, TTabTransition.Slide);

 end;

procedure TFormNovaVistoriaBeta.img_avanca_fotoClick(Sender: TObject);
var
 TotalAvaria : Currency;
begin

  if qAtualizaReparoVistoria = nil then
  Begin
   qAtualizaReparoVistoria := TUniQuery.Create(FormNovaVistoriaBeta);
   qAtualizaReparoVistoria.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  qAtualizaReparoVistoria.SQL.Clear;
  qAtualizaReparoVistoria.SQL.Add('select coalesce(sum(valor_reparo),0) as total from tbvistoriareparos where id_vistoria=:id');
  qAtualizaReparoVistoria.ParamByName('id').AsInteger := DataModuleBancoFB.ID_VISTORIA;
  qAtualizaReparoVistoria.Open;

  TotalAvaria := qAtualizaReparoVistoria.FieldByName('total').AsCurrency;

  qAtualizaReparoVistoria.SQL.Clear;
  qAtualizaReparoVistoria.SQL.Add('update tbvistoria set vlr_tot_avaria=:total, Categoria=:cat where id=:id');
  qAtualizaReparoVistoria.ParamByName('total').AsCurrency := TotalAvaria;
  qAtualizaReparoVistoria.ParamByName('cat').Text := ComboBoxCat.Selected.Text;
  qAtualizaReparoVistoria.ParamByName('id').AsInteger := DataModuleBancoFB.ID_VISTORIA;
  qAtualizaReparoVistoria.Execute;

  FreeAndNil(qAtualizaReparoVistoria);

  TabControl1.GotoVisibleTab(6, TTabTransition.Slide);

end;

procedure TFormNovaVistoriaBeta.ProcessarGET;
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
   ListView1.BeginUpdate;
   json := DataModuleAPI.ReqFipeRefModeloAno.Response.JSONValue.ToString;
   arrayFipes := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONArray;

   for I := 0 to arrayFipes.Size -1 do

       AddFipeLV(arrayFipes.Get(i).GetValue<integer>('id',0),
                 arrayFipes.Get(i).GetValue<string>('modelo', ''),
                 arrayFipes.Get(i).GetValue<string>('marca' , ''),
                 arrayFipes.Get(i).GetValue<string>('codFipe', ''),
                 arrayFipes.Get(i).GetValue<currency>('valor', 0 ));
{       AddFipeLV(11,
                 'MODELO 1',
                 'MARCA 1',
                 'COD_FIPE 1',
                 999); }

       arrayFipes.DisposeOf;
   finally

   ListView1.EndUpdate;

 end;

End;

procedure TFormNovaVistoriaBeta.AddFipeLV(id : integer;
                                          modelo,
                                          marca,
                                          cod_fipe: string;
                                          valor : Currency);
Begin

   with ListView1.Items.Add do
   Begin

    Height := 50;

    Tag := id;

    TListItemText(Objects.FindDrawable('TextModelo')).Text  := modelo;
    TListItemText(Objects.FindDrawable('TextMarca')).Text   := marca;
    TListItemText(Objects.FindDrawable('TextCodFipe')).Text := cod_fipe;
    TListItemText(Objects.FindDrawable('TextValor')).Text   := CurrToStr(valor);

   End;

End;

procedure TFormNovaVistoriaBeta.GetFipe(ref: string);
Begin

  DataModuleAPI.ReqFipeRefModeloAno.Resource := 'fipe/' + ref + '/' + EditModeloFipe.Text + '/' + EditAnoFipe.Text;

 ListView1.Items.Clear;
 try
   DataModuleAPI.ReqFipeRefModeloAno.ExecuteAsync(ProcessarGET, true, true, ProcessarGetErro);
   except on ex:Exception do
   ShowMessage('Falha ao carregar lista de fipe!' + ex.Message);
 end;

End;

procedure TFormNovaVistoriaBeta.Img_buscar_fipeClick(Sender: TObject);
Var
 Ref : string;
 begin

      DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
      DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
      DataModuleBancoFB.qBuscaRefFipe.Open;

      Ref := StringReplace( DataModuleBancoFB.qBuscaRefFipeFipeVistoria.AsString, '/', '', [rfReplaceAll] );

      DataModuleAPI.RESTFipe.BaseURL := 'http://169.57.147.37:9000/fipe/'+ Ref +'/'+EditModeloFipe.Text+'/'+EditAnoFipe.Text;

      GetFipe( ref );

end;

procedure TFormNovaVistoriaBeta.img_cameraClick(Sender: TObject);
begin
 PermissionsService.RequestPermissions([
                                       PermissaoReadStorage, PermissaoWriteStorage, PermissaoCamera
                                       ],
                                       TakePictureReqResult,
                                       DisplayMessageLibrary
                                       );

end;

procedure TFormNovaVistoriaBeta.img_finaliza_vistoriaClick(Sender: TObject);
begin
       img_foto.Bitmap.Assign(nil);

       FormNovaVistoriaBeta.EditPlaca.Text := '';
       FormNovaVistoriaBeta.EditKM.Text := '';

       ShowMessage('Vistoria efetuada com Sucesso');

       TabControl1.ActiveTab := FormNovaVistoriaBeta.TabItem1;
end;

procedure TFormNovaVistoriaBeta.img_galeriaClick(Sender: TObject);
begin

  PermissionsService.RequestPermissions([
                                       PermissaoReadStorage, PermissaoWriteStorage],
                                       LibraryPermissionRequestResult,
                                       DisplayMessageLibrary
                                       );

end;

procedure TFormNovaVistoriaBeta.img_upload_fotoClick(Sender: TObject);
Var
  ImgSalvar : TMemoryStream;
  arq, arqto, ext, data, hora, nome, placa, diretorio : string;
  //Frame : TFrameImagemFoto;
  I : integer;
  QInsereFoto : TUniQuery;
begin

  if QInsereFoto = nil then
  Begin
   QInsereFoto := TUniQuery.Create(FormNovaVistoriaBeta);
   QInsereFoto.Connection := DataModuleBancoFB.UniConnectionMySQL;
  End;

  TLoading.Show(FormNovaVistoriaBeta, 'Enviando foto aguarde...');

   TThread.CreateAnonymousThread(procedure
   Begin

     Sleep(1000);

    TThread.Synchronize(nil, procedure
        Begin
          Try
           if FormNovaVistoriaBeta.EditPlaca.Text <> '' then
             Begin

                QInsereFoto.SQL.Clear;
                QInsereFoto.SQL.Add('INSERT INTO tbFotosVistoria (placa,Foto, id_vistoria) values(:placa, :foto, :id)');
                QInsereFoto.ParamByName('placa').AsString := FormNovaVistoriaBeta.EditPlaca.Text;
                QInsereFoto.ParamByName('id').AsInteger   := DataModuleBancoFB.ID_VISTORIA;
                ImgSalvar := TMemoryStream.Create;
                img_foto.Bitmap.SaveToStream( ImgSalvar );
                ImgSalvar.Seek(0,0);
                QInsereFoto.ParamByName('Foto').LoadFromStream( ImgSalvar, ftBlob);
                QInsereFoto.ExecSQL;

                TLoading.Hide;
                ShowMessage('Foto enviada com sucesso!');

                FreeAndNil(QInsereFoto);

                img_foto.Bitmap := nil;
             End;
              TLoading.Hide;
         Except
          on e : exception do
          ShowMessage('Falha ao enviar dados, refaça a operação!'+#13+
                    E.ClassName + #13 +
                    E.Message);
         End;

       End);
   End).Start;
End;

procedure TFormNovaVistoriaBeta.img_voltarClick(Sender: TObject);
begin
 if FormFipesAvaliacoesBeta = nil then
 Begin
   FormFipesAvaliacoesBeta := TFormFipesAvaliacoesBeta.Create(self);
 End;

  FormFipesAvaliacoesBeta.Show;
end;

procedure TFormNovaVistoriaBeta.img_voltar_cameraClick(Sender: TObject);
begin
   TabControl1.GotoVisibleTab(3, TTabTransition.Slide);
end;

procedure TFormNovaVistoriaBeta.img_voltar_checkClick(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

end;

procedure TFormNovaVistoriaBeta.ListBoxItensCheckListClick(Sender: TObject);
begin

  TLoading.Show(FormNovaVistoriaBeta, 'Aguarde, processando reparo...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(1000);
   TThread.Synchronize(nil, procedure
   Begin
      TLoading.Hide;
   End);

  End).Start;

end;



procedure TFormNovaVistoriaBeta.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

try
    MODELO   := TListItemText( AItem.Objects.FindDrawable('TextModelo') ).Text;
    COD_FIPE := TListItemText ( AItem.Objects.FindDrawable('TextCodFipe') ).Text;
    VLR_FIPE := StrToCurr( TListItemText ( AItem.Objects.FindDrawable('TextValor')).Text);

    ANO := EditAnoFipe.Text;

    ListView1.Items.Clear;


    Except
    On E: Exception do
    Begin
       ShowMessage('Falha ao selecionar modelo do veículo, refaça a consulta e procedimento. Caso o erro persista, acione o time de adm   :' + e.Message);

       ListView1.Items.Clear;
    End;

end;

end;

procedure TFormNovaVistoriaBeta.ListView2ItemClick(const Sender: TObject;
  const BItem: TListViewItem);
begin

 TIPO_REPARO := TListItemText(BItem.Objects.FindDrawable('Text1')).Text;

 CarregaReparos( TIPO_REPARO );

end;

procedure TFormNovaVistoriaBeta.ListView3ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

 ProcessaCheck(
   StrToInt(TListItemText(AItem.Objects.FindDrawable('Text1')).Text),
            TListItemText(AItem.Objects.FindDrawable('Text2')).Text,
  StrToCurr(TListItemText(AItem.Objects.FindDrawable('Text3')).Text)
  );

end;


procedure TFormNovaVistoriaBeta.ListViewItensReparoItemClick(
  const Sender: TObject; const AItem: TListViewItem);
begin

 ProcessaCheck(
   StrToInt(TListItemText(AItem.Objects.FindDrawable('TextId')).Text),
            TListItemText(AItem.Objects.FindDrawable('TextNome')).Text,
  StrToCurr(TListItemText(AItem.Objects.FindDrawable('TextVlr')).Text)
  );

  if TListItemImage(AItem.Objects.FindDrawable('ImageCheck')).Bitmap = imgCheck.Bitmap then
  TListItemImage(AItem.Objects.FindDrawable('ImageCheck')).Bitmap := ImgUCheck.Bitmap
  Else
  TListItemImage(AItem.Objects.FindDrawable('ImageCheck')).Bitmap := ImgCheck.Bitmap;

end;

procedure TFormNovaVistoriaBeta.ÿClick(Sender: TObject);
begin
   TabControl1.GotoVisibleTab(0, TTabTransition.Slide);
end;

procedure TFormNovaVistoriaBeta.MemoOBSEnter(Sender: TObject);
begin

{ Foco := TControl(TMemo(sender).Parent);
 Ajustar_Scroll(); }

end;

procedure TFormNovaVistoriaBeta.rctMecanicaClick(Sender: TObject);
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

  TLoading.Show(FormNovaVistoriaBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(2000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbvistoriareparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := lblMecanica.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_VISTORIA;
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
       finally
        TLoading.Hide;
        ListBoxItensCheckList.EndUpdate;
        TabControl1.GotoVisibleTab(5, TTabTransition.Slide);

        FreeAndNil(qRemoveReparos);
        FreeAndNil(qBuscaItensCheck);
      end;
    End);

  End).Start;
  }
end;

procedure TFormNovaVistoriaBeta.Rectangle14Click(Sender: TObject);
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

  TLoading.Show(FormNovaVistoriaBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(2000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbvistoriareparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := LblAcessorios.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_VISTORIA;
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

  End).Start;
  }
End;

procedure TFormNovaVistoriaBeta.Rectangle15Click(Sender: TObject);
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

  TLoading.Show(FormNovaVistoriaBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(2000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbvistoriareparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := lblEstofamento.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_VISTORIA;
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

  End).Start;
  }
End;

procedure TFormNovaVistoriaBeta.rectLatariaClick(Sender: TObject);
var
 item : TListBoxItem;
 Frame: TFrameCheckListItens;
 Obs : String;
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

  //InputBox('Observação', 'Qual Observação da ' + lblLataria.Text + ' você tem?' , ' Digite aqui ');

  TLoading.Show(FormNovaVistoriaBeta, 'Aguarde, carregando informações...');

  TThread.CreateAnonymousThread(procedure
  Begin
   Sleep(2000);

      qRemoveReparos.SQL.Clear;
      qRemoveReparos.SQL.Add('delete from tbvistoriareparos where tipo_reparo=:tp and id_vistoria=:id');
      qRemoveReparos.ParamByName('tp').Text := lblLataria.Text;
      qRemoveReparos.ParamByName('id').AsInteger := DataModuleBancoFB.ID_VISTORIA;
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

        FreeAndNil( qBuscaItensCheck );
        FreeAndNil( qRemoveReparos );

      end;
    End);

  End).Start;
}

end;



end


.

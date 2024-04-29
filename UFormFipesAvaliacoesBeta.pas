unit UFormFipesAvaliacoesBeta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.Edit, System.JSON.Utils, System.JSON, System.JSON.Types;

type
  TFormFipesAvaliacoesBeta = class(TForm)
    Rectangle20: TRectangle;
    Image15: TImage;
    Image17: TImage;
    ListView1: TListView;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    EditAnoFipe: TEdit;
    EditModeloFipe: TEdit;
    Image1: TImage;
    procedure Image17Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image1MouseLeave(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    procedure GetFipe;
    procedure ProcessarGET;
    procedure AddFipeLV(id: integer; modelo, marca, cod_fipe: string;
      valor: Currency);
    procedure ProcessarGETErro(Sender: Tobject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFipesAvaliacoesBeta: TFormFipesAvaliacoesBeta;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormTeste, UFormVistoriasBeta, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl;

procedure TFormFipesAvaliacoesBeta.Image17Click(Sender: TObject);
begin

 Close;

end;

procedure TFormFipesAvaliacoesBeta.ProcessarGETErro(Sender: Tobject);
Begin

 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);

End;



procedure TFormFipesAvaliacoesBeta.AddFipeLV(id : integer;
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


procedure TFormFipesAvaliacoesBeta.ProcessarGET;
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

 procedure TFormFipesAvaliacoesBeta.GetFipe;
Var
 Ref: string;
Begin

  DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
  DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
  DataModuleBancoFB.qBuscaRefFipe.Open;

  Ref := StringReplace( DataModuleBancoFB.qBuscaRefFiperefAvaliacoes.AsString, '/', '', [rfReplaceAll] );

  DataModuleAPI.ReqFipeRefModeloAno.Resource := 'fipe/' + ref + '/' + EditModeloFipe.Text + '/' + EditAnoFipe.Text;

 ListView1.Items.Clear;
 try
   DataModuleAPI.ReqFipeRefModeloAno.ExecuteAsync(ProcessarGET, true, true, ProcessarGetErro);
   except on ex:Exception do
   ShowMessage('Falha ao carregar lista de fipe!' + ex.Message);
 end;

End;

procedure TFormFipesAvaliacoesBeta.Image1Click(Sender: TObject);

Var
 Ref : string;
 begin

      DataModuleBancoFB.qBuscaRefFipe.SQL.Clear;
      DataModuleBancoFB.qBuscaRefFipe.SQL.Add('select * from tbfiperef');
      DataModuleBancoFB.qBuscaRefFipe.Open;

      Ref := StringReplace( DataModuleBancoFB.qBuscaRefFiperefAvaliacoes.AsString, '/', '', [rfReplaceAll] );

      //DataModuleAPI.RESTFipe.BaseURL := 'http://169.57.147.37:9000/fipe/'+ Ref +'/'+EditModeloFipe.Text+'/'+EditAnoFipe.Text;

      GetFipe;

end;


procedure TFormFipesAvaliacoesBeta.Image1MouseEnter(Sender: TObject);
begin

 Image1.Opacity := 0.8;

end;

procedure TFormFipesAvaliacoesBeta.Image1MouseLeave(Sender: TObject);
begin

 Image1.Opacity := 1;

end;

procedure TFormFipesAvaliacoesBeta.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin

    if FormNovaVistoriaBeta  = nil then
    Begin
      FormNovaVistoriaBeta := TFormNovaVistoriaBeta.Create(self);
    End;

    FormNovaVistoriaBeta.MODELO   := TListItemText( AItem.Objects.FindDrawable('TextModelo') ).Text;
    FormNovaVistoriaBeta.COD_FIPE := TListItemText ( AItem.Objects.FindDrawable('TextCodFipe') ).Text;
    FormNovaVistoriaBeta.VLR_FIPE := StrToCurr( TListItemText ( AItem.Objects.FindDrawable('TextValor')).Text);

    FormNovaVistoriaBeta.ANO := EditAnoFipe.Text;

    ListView1.Items.Clear;

    FormNovaVistoriaBeta.TabControl1.ActiveTab := FormNovaVistoriaBeta.TabItem3;

    Close;

end;

end.

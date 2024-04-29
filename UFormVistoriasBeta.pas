unit UFormVistoriasBeta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Ani, FMX.Objects, FMX.Controls.Presentation, FMX.Edit, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, System.JSON;

type
  TFormVistoriasBeta = class(TForm)
    Rectangle1: TRectangle;
    EditPlaca: TEdit;
    rctPesquisar: TRectangle;
    imgBuscar: TImage;
    AnimationBuscar: TFloatAnimation;
    lblBuscar: TLabel;
    ListViewVistorias: TListView;
    procedure FormShow(Sender: TObject);
    procedure rctPesquisarClick(Sender: TObject);
  private
    procedure AddFipeLV(id: integer; placa, modelo: string);
    procedure GetVistorias;
    procedure ProcessarGET;
    procedure ProcessarGetErro(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVistoriasBeta: TFormVistoriasBeta;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormTeste, UFormVistoriasFeitas, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl;

procedure TFormVistoriasBeta.ProcessarGET;
Var
 json : string;
 arrayFipes : TJSONArray;
 i : integer;
Begin

 if DataModuleAPI.ReqVistorias.Response.StatusCode <> 200 then
 Begin
   ShowMessage('Ocorreu uma falha na consulta ' + IntToStr(DataModuleAPI.ReqVistorias.Response.StatusCode));
 End;

 try
   ListViewVistorias.BeginUpdate;
   json := DataModuleAPI.ReqVistorias.Response.JSONValue.ToString;
   arrayFipes := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONArray;

   for I := 0 to arrayFipes.Size -1 do

       AddFipeLV(arrayFipes.Get(i).GetValue<integer>('id',0),
                 arrayFipes.Get(i).GetValue<string>('placa', ''),
                 arrayFipes.Get(i).GetValue<string>('modelo', ''));

       arrayFipes.DisposeOf;
   finally

  ListViewVistorias.EndUpdate;

 end;

End;


procedure TFormVistoriasBeta.ProcessarGetErro(Sender: TObject);
Begin
 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);
End;

procedure TFormVistoriasBeta.rctPesquisarClick(Sender: TObject);
begin
      DataModuleAPI.ReqVistorias.Resource := 'vistorias/' + EditPlaca.Text;

      GetVistorias;
end;

procedure TFormVistoriasBeta.FormShow(Sender: TObject);
begin

 GetVistorias;

end;

procedure TFormVistoriasBeta.GetVistorias;
Begin

 ListViewVistorias.Items.Clear;

 try
   DataModuleAPI.ReqVistorias.ExecuteAsync(ProcessarGET, true, true, ProcessarGetErro);
   except on ex:Exception do
   ShowMessage('Falha ao carregar lista de Avaliações!' + ex.Message);
 end;

End;


procedure TFormVistoriasBeta.AddFipeLV(id : integer; placa, modelo: string);
Begin

   with ListViewVistorias.Items.Add do
   Begin
    //Height := 50;
    Tag := id;
    TListItemText(Objects.FindDrawable('TextModelo')).Text := modelo;
    TListItemText(Objects.FindDrawable('TextPlaca')).Text  := placa;

   End;

End;


end.

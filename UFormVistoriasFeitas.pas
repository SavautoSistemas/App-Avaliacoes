unit UFormVistoriasFeitas;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
 { FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.ListView, }
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  System.Rtti,
  System.Bindings.Outputs,
  Fmx.Bind.Editors,
  Data.Bind.EngExt,
  Fmx.Bind.DBEngExt,
  Data.Bind.Components,
  Data.Bind.DBScope,
  FMX.Objects,
  FMX.Colors,
  FMX.ListBox,
  FMX.Layouts,
  FMX.Edit,
  FMX.Ani,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  System.JSON;

type
   TFormVistoriaFeita = class(TForm)
    Rectangle1: TRectangle;
    EditPlaca: TEdit;
    rctPesquisar: TRectangle;
    imgBuscar: TImage;
    AnimationBuscar: TFloatAnimation;
    lblBuscar: TLabel;
    procedure FormShow(Sender: TObject);
    procedure imgBuscarClick(Sender: TObject);
  private
    procedure ProcessarGET;
    procedure ProcessarGetErro(Sender: TObject);
    procedure AddFipeLV(id: integer; placa, modelo: string);
    procedure GetVistorias;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVistoriaFeita: TFormVistoriaFeita;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormTeste, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl;

procedure TFormVistoriaFeita.ProcessarGET;
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
  // ListView1.BeginUpdate;
   json := DataModuleAPI.ReqVistorias.Response.JSONValue.ToString;
   arrayFipes := TJSONObject.ParseJSONValue( TEncoding.UTF8.GetBytes(json), 0 ) as TJSONArray;

   for I := 0 to arrayFipes.Size -1 do

       AddFipeLV(arrayFipes.Get(i).GetValue<integer>('id',0),
                 arrayFipes.Get(i).GetValue<string>('placa', ''),
                 arrayFipes.Get(i).GetValue<string>('modelo', ''));

       arrayFipes.DisposeOf;
   finally

  // ListView1.EndUpdate;

 end;

End;


procedure TFormVistoriaFeita.ProcessarGetErro(Sender: TObject);
Begin
 if Assigned(Sender) and (Sender is Exception) then
 ShowMessage(Exception(Sender).Message);
End;

procedure TFormVistoriaFeita.GetVistorias;
Begin

 //ListView1.Items.Clear;

 try
   DataModuleAPI.ReqAvaliacoes.ExecuteAsync(ProcessarGET, true, true, ProcessarGetErro);
   except on ex:Exception do
   ShowMessage('Falha ao carregar lista de Avaliações!' + ex.Message);
 end;

End;

procedure TFormVistoriaFeita.imgBuscarClick(Sender: TObject);
begin

      DataModuleAPI.RESTClientVistorias.BaseURL := 'http://169.57.147.37:9000/vistorias/'+EditPlaca.Text;

      GetVistorias;

end;

procedure TFormVistoriaFeita.AddFipeLV(id : integer; placa, modelo: string);
Begin

 {  with ListView1.Items.Add do
   Begin
    //Height := 50;
    Tag := id;
    TListItemText(Objects.FindDrawable('TextModelo')).Text := modelo;
    TListItemText(Objects.FindDrawable('TextPlaca')).Text  := placa;

   End; }

End;



procedure TFormVistoriaFeita.FormShow(Sender: TObject);
begin

 // ListView1.Items.Clear;

 GetVistorias;

end;


end.





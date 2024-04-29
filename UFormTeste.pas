unit UFormTeste;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.JSON.Types, System.JSON, FMX.Controls.Presentation,
  FMX.Edit, FMX.Objects, FMX.StdCtrls;

type
  TFormTeste = class(TForm)
    ListView1: TListView;
    Rectangle1: TRectangle;
    EditRef: TEdit;
    EditModelo: TEdit;
    EditAno: TEdit;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure AddFipeLV(id: integer; modelo, marca, cod_fipe, ano: string;
      valor: Currency);
    procedure GetFipe;
    procedure ProcessarGET;
    procedure ProcessarGetErro(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTeste: TFormTeste;

implementation

{$R *.fmx}

uses UDataModuleAPI;

procedure TFormTeste.Button1Click(Sender: TObject);
begin

 DataModuleAPI.RESTFipe.BaseURL := 'http://169.57.147.37:9000/fipe/'+EditRef.Text+'/'+EditModelo.Text+'/'+EditAno.Text;

 GetFipe;

end;

procedure TFormTeste.FormShow(Sender: TObject);
begin

 GetFipe;

end;

procedure TFormTeste.ProcessarGET;
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
                 arrayFipes.Get(i).GetValue<string>('marca', ''),
                 arrayFipes.Get(i).GetValue<string>('codFipe', ''),
                 arrayFipes.Get(i).GetValue<string>('ano', ''),
                 arrayFipes.Get(i).GetValue<currency>('valor', 0));

       arrayFipes.DisposeOf;



 finally

   ListView1.EndUpdate;

 end;

End;

procedure TFormTeste.ProcessarGetErro(Sender: TObject);
Begin

 if Assigned(Sender) and (Sender is Exception) then

 ShowMessage(Exception(Sender).Message);


End;

procedure TFormTeste.GetFipe;
Begin

 ListView1.Items.Clear;


 try


   DataModuleAPI.ReqFipeRefModeloAno.ExecuteAsync(ProcessarGET, true, true, ProcessarGetErro);

   except on ex:Exception do
   ShowMessage('Falha ao carregar lista de fipe!' + ex.Message);

 end;

End;

procedure TFormTeste.AddFipeLV(id : integer;
                               modelo,
                               marca,
                               cod_fipe,
                               ano : string;
                               valor : Currency);
Begin

   with ListView1.Items.Add do
   Begin

    Height := 50;

    Tag := id;

    TListItemText(Objects.FindDrawable('TextModelo')).Text := modelo;
    TListItemText(Objects.FindDrawable('TextMarca')).Text  := marca;
    TListItemText(Objects.FindDrawable('TextCodFipe')).Text:= cod_fipe;
    TListItemText(Objects.FindDrawable('TextValor')).Text  := CurrToStr( valor );

   End;

End;

end.

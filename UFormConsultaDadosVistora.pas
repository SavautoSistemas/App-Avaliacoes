unit UFormConsultaDadosVistora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListBox,
  FMX.TabControl, FMX.Edit, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, MemDS, DBAccess, Uni;

type
  TFormConsultaDadosVistora = class(TForm)
    TabControl1: TTabControl;
    TabItemFornecedor: TTabItem;
    TabItemPlaca: TTabItem;
    TabItemAnoModelo: TTabItem;
    TabItemPortas: TTabItem;
    TabItemCor: TTabItem;
    TabItemKM: TTabItem;
    TabItemOpcionais: TTabItem;
    TabItemAvarias: TTabItem;
    TabItemPrincipal: TTabItem;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    VertScrollBox1: TVertScrollBox;
    ListBox1: TListBox;
    ListBoxItemFornecedor: TListBoxItem;
    ListBoxItemPlaca: TListBoxItem;
    ListBoxItemAno: TListBoxItem;
    ListBoxItemModelo: TListBoxItem;
    ListBoxItemPortas: TListBoxItem;
    ListBoxItemCor: TListBoxItem;
    ListBoxItemKM: TListBoxItem;
    ListBoxItemOpcionais: TListBoxItem;
    ListBoxItemTotAvaria: TListBoxItem;
    ListBoxItemCategoria: TListBoxItem;
    Rectangle2: TRectangle;
    Label2: TLabel;
    Image3: TImage;
    Image4: TImage;
    Rectangle3: TRectangle;
    Label3: TLabel;
    Image5: TImage;
    Image6: TImage;
    Rectangle4: TRectangle;
    Label4: TLabel;
    Image7: TImage;
    Image8: TImage;
    Rectangle5: TRectangle;
    Label5: TLabel;
    Image9: TImage;
    Image10: TImage;
    Rectangle6: TRectangle;
    Label6: TLabel;
    Image11: TImage;
    Image12: TImage;
    Rectangle7: TRectangle;
    Label7: TLabel;
    Image13: TImage;
    Image14: TImage;
    Rectangle8: TRectangle;
    Label8: TLabel;
    Image15: TImage;
    Image16: TImage;
    Rectangle9: TRectangle;
    Label9: TLabel;
    Image17: TImage;
    Image18: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    Rectangle10: TRectangle;
    EditFornecedor: TEdit;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle11: TRectangle;
    EditPlaca: TEdit;
    Layout5: TLayout;
    Layout6: TLayout;
    Rectangle12: TRectangle;
    EditPortas: TEdit;
    Layout7: TLayout;
    Layout8: TLayout;
    Rectangle13: TRectangle;
    EditCor: TEdit;
    Layout9: TLayout;
    Layout10: TLayout;
    Rectangle14: TRectangle;
    EditKM: TEdit;
    Layout11: TLayout;
    Layout12: TLayout;
    Rectangle15: TRectangle;
    ComboBoxOp: TComboBox;
    UniQuery1: TUniQuery;
    procedure Image1Click(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure ListBoxItemFornecedorClick(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure Image9Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure ListBoxItemPlacaClick(Sender: TObject);
    procedure ListBoxItemAnoClick(Sender: TObject);
    procedure ListBoxItemModeloClick(Sender: TObject);
    procedure ListBoxItemPortasClick(Sender: TObject);
    procedure ListBoxItemCorClick(Sender: TObject);
    procedure ListBoxItemKMClick(Sender: TObject);
    procedure ListBoxItemOpcionaisClick(Sender: TObject);
    procedure ListBoxItemTotAvariaClick(Sender: TObject);
    procedure ListBoxItemCategoriaClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaDadosVistora: TFormConsultaDadosVistora;

implementation

{$R *.fmx}

uses Loading, UDataModuleAPI, UDataModuleBancoFB, UDataModuleCargaDados,
  UDataModulePuschNotification, UFormApp,
  UFormAtualizaAPp, UFormAvaliacao, UFormAvaliacaoNew, UFormAvariasBeta,
  UFormConsultaAvaliacao, UFormEdicaoVistoria, UFormFotosVistoriaNovo,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormSincroniaAvaiacoes, UFormTeste,
  UFormTestePushNotification, UFormVistoriasFeitas, UFrameItensCheck,
  UFrameListNotificacoes, uOpenViewUrl;



procedure TFormConsultaDadosVistora.Image10Click(Sender: TObject);
Var
   QAtualiza : TUniQuery;
begin

 QAtualiza := TUniQuery.Create(self);

 QAtualiza.Connection := DataModuleBancoFB.UniConnectionMySQL;

 QAtualiza.SQL.Clear;
 QAtualiza.SQL.Add('update tbVistoria set cor = :cor where id = :id');
 QAtualiza.ParamByName('id').AsInteger := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('id').AsInteger;
 QAtualiza.ParamByName('cor').Text := EditCor.Text;
 QAtualiza.Execute;

 QAtualiza.DisposeOf;

 FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
 DataModuleBancoFB.qVistorias.Refresh;

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image11Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.Image12Click(Sender: TObject);
Var
   QAtualiza : TUniQuery;
begin

 QAtualiza := TUniQuery.Create(self);

 QAtualiza.Connection := DataModuleBancoFB.UniConnectionMySQL;

 QAtualiza.SQL.Clear;
 QAtualiza.SQL.Add('update tbVistoria set portas = :portas where id = :id');
 QAtualiza.ParamByName('id').AsInteger := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('id').AsInteger;
 QAtualiza.ParamByName('portas').AsInteger := StrToInt(EditPortas.Text);
 QAtualiza.Execute;

 QAtualiza.DisposeOf;

 FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
 DataModuleBancoFB.qVistorias.Refresh;

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image13Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.Image15Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.Image16Click(Sender: TObject);
Var
   QAtualiza : TUniQuery;
begin

 QAtualiza := TUniQuery.Create(self);

 QAtualiza.Connection := DataModuleBancoFB.UniConnectionMySQL;

 QAtualiza.SQL.Clear;
 QAtualiza.SQL.Add('update tbVistoria set placa = :placa where id = :id');
 QAtualiza.ParamByName('id').AsInteger := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('id').AsInteger;
 QAtualiza.ParamByName('placa').Text := EditPlaca.Text;
 QAtualiza.Execute;

 QAtualiza.DisposeOf;

 FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
 DataModuleBancoFB.qVistorias.Refresh;

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image17Click(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image18Click(Sender: TObject);
Var
   QAtualiza : TUniQuery;
begin

 QAtualiza := TUniQuery.Create(self);

 QAtualiza.Connection := DataModuleBancoFB.UniConnectionMySQL;

 QAtualiza.SQL.Clear;
 QAtualiza.SQL.Add('update tbVistoria set fornecedor = :fornecedor where id = :id');
 QAtualiza.ParamByName('id').AsInteger := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('id').AsInteger;
 QAtualiza.ParamByName('fornecedor').Text := EditFornecedor.Text;
 QAtualiza.Execute;

 QAtualiza.DisposeOf;

 FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
 DataModuleBancoFB.qVistorias.Refresh;

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image1Click(Sender: TObject);
begin

 TLoading.Show(FormConsultaDadosVistora, 'Cancelando...');

 TThread.CreateAnonymousThread(procedure
 Begin
  Sleep(1000);
   TThread.Synchronize(nil, procedure
   Begin

    TLoading.Hide;

    Close;

   End);

 end).Start;

end;

procedure TFormConsultaDadosVistora.Image2Click(Sender: TObject);
begin

 TLoading.Show(FormConsultaDadosVistora, 'Aguarde... Atualizando vistoria...');

 TThread.CreateAnonymousThread(procedure
 Begin
  Sleep(2000);
   TThread.Synchronize(nil, procedure
   Begin

    FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
    DataModuleBancoFB.qVistorias.Refresh;

    TLoading.Hide;

    Close;

   End);

 End).Start;

end;

procedure TFormConsultaDadosVistora.Image3Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.Image5Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.Image6Click(Sender: TObject);
Var
   QAtualiza : TUniQuery;
begin

 QAtualiza := TUniQuery.Create(self);

 QAtualiza.Connection := DataModuleBancoFB.UniConnectionMySQL;

 QAtualiza.SQL.Clear;
 QAtualiza.SQL.Add('update tbVistoria set opcionais = :op where id = :id');
 QAtualiza.ParamByName('id').AsInteger := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('id').AsInteger;
 QAtualiza.ParamByName('op').Text := ComboBoxOp.Selected.Text;
 QAtualiza.Execute;

 QAtualiza.DisposeOf;

 FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
 DataModuleBancoFB.qVistorias.Refresh;

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image7Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.Image8Click(Sender: TObject);
Var
   QAtualiza : TUniQuery;
begin

 QAtualiza := TUniQuery.Create(self);

 QAtualiza.Connection := DataModuleBancoFB.UniConnectionMySQL;

 QAtualiza.SQL.Clear;
 QAtualiza.SQL.Add('update tbVistoria set km = :km where id = :id');
 QAtualiza.ParamByName('id').AsInteger := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('id').AsInteger;
 QAtualiza.ParamByName('km').AsFloat := StrToFloat(EditKM.Text);
 QAtualiza.Execute;

 QAtualiza.DisposeOf;

 FormVistoriaFeita.qBuscaDadosVistoria.Refresh;
 DataModuleBancoFB.qVistorias.Refresh;

 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.Image9Click(Sender: TObject);
begin
 TabControl1.GotoVisibleTab(8, TTabTransition.Slide);
end;

procedure TFormConsultaDadosVistora.ListBoxItemAnoClick(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemCategoriaClick(Sender: TObject);
begin

  TabControl1.GotoVisibleTab(7, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemCorClick(Sender: TObject);
begin

  EditCor.Text := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('cor').Text;
  TabControl1.GotoVisibleTab(4, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemFornecedorClick(Sender: TObject);
begin

 EditFornecedor.Text := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('fornecedor').Text;
 TabControl1.GotoVisibleTab(0, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemKMClick(Sender: TObject);
begin

 EditKM.Text := FloatToStr(FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('KM').AsFloat);
 TabControl1.GotoVisibleTab(5, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemModeloClick(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(2, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemOpcionaisClick(Sender: TObject);
begin

 TabControl1.GotoVisibleTab(6, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemPlacaClick(Sender: TObject);
begin

 EditPlaca.Text := FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('placa').Text;
 TabControl1.GotoVisibleTab(1, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemPortasClick(Sender: TObject);
begin

  EditPortas.Text := IntToStr(FormVistoriaFeita.qBuscaDadosVistoria.FieldByName('portas').AsInteger);
  TabControl1.GotoVisibleTab(3, TTabTransition.Slide);

end;

procedure TFormConsultaDadosVistora.ListBoxItemTotAvariaClick(Sender: TObject);
begin

  TabControl1.GotoVisibleTab(7, TTabTransition.Slide);

end;

end.

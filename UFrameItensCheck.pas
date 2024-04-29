unit UFrameItensCheck;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, Data.DB, MemDS, DBAccess, Uni;

type
  TFrameCheckListItens = class(TFrame)
    rectPrincipal: TRectangle;
    lblNome: TLabel;
    qBuscaValores: TUniQuery;
    qInsereReparo: TUniQuery;
    procedure rectPrincipalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TIPO : string;
  end;

implementation

{$R *.fmx}

uses Loading, Notificacao, UDataModuleAPI, UDataModuleBancoFB,
  UDataModuleCargaDados, UFormAtualizaAPp, UFormConsultaAvaliacao,
  UFormNotificacoes, UformNovaAvaliacaoBeta, UformNovaVistoriaBeta,
  UformPrincipalBeta, UFormTeste, UFormVistoriasFeitas,
  UFrameListNotificacoes, uOpenViewUrl;


procedure TFrameCheckListItens.rectPrincipalClick(Sender: TObject);
begin

 // Vai passar para reparo = true
 if rectPrincipal.Fill.Color = $FF03FF03 then
 Begin

   TThread.CreateAnonymousThread(procedure
   Begin
    Sleep(1000);
   // Busca ID reparo
     DataModuleBancoFB.qBuscaIdPreparoSQLite.SQL.Clear;
     DataModuleBancoFB.qBuscaIdPreparoSQLite.SQL.Add('select id, valor from tbReparos where nome = '+QuotedStr(lblNome.Text));
     DataModuleBancoFB.qBuscaIdPreparoSQLite.Open;
     TThread.Synchronize(nil, procedure
     Begin
       // Insere Reparo Vistoria
         if DataModuleBancoFB.ID_VISTORIA > 0 then
         Begin
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Clear;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('insert into tbVistoriaReparos');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('( id_vistoria, placa, id_reparo, nome_reparo, valor_reparo, tipo_reparo)');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('values');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('( :id_vistoria, :placa, :id_rep, :nome_rep, :vlr_rep, :tp_rep)');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('id_vistoria').AsInteger := DataModuleBancoFB.ID_VISTORIA;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('placa').Text := FormNovaVistoriaBeta.EditPlaca.Text;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('id_rep').AsInteger := DataModuleBancoFB.qBuscaIdPreparoSQLite.FieldByName('id').AsInteger;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('nome_rep').Text := lblNome.Text;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('vlr_rep').AsCurrency := DataModuleBancoFB.qBuscaIdPreparoSQLite.FieldByName('valor').AsCurrency;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('tp_rep').Text := TIPO;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ExecSQL;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.Close;
         End;
         if DataModuleBancoFB.ID_AVALIACAO > 0 then
         Begin
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Clear;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('insert into tbavaliacoesReparos');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('( id_vistoria, placa, id_reparo, nome_reparo, valor_reparo, tipo_reparo)');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('values');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.SQL.Add('( :id_vistoria, :placa, :id_rep, :nome_rep, :vlr_rep, :tp_rep)');
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('id_vistoria').AsInteger := DataModuleBancoFB.ID_AVALIACAO;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('placa').Text := FormNovaAvaliacaoBeta.EditPlacaAvaliacao.Text;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('id_rep').AsInteger := DataModuleBancoFB.qBuscaIdPreparoSQLite.FieldByName('id').AsInteger;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('nome_rep').Text := lblNome.Text;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('vlr_rep').AsCurrency := DataModuleBancoFB.qBuscaIdPreparoSQLite.FieldByName('valor').AsCurrency;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ParamByName('tp_rep').Text := TIPO;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.ExecSQL;
           DataModuleBancoFB.qInsereItemMecanicaSQLite.Close;
         End;
     End);
   End).Start;

   rectPrincipal.Fill.Color := $FFFF2929;

   TLoading.Hide;

   ShowMessage('Reparo inserido com sucesso!');

 End
 Else
 // vai passar para reparo = false
 Begin

   TThread.CreateAnonymousThread(procedure
   Begin
    Sleep(1000);
     DataModuleBancoFB.qBuscaIdPreparoSQLite.SQL.Clear;
     DataModuleBancoFB.qBuscaIdPreparoSQLite.SQL.Add('select id, valor from tbReparos where nome = '+QuotedStr(lblNome.Text));
     DataModuleBancoFB.qBuscaIdPreparoSQLite.Open;
     TThread.Synchronize(nil, procedure
     Begin
       if DataModuleBancoFB.ID_VISTORIA > 0 then
       Begin
         DataModuleBancoFB.qLimpaReparoSQLite.Close;
         DataModuleBancoFB.qLimpaReparoSQLite.SQL.Clear;
         DataModuleBancoFB.qLimpaReparoSQLite.SQL.Add('delete from tbVistoriaReparos where id_vistoria=:id_vistoria and');
         DataModuleBancoFB.qLimpaReparoSQLite.SQL.Add('placa = :placa and nome_reparo=:reparo and tipo_reparo = :tipo');
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('id_vistoria').AsInteger := DataModuleBancoFB.ID_VISTORIA;
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('placa').Text := FormNovaVistoriaBeta.EditPlaca.Text;
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('reparo').Text := lblNome.Text;
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('tipo').Text := TIPO;
         DataModuleBancoFB.qLimpaReparoSQLite.ExecSQL;
         DataModuleBancoFB.qLimpaReparoSQLite.Close;
       End;
       if DataModuleBancoFB.ID_AVALIACAO > 0 then
       Begin
         DataModuleBancoFB.qLimpaReparoSQLite.Close;
         DataModuleBancoFB.qLimpaReparoSQLite.SQL.Clear;
         DataModuleBancoFB.qLimpaReparoSQLite.SQL.Add('delete from tbavaliacoesReparos where id_vistoria=:id_avaliacao and');
         DataModuleBancoFB.qLimpaReparoSQLite.SQL.Add('placa = :placa and nome_reparo=:reparo and tipo_reparo = :tipo');
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('id_avaliacao').AsInteger := DataModuleBancoFB.ID_AVALIACAO;
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('placa').Text := FormNovaAvaliacaoBeta.EditPlacaAvaliacao.Text;
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('reparo').Text := lblNome.Text;
         DataModuleBancoFB.qLimpaReparoSQLite.ParamByName('tipo').Text := TIPO;
         DataModuleBancoFB.qLimpaReparoSQLite.ExecSQL;
         DataModuleBancoFB.qLimpaReparoSQLite.Close;
       End;
     End);
   End).Start;

   rectPrincipal.Fill.Color := $FF03FF03;

   TLoading.Hide;

   ShowMessage('Reparo retirado com sucesso!');
 End;

 DataModuleBancoFB.qBuscaIdPreparoSQLite.Close;

end;

end.

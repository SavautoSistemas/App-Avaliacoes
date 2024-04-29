unit UFormAvariasBeta;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView;

type
  TFormAvariasBeta = class(TForm)
    Rectangle2: TRectangle;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    TabControl1: TTabControl;
    Tab_sel_tipo: TTabItem;
    Tab_sel_avaria: TTabItem;
    ListViewSelTipo: TListView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAvariasBeta: TFormAvariasBeta;

implementation

{$R *.fmx}

end.

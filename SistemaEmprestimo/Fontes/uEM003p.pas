unit uEM003p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, SimpleDS,
  Data.DBXInterBase;

type
  TovF_EM003p = class(TForm)
    Panel1: TPanel;
    ovCB_CampoFiltro: TComboBox;
    ovE_Filtro: TEdit;
    ovB_Pesquisa: TButton;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    oSD_Pesquisa: TSimpleDataSet;
    oDS_Pesquisa: TDataSource;
    oQ_Usuario: TFDQuery;
    oQ_UsuarioIDUSU: TIntegerField;
    oQ_UsuarioCODUSU: TIntegerField;
    oQ_UsuarioNOMUSU: TStringField;
    oQ_UsuarioTELUSU: TStringField;
    oQ_UsuarioENDUSU: TStringField;
    oQ_UsuarioCIDUSU: TStringField;
    oQ_UsuarioUFUSU: TStringField;
    oQ_UsuarioOBSUSU: TMemoField;
    oDSP_Usuario: TDataSetProvider;
    oCDS_Usuario: TClientDataSet;
    oCDS_UsuarioIDUSU: TIntegerField;
    oCDS_UsuarioCODUSU: TIntegerField;
    oCDS_UsuarioNOMUSU: TStringField;
    oCDS_UsuarioTELUSU: TStringField;
    oCDS_UsuarioENDUSU: TStringField;
    oCDS_UsuarioCIDUSU: TStringField;
    oCDS_UsuarioUFUSU: TStringField;
    oCDS_UsuarioOBSUSU: TMemoField;
    oDS_Usuario: TDataSource;
    procedure ovB_PesquisaClick(Sender: TObject);
    procedure ovE_FiltroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_EM003p: TovF_EM003p;

implementation

uses uDMConexao;

{$R *.dfm}


procedure TovF_EM003p.ovB_PesquisaClick(Sender: TObject);
begin
   begin
     if (ovCB_CampoFiltro.Text <> EmptyStr) and //Verifico se o comboBox foi preenchido
      (ovE_Filtro.Text <> EmptyStr) then //verifico se o edit possui algum valor
     begin
       With oCDS_Usuario do
       begin
         Close;
         CommandText:='select idusu, codusu, nomusu, telusu, endusu, cidusu, ufusu, obsusu from usuarios Where '+
                      ovCB_CampoFiltro.Text+ ' LIKE '+QuotedStr(ovE_Filtro.Text+'%');
         Open;
       end;
     end;
   end;
end;


procedure TovF_EM003p.ovE_FiltroKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then // #13 é o símbolo que representa a tecla Enter
   begin
     if (ovCB_CampoFiltro.Text <> EmptyStr) and //Verifico se o comboBox foi preenchido
      (ovE_Filtro.Text <> EmptyStr) then //verifico se o edit possui algum valor
     begin
       With oCDS_Usuario do
       begin
         Close;
         CommandText:='select idusu, codusu, nomusu, telusu, endusu, cidusu, ufusu, obsusu from usuarios Where '+
                      ovCB_CampoFiltro.Text+ ' LIKE '+QuotedStr(ovE_Filtro.Text+'%');
         Open;
       end;
     end;
   end;
end;

end.

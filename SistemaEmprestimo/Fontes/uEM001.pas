unit uEM001;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TovF_EM001 = class(TForm)
    oDSP_Usuario: TDataSetProvider;
    oCDS_Usuario: TClientDataSet;
    oDS_Usuario: TDataSource;
    oQ_Usuario: TFDQuery;
    oQ_UsuarioIDUSU: TIntegerField;
    oQ_UsuarioCODUSU: TIntegerField;
    oQ_UsuarioNOMUSU: TStringField;
    oQ_UsuarioTELUSU: TStringField;
    oQ_UsuarioENDUSU: TStringField;
    oQ_UsuarioCIDUSU: TStringField;
    oQ_UsuarioUFUSU: TStringField;
    oQ_UsuarioOBSUSU: TMemoField;
    oCDS_UsuarioIDUSU: TIntegerField;
    oCDS_UsuarioCODUSU: TIntegerField;
    oCDS_UsuarioNOMUSU: TStringField;
    oCDS_UsuarioTELUSU: TStringField;
    oCDS_UsuarioENDUSU: TStringField;
    oCDS_UsuarioCIDUSU: TStringField;
    oCDS_UsuarioUFUSU: TStringField;
    oCDS_UsuarioOBSUSU: TMemoField;
    ovB_Abrir: TButton;
    ovB_Fechar: TButton;
    ovDBG_Usuarios: TDBGrid;
    procedure ovB_AbrirClick(Sender: TObject);
    procedure ovB_FecharClick(Sender: TObject);
    procedure ovDBG_UsuariosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_EM001: TovF_EM001;

implementation

uses uDMConexao;

{$R *.dfm}

procedure TovF_EM001.ovB_AbrirClick(Sender: TObject);
begin
  if not oCDS_Usuario.Active then
    oCDS_Usuario.Open;

end;

procedure TovF_EM001.ovB_FecharClick(Sender: TObject);
begin
if not oCDS_Usuario.Active then
    oCDS_Usuario.Close;
end;

procedure TovF_EM001.ovDBG_UsuariosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if oCDS_Usuarioufusu.asString = 'PR' then
    ovDBG_Usuarios.Canvas.Brush.Color := clRed;
    ovDBG_Usuarios.DefaultDrawColumnCell( Rect, DataCol, Column, State);
end;

end.

unit uEM002;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TovF_EM002 = class(TForm)
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
    ovDBN_Navegador: TDBNavigator;
    ovDBE_idusu: TDBEdit;
    ovDBE_nomusu: TDBEdit;
    ovDBE_codusu: TDBEdit;
    ovDBE_telusu: TDBEdit;
    ovDBE_endusu: TDBEdit;
    ovDBE_cidusu: TDBEdit;
    ovDBE_ufusu: TDBEdit;
    ovDBE_obsusu: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ovB_Apply: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ovB_ApplyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_EM002: TovF_EM002;

implementation

{$R *.dfm}

procedure TovF_EM002.FormCreate(Sender: TObject);
begin
  oCDS_Usuario.Open;
end;

procedure TovF_EM002.ovB_ApplyClick(Sender: TObject);
begin
  if (oCDS_Usuario.ChangeCount > 0) then
    begin
      if oCDS_Usuario.ApplyUpdates ( 0 ) <> 0 then
            begin
              showmessage('Houve erro ao gravar os dados no banco!');
            end
            else
            begin
               showmessage('Alterações salvas com sucesso!');
            end;
    end;
end;

end.

unit uEM003;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ExtCtrls, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons;

type
  TovF_EM003 = class(TForm)
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
    ovP_Botoes: TPanel;
    ovB_Gravar: TButton;
    ovB_Sair: TButton;
    ovB_Cancelar: TButton;
    ovB_Excluir: TButton;
    ovP_Chave: TPanel;
    ovE_idusu: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    ovDBE_nomusu: TDBEdit;
    ovDBE_telusu: TDBEdit;
    ovDBE_endusu: TDBEdit;
    ovDBE_cidusu: TDBEdit;
    ovDBE_obsusu: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ovDBE_codusu: TDBEdit;
    Label2: TLabel;
    Label9: TLabel;
    ovDBCB_ufusu: TDBComboBox;
    ovB_NovoID: TButton;
    ovSB_Pesquisa: TSpeedButton;
    procedure ovP_ChaveExit(Sender: TObject);
    procedure ovB_GravarClick(Sender: TObject);
    procedure ovB_CancelarClick(Sender: TObject);
    procedure ovB_ExcluirClick(Sender: TObject);
    procedure ovB_SairClick(Sender: TObject);
    procedure ovB_NovoIDClick(Sender: TObject);
    procedure ovSB_PesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_EM003: TovF_EM003;

implementation

{$R *.dfm}

uses uDMConexao, uEM003p;

procedure TovF_EM003.ovB_CancelarClick(Sender: TObject);
begin
  oCDS_Usuario.Close;
  ovE_idusu.setfocus;
end;

procedure TovF_EM003.ovB_ExcluirClick(Sender: TObject);
begin
    oCDS_Usuario.Delete;
    if oCDS_Usuario.ChangeCount > 0 then
    begin
      if oCDS_Usuario.ApplyUpdates(0) <> 0 then
      begin
        showmessage('N�o foi poss�vel remover o registro!');
      end
      else
      begin
         showmessage('Registro removido com sucesso!');
         oCDS_Usuario.Close;
         ovE_idusu.setfocus;
      end;

    end;
end;

procedure TovF_EM003.ovB_GravarClick(Sender: TObject);
begin
  oCDS_Usuario.CheckBrowseMode;

  if oCDS_Usuario.ChangeCount> 0 then
    begin
      if oCDS_Usuario.ApplyUpdates(0) <> 0 then
        begin
          showmessage('Dados n�o salvo corretamente!');
        end
    else
    begin
      showmessage('Dados salvos com sucesso!');
      oCDS_Usuario.Close;
      ovE_idusu.SetFocus;
    end;
end;
end;


procedure TovF_EM003.ovB_NovoIDClick(Sender: TObject);
var
  consulta: TFDQuery;
  ultimoCodigo: integer;
begin
  consulta:= TFDQuery.Create(nil);
  try
    consulta.Connection := uDM_Conexao.oSQLConnection;
    consulta.SQL.Text:= 'SELECT FIRST 1 IDUSU FROM USUARIOS ORDER BY IDUSU DESC';
    consulta.Open;
    ultimoCodigo:= consulta.fieldByName('idusu').AsInteger;
    consulta.Close;
  finally
    consulta.free;
  end;
    ultimoCodigo:= ultimoCodigo + 1;
    ovE_idusu.Text := intToStr(ultimoCodigo);
    ovE_idusu.setfocus;
end;

procedure TovF_EM003.ovB_SairClick(Sender: TObject);
begin
  ovF_EM003.CLose;
end;

procedure TovF_EM003.ovP_ChaveExit(Sender: TObject);
var
  CodigoUsuario : integer;
begin
  try
    CodigoUsuario := StrToInt( ovE_idusu.Text ); //IntToStr
  except
    showmessage('codigo invalido');
    ovE_idusu.SetFocus;
    exit;
  end;
    oCDS_Usuario.Close;
    oCDS_Usuario.Params.ParamByName('codusu').value := CodigoUsuario;
    oCDS_Usuario.Open;

    if oCDS_Usuario.IsEmpty then
    begin
      oCDS_Usuario.insert;
      oCDS_Usuariocodusu.Value := CodigoUsuario;
    end
    else
    begin
      oCDS_Usuario.Edit;
    end;

end;


procedure TovF_EM003.ovSB_PesquisaClick(Sender: TObject);
var
  pesquisa: TovF_EM003p;
begin
  pesquisa:= TovF_EM003p.create(nil);
  try
    if pesquisa.ShowModal = mrOk then
    begin
      ovE_idusu.text := pesquisa.oSD_Pesquisa.FieldByName('idusu').asString;
      ovE_idusu.setfocus;
    end;
  finally
    pesquisa.free;
  end;
end;

end.

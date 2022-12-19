unit uEM006;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TovF_EM006 = class(TForm)
    oQ_Emprestimo: TFDQuery;
    oQ_EmprestimoIDEMP: TIntegerField;
    oQ_EmprestimoIDITE: TIntegerField;
    oQ_EmprestimoDATEMP: TDateField;
    oQ_EmprestimoIDUSU: TIntegerField;
    oQ_EmprestimoOBSEMP: TMemoField;
    oQ_EmprestimoDEVEMP: TDateField;
    oDSP_Emprestimo: TDataSetProvider;
    oCDS_Emprestimo: TClientDataSet;
    oCDS_EmprestimoIDEMP: TIntegerField;
    oCDS_EmprestimoIDITE: TIntegerField;
    oCDS_EmprestimoDATEMP: TDateField;
    oCDS_EmprestimoIDUSU: TIntegerField;
    oCDS_EmprestimoOBSEMP: TMemoField;
    oCDS_EmprestimoDEVEMP: TDateField;
    oDS_Emprestimo: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    ovB_Sair: TButton;
    ovB_Novo: TButton;
    DBGrid1: TDBGrid;
    procedure ovB_SairClick(Sender: TObject);
    procedure ovB_NovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ovF_EM006: TovF_EM006;

implementation

{$R *.dfm}
uses uEM005;

procedure TovF_EM006.DBGrid1DblClick(Sender: TObject);
var
  FormularioEmprestimo: TovF_EM005;
begin
  if not oCDS_Emprestimo.IsEmpty then
  begin
    FormularioEmprestimo:= TovF_EM005.Create (nil);
    try
      FormularioEmprestimo.ovE_idemp.text := oCDS_Emprestimo.FieldByName('idemp').AsString;
      FormularioEmprestimo.ovP_Chave.OnExit(FormularioEmprestimo.ovP_Chave);
      FormularioEmprestimo.showmodal;
    finally
      FormularioEmprestimo.free;
    end;
    oCDS_Emprestimo.Close;
    oCDS_Emprestimo.Open;
  end;

end;

procedure TovF_EM006.FormCreate(Sender: TObject);
begin
  oCDS_Emprestimo.Open;
end;

procedure TovF_EM006.ovB_NovoClick(Sender: TObject);
var
  FormularioEmprestimo : TovF_EM005;
begin
  FormularioEmprestimo := TovF_EM005.Create (nil);
  try
  FormularioEmprestimo.ShowModal;
  finally
  FormularioEmprestimo.free;
  end;
  oCDS_Emprestimo.Close;
  oCDS_Emprestimo.Open;

end;

procedure TovF_EM006.ovB_SairClick(Sender: TObject);
begin
  close;
end;

end.

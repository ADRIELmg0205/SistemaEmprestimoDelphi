program SistemaEmprestimo;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {ovF_Principal},
  uDMConexao in 'uDMConexao.pas' {uDM_Conexao: TDataModule},
  uEM001 in 'uEM001.pas' {ovF_EM001},
  uEM002 in 'uEM002.pas' {ovF_EM002},
  uEM003 in 'uEM003.pas' {ovF_EM003},
  uEM003p in 'uEM003p.pas' {ovF_EM003p},
  uEM005 in 'uEM005.pas' {ovF_EM005},
  uEM006 in 'uEM006.pas' {ovF_EM006};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TovF_Principal, ovF_Principal);
  Application.CreateForm(TuDM_Conexao, uDM_Conexao);
  Application.CreateForm(TovF_EM002, ovF_EM002);
  Application.CreateForm(TovF_EM003, ovF_EM003);
  Application.CreateForm(TovF_EM005, ovF_EM005);
  Application.CreateForm(TovF_EM006, ovF_EM006);
  Application.Run;
end.

object ovF_Principal: TovF_Principal
  Left = 0
  Top = 0
  Caption = 'Sistema de controle de empr'#233'stimos'
  ClientHeight = 315
  ClientWidth = 555
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 549
    Height = 294
    Align = alClient
    Alignment = taCenter
    Caption = 'Sistema de Emprestimos'
    Color = clSkyBlue
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 468
    ExplicitHeight = 57
  end
  object Label2: TLabel
    Left = 0
    Top = 300
    Width = 555
    Height = 15
    Align = alBottom
    Caption = '  Vers'#227'o: 1.0   Ano: 2022     Autor: Adriel Matheus Graupp'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 263
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 152
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object UsuriodeEmpr1: TMenuItem
        Caption = 'Usu'#225'rio de empr'#233'stimo'
        OnClick = Usurios1Click
      end
      object CadastrarEmprestimos1: TMenuItem
        Caption = 'Cadastrar Emprestimos'
        OnClick = CadastrarEmprestimos1Click
      end
      object Devoluodeemprstimo1: TMenuItem
        Caption = 'Devolu'#231#227'o de empr'#233'stimo'
        OnClick = Devoluodeemprstimo1Click
      end
      object Pesquisa1: TMenuItem
        Caption = 'Pesquisa'
        OnClick = Pesquisa1Click
      end
    end
    object FormasdeCadastro1: TMenuItem
      Caption = 'Formas de Cadastro'
      object FormasdeCadastro2: TMenuItem
        Caption = 'Forma 1'
        OnClick = FormasdeCadastro2Click
      end
      object Forma21: TMenuItem
        Caption = 'Forma 2'
        OnClick = Forma21Click
      end
      object Forma31: TMenuItem
        Caption = 'Forma 3'
        OnClick = Forma31Click
      end
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      object Projeto1: TMenuItem
        Caption = 'Projeto'
        OnClick = Projeto1Click
      end
      object Autor1: TMenuItem
        Caption = 'Autor'
        OnClick = Autor1Click
      end
      object MaisProjetos1: TMenuItem
        Caption = 'Mais Projetos'
        OnClick = MaisProjetos1Click
      end
      object Contato1: TMenuItem
        Caption = 'Contato'
        OnClick = Contato1Click
      end
    end
  end
end

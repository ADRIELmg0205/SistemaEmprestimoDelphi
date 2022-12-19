object ovF_EM006: TovF_EM006
  Left = 0
  Top = 0
  Caption = 'Devolu'#231#227'o de empr'#233'stimos'
  ClientHeight = 348
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 65
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object ovB_Sair: TButton
      Left = 622
      Top = 10
      Width = 75
      Height = 48
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = ovB_SairClick
    end
    object ovB_Novo: TButton
      Left = 488
      Top = 10
      Width = 128
      Height = 48
      Caption = 'Novo empr'#233'stimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ovB_NovoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 710
    Height = 283
    Align = alClient
    Caption = 'Panel2'
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 14
      Top = 8
      Width = 579
      Height = 225
      DataSource = oDS_Emprestimo
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'IDEMP'
          Title.Caption = 'ID'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDITE'
          Title.Caption = 'Oque emprestou?'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATEMP'
          Title.Caption = 'Data do empr'#233'stimo'
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IDUSU'
          Title.Caption = 'Quem emprestou?'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBSEMP'
          Title.Caption = 'Observa'#231#227'o'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEVEMP'
          Title.Caption = 'Data de devolu'#231#227'o'
          Visible = True
        end>
    end
  end
  object oQ_Emprestimo: TFDQuery
    Connection = uDM_Conexao.oSQLConnection
    SQL.Strings = (
      
        'SELECT idemp, idite, datemp, idusu, obsemp, devemp FROM empresti' +
        'mo'
      'where devemp is null;')
    Left = 642
    Top = 80
    ParamData = <
      item
        Position = 1
        Name = 'IDEMP'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object oQ_EmprestimoIDEMP: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEMP'
      Origin = 'IDEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oQ_EmprestimoIDITE: TIntegerField
      FieldName = 'IDITE'
      Origin = 'IDITE'
    end
    object oQ_EmprestimoDATEMP: TDateField
      FieldName = 'DATEMP'
      Origin = 'DATEMP'
    end
    object oQ_EmprestimoIDUSU: TIntegerField
      FieldName = 'IDUSU'
      Origin = 'IDUSU'
    end
    object oQ_EmprestimoOBSEMP: TMemoField
      FieldName = 'OBSEMP'
      Origin = 'OBSEMP'
      BlobType = ftMemo
    end
    object oQ_EmprestimoDEVEMP: TDateField
      FieldName = 'DEVEMP'
      Origin = 'DEVEMP'
    end
  end
  object oDSP_Emprestimo: TDataSetProvider
    DataSet = oQ_Emprestimo
    UpdateMode = upWhereKeyOnly
    Left = 642
    Top = 128
  end
  object oCDS_Emprestimo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'IDEMP'
        ParamType = ptInput
      end>
    ProviderName = 'oDSP_Emprestimo'
    Left = 642
    Top = 184
    object oCDS_EmprestimoIDEMP: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDEMP'
      Origin = 'IDEMP'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oCDS_EmprestimoIDITE: TIntegerField
      FieldName = 'IDITE'
      Origin = 'IDITE'
    end
    object oCDS_EmprestimoDATEMP: TDateField
      FieldName = 'DATEMP'
      Origin = 'DATEMP'
    end
    object oCDS_EmprestimoIDUSU: TIntegerField
      FieldName = 'IDUSU'
      Origin = 'IDUSU'
    end
    object oCDS_EmprestimoOBSEMP: TMemoField
      FieldName = 'OBSEMP'
      Origin = 'OBSEMP'
      BlobType = ftMemo
    end
    object oCDS_EmprestimoDEVEMP: TDateField
      FieldName = 'DEVEMP'
      Origin = 'DEVEMP'
    end
  end
  object oDS_Emprestimo: TDataSource
    DataSet = oCDS_Emprestimo
    Left = 642
    Top = 240
  end
end

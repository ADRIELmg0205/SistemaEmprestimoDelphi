object ovF_EM005: TovF_EM005
  Left = 0
  Top = 0
  Caption = 'Cadastro de empr'#233'stimos'
  ClientHeight = 408
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ovP_Botoes: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 57
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object ovSB_Pesquisa: TSpeedButton
      Left = 377
      Top = 17
      Width = 169
      Height = 25
      Caption = 'Devolu'#231#227'o de Emprestimos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = ovSB_PesquisaClick
    end
    object ovB_Gravar: TButton
      Left = 42
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = ovB_GravarClick
    end
    object ovB_Sair: TButton
      Left = 656
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ovB_SairClick
    end
    object ovB_Cancelar: TButton
      Left = 204
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ovB_CancelarClick
    end
    object ovB_Excluir: TButton
      Left = 123
      Top = 17
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = ovB_ExcluirClick
    end
  end
  object ovP_Chave: TPanel
    Left = 0
    Top = 57
    Width = 748
    Height = 50
    Align = alTop
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 1
    OnExit = ovP_ChaveExit
    object Label1: TLabel
      Left = 96
      Top = 23
      Width = 69
      Height = 13
      Caption = 'EMPRESTIMO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object ovE_idemp: TEdit
      Left = 171
      Top = 23
      Width = 62
      Height = 21
      NumbersOnly = True
      TabOrder = 0
    end
    object ovB_NovoID: TButton
      Left = 250
      Top = 24
      Width = 59
      Height = 20
      Caption = 'Gerar ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ovB_NovoIDClick
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 107
    Width = 748
    Height = 301
    Align = alClient
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 50
      Top = 25
      Width = 115
      Height = 13
      Caption = 'DATA DE EMPRESTIMO:'
    end
    object Label5: TLabel
      Left = 50
      Top = 192
      Width = 111
      Height = 13
      Caption = 'DATA DE DEVOLU'#199#195'O:'
    end
    object Label7: TLabel
      Left = 89
      Top = 150
      Width = 72
      Height = 13
      Caption = 'OBSERVA'#199#195'O:'
    end
    object Label8: TLabel
      Left = 23
      Top = 108
      Width = 138
      Height = 13
      Caption = 'OQUE EST'#193' EMPRESTANDO:'
    end
    object Label2: TLabel
      Left = 59
      Top = -13
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object Label9: TLabel
      Left = 27
      Top = 65
      Width = 138
      Height = 13
      Caption = 'QUEM EST'#193' EMPRESTANDO:'
    end
    object Label4: TLabel
      Left = 419
      Top = 65
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object Label6: TLabel
      Left = 419
      Top = 108
      Width = 15
      Height = 13
      Caption = 'ID:'
    end
    object ovDBE_datemp: TDBEdit
      Left = 171
      Top = 22
      Width = 89
      Height = 21
      DataField = 'DATEMP'
      DataSource = oDS_Emprestimo
      TabOrder = 0
    end
    object ovDBLC_idusu: TDBLookupComboBox
      Left = 172
      Top = 65
      Width = 241
      Height = 21
      DataField = 'IDUSU'
      DataSource = oDS_Emprestimo
      KeyField = 'IDUSU'
      ListField = 'NOMUSU'
      ListSource = oDS_Usuario
      TabOrder = 1
    end
    object ovDBLC_idite: TDBLookupComboBox
      Left = 172
      Top = 108
      Width = 242
      Height = 21
      DataField = 'IDITE'
      DataSource = oDS_Emprestimo
      KeyField = 'IDITE'
      ListField = 'DESITE'
      ListSource = oDS_ItemEmprestimo
      TabOrder = 2
    end
    object ovDBE_obsemp: TDBEdit
      Left = 172
      Top = 145
      Width = 325
      Height = 21
      DataField = 'OBSEMP'
      DataSource = oDS_Emprestimo
      TabOrder = 3
    end
    object ovDBE_devemp: TDBEdit
      Left = 171
      Top = 190
      Width = 89
      Height = 21
      DataField = 'DEVEMP'
      DataSource = oDS_Emprestimo
      TabOrder = 4
    end
    object ovDBE_idite: TDBEdit
      Left = 440
      Top = 108
      Width = 57
      Height = 21
      DataField = 'IDITE'
      DataSource = oDS_Emprestimo
      TabOrder = 5
    end
    object ovDBE_idusu: TDBEdit
      Left = 440
      Top = 65
      Width = 57
      Height = 21
      DataField = 'IDUSU'
      DataSource = oDS_Emprestimo
      TabOrder = 6
    end
  end
  object oQ_Emprestimo: TFDQuery
    Connection = uDM_Conexao.oSQLConnection
    SQL.Strings = (
      
        'SELECT idemp, idite, datemp, idusu, obsemp, devemp FROM empresti' +
        'mo'
      'where idemp =:idemp;')
    Left = 688
    Top = 112
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
    Left = 688
    Top = 168
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
    Left = 688
    Top = 224
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
      DisplayFormat = 'dd/mm/yyyy'
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
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object oDS_Emprestimo: TDataSource
    DataSet = oCDS_Emprestimo
    Left = 688
    Top = 280
  end
  object oQ_Usuario: TFDQuery
    Active = True
    Connection = uDM_Conexao.oSQLConnection
    SQL.Strings = (
      
        'SELECT idusu, codusu, nomusu, telusu, endusu, CIDUSU, ufusu, obs' +
        'usu FROM USUARIOS u ;')
    Left = 40
    Top = 341
    object oQ_UsuarioIDUSU: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDUSU'
      Origin = 'IDUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oQ_UsuarioCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
    end
    object oQ_UsuarioNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Origin = 'NOMUSU'
      Size = 80
    end
    object oQ_UsuarioTELUSU: TStringField
      FieldName = 'TELUSU'
      Origin = 'TELUSU'
    end
    object oQ_UsuarioENDUSU: TStringField
      FieldName = 'ENDUSU'
      Origin = 'ENDUSU'
      Size = 100
    end
    object oQ_UsuarioCIDUSU: TStringField
      FieldName = 'CIDUSU'
      Origin = 'CIDUSU'
      Size = 40
    end
    object oQ_UsuarioUFUSU: TStringField
      FieldName = 'UFUSU'
      Origin = 'UFUSU'
      FixedChar = True
      Size = 2
    end
    object oQ_UsuarioOBSUSU: TMemoField
      FieldName = 'OBSUSU'
      Origin = 'OBSUSU'
      BlobType = ftMemo
    end
  end
  object oDSP_Usuario: TDataSetProvider
    DataSet = oQ_Usuario
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 341
  end
  object oCDS_Usuario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'oDSP_Usuario'
    Left = 192
    Top = 341
    object oCDS_UsuarioIDUSU: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDUSU'
      Origin = 'IDUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oCDS_UsuarioCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
    end
    object oCDS_UsuarioNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Origin = 'NOMUSU'
      Size = 80
    end
    object oCDS_UsuarioTELUSU: TStringField
      FieldName = 'TELUSU'
      Origin = 'TELUSU'
    end
    object oCDS_UsuarioENDUSU: TStringField
      FieldName = 'ENDUSU'
      Origin = 'ENDUSU'
      Size = 100
    end
    object oCDS_UsuarioCIDUSU: TStringField
      FieldName = 'CIDUSU'
      Origin = 'CIDUSU'
      Size = 40
    end
    object oCDS_UsuarioUFUSU: TStringField
      FieldName = 'UFUSU'
      Origin = 'UFUSU'
      FixedChar = True
      Size = 2
    end
    object oCDS_UsuarioOBSUSU: TMemoField
      FieldName = 'OBSUSU'
      Origin = 'OBSUSU'
      BlobType = ftMemo
    end
  end
  object oDS_Usuario: TDataSource
    DataSet = oCDS_Usuario
    Left = 272
    Top = 341
  end
  object oDSP_ItemEmprestimo: TDataSetProvider
    DataSet = oQ_ItemEmprestimo
    UpdateMode = upWhereKeyOnly
    Left = 560
    Top = 168
  end
  object oCDS_ItemEmprestimo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'oDSP_ItemEmprestimo'
    Left = 560
    Top = 224
    object oCDS_ItemEmprestimoIDITE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDITE'
      Origin = 'IDITE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oCDS_ItemEmprestimoCODITE: TIntegerField
      FieldName = 'CODITE'
      Origin = 'CODITE'
    end
    object oCDS_ItemEmprestimoDESITE: TStringField
      FieldName = 'DESITE'
      Origin = 'DESITE'
      Size = 200
    end
  end
  object oQ_ItemEmprestimo: TFDQuery
    Connection = uDM_Conexao.oSQLConnection
    SQL.Strings = (
      'SELECT i.idite, i.codite, i.desite FROM ITEMEMPRESTIMO i'
      'inner JOIN EMPRESTIMO e ON i.IDITE <> e.IDITE  '
      'WHERE e.DEVEMP IS null')
    Left = 560
    Top = 120
    object oQ_ItemEmprestimoIDITE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDITE'
      Origin = 'IDITE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oQ_ItemEmprestimoCODITE: TIntegerField
      FieldName = 'CODITE'
      Origin = 'CODITE'
    end
    object oQ_ItemEmprestimoDESITE: TStringField
      FieldName = 'DESITE'
      Origin = 'DESITE'
      Size = 200
    end
  end
  object oDS_ItemEmprestimo: TDataSource
    DataSet = oCDS_ItemEmprestimo
    Left = 560
    Top = 280
  end
end

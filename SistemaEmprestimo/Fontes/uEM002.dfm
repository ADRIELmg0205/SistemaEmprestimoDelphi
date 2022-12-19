object ovF_EM002: TovF_EM002
  Left = 0
  Top = 0
  Caption = 'Cadastro de usu'#225'rios para emprestimo'
  ClientHeight = 508
  ClientWidth = 668
  Color = clMoneyGreen
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
  object Label1: TLabel
    Left = 106
    Top = 59
    Width = 15
    Height = 13
    Caption = 'ID:'
  end
  object Label2: TLabel
    Left = 76
    Top = 83
    Width = 45
    Height = 13
    Caption = 'CODIGO:'
  end
  object Label3: TLabel
    Left = 88
    Top = 113
    Width = 33
    Height = 13
    Caption = 'NOME:'
  end
  object Label4: TLabel
    Left = 63
    Top = 167
    Width = 58
    Height = 13
    Caption = 'ENDERE'#199'O:'
  end
  object Label5: TLabel
    Left = 79
    Top = 210
    Width = 42
    Height = 13
    Caption = 'CIDADE:'
  end
  object Label6: TLabel
    Left = 104
    Top = 237
    Width = 17
    Height = 13
    Caption = 'UF:'
  end
  object Label7: TLabel
    Left = 49
    Top = 264
    Width = 72
    Height = 13
    Caption = 'OBSERVA'#199#195'O:'
  end
  object Label8: TLabel
    Left = 67
    Top = 137
    Width = 54
    Height = 13
    Caption = 'TELEFONE:'
  end
  object ovDBN_Navegador: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = oDS_Usuario
    TabOrder = 0
  end
  object ovDBE_idusu: TDBEdit
    Left = 127
    Top = 56
    Width = 202
    Height = 21
    DataField = 'IDUSU'
    DataSource = oDS_Usuario
    TabOrder = 1
  end
  object ovDBE_nomusu: TDBEdit
    Left = 127
    Top = 110
    Width = 202
    Height = 21
    DataField = 'NOMUSU'
    DataSource = oDS_Usuario
    TabOrder = 2
  end
  object ovDBE_codusu: TDBEdit
    Left = 127
    Top = 83
    Width = 202
    Height = 21
    DataField = 'CODUSU'
    DataSource = oDS_Usuario
    TabOrder = 3
  end
  object ovDBE_telusu: TDBEdit
    Left = 127
    Top = 137
    Width = 202
    Height = 21
    DataField = 'TELUSU'
    DataSource = oDS_Usuario
    TabOrder = 4
  end
  object ovDBE_endusu: TDBEdit
    Left = 127
    Top = 164
    Width = 202
    Height = 21
    DataField = 'ENDUSU'
    DataSource = oDS_Usuario
    TabOrder = 5
  end
  object ovDBE_cidusu: TDBEdit
    Left = 127
    Top = 207
    Width = 202
    Height = 21
    DataField = 'CIDUSU'
    DataSource = oDS_Usuario
    TabOrder = 6
  end
  object ovDBE_ufusu: TDBEdit
    Left = 127
    Top = 234
    Width = 202
    Height = 21
    DataField = 'UFUSU'
    DataSource = oDS_Usuario
    TabOrder = 7
  end
  object ovDBE_obsusu: TDBEdit
    Left = 127
    Top = 261
    Width = 202
    Height = 21
    DataField = 'OBSUSU'
    DataSource = oDS_Usuario
    TabOrder = 8
  end
  object ovB_Apply: TButton
    Left = 280
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Apply'
    TabOrder = 9
    OnClick = ovB_ApplyClick
  end
  object oQ_Usuario: TFDQuery
    Active = True
    Connection = uDM_Conexao.oSQLConnection
    SQL.Strings = (
      
        'SELECT idusu, codusu, nomusu, telusu, endusu, CIDUSU, ufusu, obs' +
        'usu FROM USUARIOS u ;')
    Left = 40
    Top = 445
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
    Top = 445
  end
  object oCDS_Usuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'oDSP_Usuario'
    Left = 192
    Top = 445
    object oCDS_UsuarioIDUSU: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'IDUSU'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object oCDS_UsuarioCODUSU: TIntegerField
      FieldName = 'CODUSU'
    end
    object oCDS_UsuarioNOMUSU: TStringField
      FieldName = 'NOMUSU'
      Size = 80
    end
    object oCDS_UsuarioTELUSU: TStringField
      FieldName = 'TELUSU'
    end
    object oCDS_UsuarioENDUSU: TStringField
      FieldName = 'ENDUSU'
      Size = 100
    end
    object oCDS_UsuarioCIDUSU: TStringField
      FieldName = 'CIDUSU'
      Size = 40
    end
    object oCDS_UsuarioUFUSU: TStringField
      FieldName = 'UFUSU'
      FixedChar = True
      Size = 2
    end
    object oCDS_UsuarioOBSUSU: TMemoField
      FieldName = 'OBSUSU'
      BlobType = ftMemo
    end
  end
  object oDS_Usuario: TDataSource
    DataSet = oCDS_Usuario
    Left = 264
    Top = 445
  end
end

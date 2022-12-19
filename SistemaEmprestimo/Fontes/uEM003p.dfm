object ovF_EM003p: TovF_EM003p
  Left = 0
  Top = 0
  Caption = 'Pesquisa de usu'#225'rios'
  ClientHeight = 379
  ClientWidth = 735
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 57
    Align = alTop
    Color = clSkyBlue
    Ctl3D = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 18
      Top = 19
      Width = 88
      Height = 16
      Caption = 'Procurar por:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ovCB_CampoFiltro: TComboBox
      Left = 112
      Top = 19
      Width = 129
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'idusu'
        'codusu'
        'nomusu'
        'telusu'
        'endusu'
        'cidusu'
        'ufsus'
        'obsusu')
    end
    object ovE_Filtro: TEdit
      Left = 247
      Top = 19
      Width = 355
      Height = 19
      TabOrder = 1
      OnKeyPress = ovE_FiltroKeyPress
    end
    object ovB_Pesquisa: TButton
      Left = 608
      Top = 17
      Width = 97
      Height = 25
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = ovB_PesquisaClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 735
    Height = 322
    Align = alClient
    Color = clMoneyGreen
    DataSource = oDS_Usuario
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODUSU'
        Title.Caption = 'C'#243'digo'
        Width = 41
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMUSU'
        Title.Caption = 'Nome'
        Width = 331
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELUSU'
        Title.Caption = 'Telefone'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDUSU'
        Title.Caption = 'Cidade'
        Width = 200
        Visible = True
      end>
  end
  object oSD_Pesquisa: TSimpleDataSet
    Aggregates = <>
    DataSet.CommandText = 'SELECT codusu, nomusu, cidusu, telusu FROM USUARIOS'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 128
    Top = 256
  end
  object oDS_Pesquisa: TDataSource
    DataSet = oSD_Pesquisa
    Left = 232
    Top = 256
  end
  object oQ_Usuario: TFDQuery
    Connection = uDM_Conexao.oSQLConnection
    SQL.Strings = (
      
        'SELECT idusu, codusu, nomusu, telusu, endusu, CIDUSU, ufusu, obs' +
        'usu FROM USUARIOS u ;')
    Left = 40
    Top = 183
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
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 183
  end
  object oCDS_Usuario: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'oDSP_Usuario'
    Left = 200
    Top = 183
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
    Top = 183
  end
end

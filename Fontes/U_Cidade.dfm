inherited F_Cidade: TF_Cidade
  Caption = 
    '                                                                ' +
    '                     Cadastro de Cidade'
  ClientHeight = 394
  ClientWidth = 635
  OnShow = FormShow
  ExplicitWidth = 651
  ExplicitHeight = 433
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 635
    ExplicitWidth = 635
  end
  inherited PageControl1: TPageControl
    Width = 635
    Height = 365
    ActivePage = TabSheet2
    ExplicitWidth = 635
    ExplicitHeight = 365
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 627
      ExplicitHeight = 337
      object Label1: TLabel
        Left = 17
        Top = 16
        Width = 21
        Height = 16
        Caption = 'ID.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 56
        Width = 42
        Height = 16
        Caption = 'Nome.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 100
        Top = 16
        Width = 31
        Height = 16
        Caption = 'CEP.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 17
        Top = 98
        Width = 47
        Height = 16
        Caption = 'Estado.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edt_IDCidade: TEdit
        Left = 17
        Top = 31
        Width = 64
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeCidade: TEdit
        Left = 17
        Top = 71
        Width = 320
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_CEP: TEdit
        Left = 100
        Top = 31
        Width = 157
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object CB_IDEstado: TComboBox
        Left = 17
        Top = 113
        Width = 145
        Height = 21
        Enabled = False
        TabOrder = 3
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 627
      ExplicitHeight = 337
      inherited GroupBox1: TGroupBox
        Width = 622
        Height = 78
        ExplicitWidth = 622
        ExplicitHeight = 78
        object Edt_Consulta: TEdit
          Left = 16
          Top = 32
          Width = 593
          Height = 21
          TabOrder = 0
          OnChange = Edt_ConsultaChange
        end
      end
      inherited GroupBox2: TGroupBox
        Top = 87
        Width = 622
        Height = 242
        ExplicitTop = 87
        ExplicitWidth = 622
        ExplicitHeight = 242
        object DBG_Consulta: TDBGrid
          Left = 15
          Top = 24
          Width = 593
          Height = 201
          DataSource = DS
          Options = [dgTitles, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_ConsultaDblClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ID_CIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_CIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'NOME'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CEP_CIDADE'
              Title.Alignment = taCenter
              Title.Caption = 'CEP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_ESTADO'
              Title.Alignment = taCenter
              Title.Caption = 'ESTADO'
              Visible = True
            end>
        end
      end
    end
  end
  object DS: TDataSource
    DataSet = Q_Cidade
    Left = 591
    Top = 12
  end
  object Q_Cidade: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from Cidade where Nome_Cidade like :NomeCidade;')
    Left = 551
    Top = 12
    ParamData = <
      item
        Name = 'NOMECIDADE'
        DataType = ftString
        ParamType = ptInput
        Size = 50
        Value = Null
      end>
    object Q_CidadeID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_CidadeNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Required = True
      Size = 50
    end
    object Q_CidadeCEP_CIDADE: TStringField
      FieldName = 'CEP_CIDADE'
      Origin = 'CEP_CIDADE'
      Size = 10
    end
    object Q_CidadeID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      Required = True
    end
  end
  object Q_Estado: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from Estado order by Nome_Estado;')
    Left = 500
    Top = 9
    object Q_EstadoNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      Origin = 'NOME_ESTADO'
      Required = True
      Size = 50
    end
    object Q_EstadoID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_EstadoSIGLA_ESTADO: TStringField
      FieldName = 'SIGLA_ESTADO'
      Origin = 'SIGLA_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
end

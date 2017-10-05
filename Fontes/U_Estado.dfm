inherited F_Estado: TF_Estado
  Caption = 
    '                                                                ' +
    '                            Cadastro de Estado'
  ClientHeight = 437
  ClientWidth = 710
  ExplicitWidth = 726
  ExplicitHeight = 476
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 710
    ExplicitWidth = 710
  end
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      object Label1: TLabel
        Left = 14
        Top = 3
        Width = 53
        Height = 13
        Caption = 'Id Estado: '
      end
      object Label2: TLabel
        Left = 108
        Top = 3
        Width = 34
        Height = 13
        Caption = 'Nome: '
      end
      object Label3: TLabel
        Left = 404
        Top = 3
        Width = 29
        Height = 13
        Caption = 'Sigla: '
      end
      object Edt_IdEstado: TEdit
        Left = 14
        Top = 19
        Width = 64
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeEstado: TEdit
        Left = 108
        Top = 19
        Width = 277
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_SiglaEstado: TEdit
        Left = 404
        Top = 19
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      inherited GroupBox1: TGroupBox
        Width = 698
        Height = 94
        ExplicitWidth = 698
        ExplicitHeight = 94
        object Lb_Pesquisar: TLabel
          Left = 16
          Top = 21
          Width = 50
          Height = 13
          Caption = 'Pesquisar:'
        end
        object Edt_Pesquisar: TEdit
          Left = 16
          Top = 48
          Width = 673
          Height = 21
          TabOrder = 0
          OnChange = Edt_PesquisarChange
        end
      end
      inherited GroupBox2: TGroupBox
        Top = 103
        Width = 697
        Height = 266
        ExplicitTop = 103
        ExplicitWidth = 697
        ExplicitHeight = 266
        object DBG_Consulta: TDBGrid
          Left = 8
          Top = 16
          Width = 681
          Height = 241
          DataSource = DS_Estado
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBG_ConsultaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'ID_ESTADO'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_ESTADO'
              Title.Caption = 'NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SIGLA_ESTADO'
              Title.Caption = 'UF'
              Visible = True
            end>
        end
      end
    end
  end
  object Q_Estado: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from estado where Nome_Estado like :NomeEstado')
    Left = 664
    Top = 8
    ParamData = <
      item
        Name = 'NOMEESTADO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
    object Q_EstadoID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_EstadoNOME_ESTADO: TStringField
      FieldName = 'NOME_ESTADO'
      Origin = 'NOME_ESTADO'
      Required = True
      Size = 50
    end
    object Q_EstadoSIGLA_ESTADO: TStringField
      FieldName = 'SIGLA_ESTADO'
      Origin = 'SIGLA_ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object DS_Estado: TDataSource
    DataSet = Q_Estado
    Left = 608
    Top = 8
  end
end

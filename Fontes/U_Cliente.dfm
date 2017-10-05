inherited F_Cliente: TF_Cliente
  Caption = 
    '                                                                ' +
    '                                     Cadastro de Cliente'
  ClientHeight = 435
  ClientWidth = 765
  ExplicitWidth = 781
  ExplicitHeight = 474
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 765
  end
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 0
      object ID_Cliente: TLabel
        Left = 4
        Top = 3
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object Label2: TLabel
        Left = 84
        Top = 3
        Width = 67
        Height = 13
        Caption = 'Nome Cliente:'
      end
      object Label3: TLabel
        Left = 3
        Top = 49
        Width = 23
        Height = 13
        Caption = 'CPF:'
      end
      object Label4: TLabel
        Left = 170
        Top = 49
        Width = 18
        Height = 13
        Caption = 'RG:'
      end
      object Label5: TLabel
        Left = 3
        Top = 105
        Width = 46
        Height = 13
        Caption = 'Telefone:'
      end
      object Label1: TLabel
        Left = 368
        Top = 49
        Width = 100
        Height = 13
        Caption = 'Data de Nascimento:'
      end
      object Label6: TLabel
        Left = 195
        Top = 105
        Width = 37
        Height = 13
        Caption = 'Cidade:'
      end
      object Edt_IDCliente: TEdit
        Left = 4
        Top = 22
        Width = 63
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeCliente: TEdit
        Left = 84
        Top = 22
        Width = 477
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_DNCliente: TEdit
        Left = 368
        Top = 68
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 2
      end
      object Edt_CPF: TEdit
        Left = 3
        Top = 68
        Width = 148
        Height = 21
        Enabled = False
        TabOrder = 3
      end
      object Edt_RG: TEdit
        Left = 170
        Top = 68
        Width = 176
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object CB_IDCidade: TComboBox
        Left = 195
        Top = 124
        Width = 185
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object Edt_Telefone: TEdit
        Left = 3
        Top = 124
        Width = 169
        Height = 21
        Enabled = False
        TabOrder = 6
      end
    end
    inherited TabSheet2: TTabSheet
      inherited GroupBox1: TGroupBox
        Height = 110
        ExplicitHeight = 110
        object Label7: TLabel
          Left = 16
          Top = 24
          Width = 50
          Height = 13
          Caption = 'Pesquisar:'
        end
        object Edt_Pesquisar: TEdit
          Left = 16
          Top = 43
          Width = 729
          Height = 21
          TabOrder = 0
          OnChange = Edt_PesquisarChange
        end
      end
      inherited GroupBox2: TGroupBox
        Top = 119
        Height = 250
        ExplicitTop = 119
        ExplicitHeight = 250
        object DBGrid1: TDBGrid
          Left = 15
          Top = 27
          Width = 729
          Height = 214
          DataSource = DS
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
              FieldName = 'IDCLIENTE'
              Title.Caption = 'ID'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMECLIENTE'
              Title.Caption = 'Nome Cliente'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CPF'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RG'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TELEFONE'
              Title.Caption = 'Telefone'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DTNASCIMENTO'
              Title.Caption = 'Data de Nascimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ID_CIDADE'
              Title.Caption = 'ID Cidade'
              Visible = True
            end>
        end
      end
    end
  end
  object Q_Cidade: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select Nome_Cidade,ID_Cidade from Cidade order by Nome_Cidade;')
    Left = 704
    Top = 8
    object Q_CidadeNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Required = True
      Size = 50
    end
    object Q_CidadeID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object DS: TDataSource
    DataSet = Q_Cliente
    Left = 648
    Top = 8
  end
  object Q_Cliente: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select * from Cliente where NomeCliente like :NomeCliente;')
    Left = 600
    Top = 8
    ParamData = <
      item
        Name = 'NOMECLIENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 150
        Value = Null
      end>
    object Q_ClienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_ClienteNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Required = True
      Size = 150
    end
    object Q_ClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      FixedChar = True
      Size = 11
    end
    object Q_ClienteRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Required = True
    end
    object Q_ClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object Q_ClienteDTNASCIMENTO: TDateField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object Q_ClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      Required = True
    end
  end
end

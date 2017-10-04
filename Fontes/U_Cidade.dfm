inherited F_Cidade: TF_Cidade
  Caption = 
    '                                                                ' +
    '                                     Cadastro de Cidade'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PageControl1: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      object Lb_IDCidade: TLabel
        Left = 4
        Top = 16
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object Lb_NomeCidade: TLabel
        Left = 91
        Top = 16
        Width = 82
        Height = 13
        Caption = 'Nome da Cidade:'
      end
      object Label1: TLabel
        Left = 464
        Top = 16
        Width = 23
        Height = 13
        Caption = 'CEP:'
      end
      object Edt_IDCidade: TEdit
        Left = 3
        Top = 35
        Width = 64
        Height = 21
        TabOrder = 0
      end
      object Edt_NomeCidade: TEdit
        Left = 91
        Top = 35
        Width = 350
        Height = 21
        TabOrder = 1
      end
      object Edt_CEPCidade: TEdit
        Left = 464
        Top = 35
        Width = 177
        Height = 21
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 760
      ExplicitHeight = 458
      inherited GroupBox1: TGroupBox
        object Label2: TLabel
          Left = 16
          Top = 24
          Width = 86
          Height = 13
          Caption = 'Pesquisar Cidade:'
        end
        object Edt_Pesquisar: TEdit
          Left = 16
          Top = 43
          Width = 665
          Height = 21
          TabOrder = 0
        end
      end
      inherited GroupBox2: TGroupBox
        object DBG_Resultado: TDBGrid
          Left = 8
          Top = 19
          Width = 689
          Height = 158
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object DS_Cidade: TDataSource
    DataSet = Q_Cidade
    Left = 664
    Top = 272
  end
  object Q_Cidade: TFDQuery
    Connection = DM.FDConnection1
    Left = 664
    Top = 336
  end
end

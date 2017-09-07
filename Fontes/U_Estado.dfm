inherited F_Estado: TF_Estado
  Caption = 
    '                                                                ' +
    '                            Cadastro de Estado'
  ExplicitWidth = 728
  ExplicitHeight = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitWidth = 712
  end
  inherited StatusBar1: TStatusBar
    ExplicitTop = 454
    ExplicitWidth = 712
  end
  inherited PageControl1: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 760
      ExplicitHeight = 458
      object Label1: TLabel
        Left = 16
        Top = 19
        Width = 53
        Height = 13
        Caption = 'Id Estado: '
      end
      object Label2: TLabel
        Left = 33
        Top = 46
        Width = 34
        Height = 13
        Caption = 'Nome: '
      end
      object Label3: TLabel
        Left = 38
        Top = 73
        Width = 29
        Height = 13
        Caption = 'Sigla: '
      end
      object Edt_IdEstado: TEdit
        Left = 84
        Top = 16
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object Edt_NomeEstado: TEdit
        Left = 84
        Top = 43
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object Edt_SiglaEstado: TEdit
        Left = 84
        Top = 70
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 2
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 760
      ExplicitHeight = 458
    end
  end
end

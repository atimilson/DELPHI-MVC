object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 340
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 224
    Top = 19
    Width = 49
    Height = 19
    Caption = 'Nome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Futura Md BT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 19
    Width = 57
    Height = 19
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Futura Md BT'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object editNome: TEdit
    Left = 280
    Top = 16
    Width = 241
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Futura Md BT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object editCodigo: TEdit
    Left = 81
    Top = 16
    Width = 121
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Futura Md BT'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 505
    Height = 225
    DataSource = dsCliente
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object mmTableCliente: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 728
    Top = 136
  end
  object dsCliente: TDataSource
    DataSet = mmTableCliente
    Left = 616
    Top = 80
  end
end

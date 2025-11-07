object frmConfigurar: TfrmConfigurar
  Left = 0
  Top = 0
  Caption = 'Configurar Servidor'
  ClientHeight = 268
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 279
    Height = 268
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 46
      Height = 15
      Caption = 'Servidor:'
    end
    object Label2: TLabel
      Left = 16
      Top = 88
      Width = 31
      Height = 15
      Caption = 'Porta:'
    end
    object Label3: TLabel
      Left = 13
      Top = 248
      Width = 187
      Height = 15
      Caption = 'Cerrado Cloud-  wesley  06/11/2025'
    end
    object edtPorta: TEdit
      Left = 68
      Top = 85
      Width = 173
      Height = 23
      TabOrder = 0
    end
    object Button1: TButton
      Left = 16
      Top = 176
      Width = 241
      Height = 25
      Cursor = crHandPoint
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object edtServidor: TEdit
      Left = 68
      Top = 37
      Width = 173
      Height = 23
      TabOrder = 2
    end
  end
end

object frmLogin: TfrmLogin
  Left = 245
  Top = 108
  BorderStyle = bsDialog
  ClientHeight = 188
  ClientWidth = 299
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edtUsername: TEdit
    Left = 8
    Top = 47
    Width = 283
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = cl3DLight
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'User name'
    OnChange = edtUsernameChange
    OnExit = edtUsernameExit
  end
  object OKBtn: TButton
    Left = 136
    Top = 141
    Width = 75
    Height = 40
    Caption = 'OK'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 216
    Top = 141
    Width = 75
    Height = 40
    Cancel = True
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 3
  end
  object pnlLogin: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'Silahkan Login'
    Color = clGradientActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object edtPassword: TEdit
    Left = 8
    Top = 85
    Width = 283
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = cl3DLight
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    Text = 'Password'
    OnChange = edtPasswordChange
    OnExit = edtPasswordExit
  end
end

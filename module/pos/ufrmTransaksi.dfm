object frmTransaksi: TfrmTransaksi
  Left = 276
  Top = 123
  BorderStyle = bsNone
  Caption = 'Penjualan'
  ClientHeight = 529
  ClientWidth = 888
  Color = 13303754
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlContainer: TPanel
    Left = 0
    Top = 119
    Width = 888
    Height = 410
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 5
    object cxTransaksi: TcxGrid
      Left = 0
      Top = 0
      Width = 888
      Height = 332
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LockedStateImageOptions.Text = 'Mohon ditunggu...'
      LookAndFeel.NativeStyle = False
      ExplicitHeight = 273
      object sgTransaksi: TcxGridTableView
        OnKeyDown = sgTransaksiKeyDown
        Navigator.Buttons.CustomButtons = <>
        Navigator.InfoPanel.DisplayMask = '[RecordIndex] / [RecordCount]'
        FindPanel.InfoText = 'Cari Data'
        OnEditing = sgTransaksiEditing
        OnInitEdit = sgTransaksiInitEdit
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Filter Row'
        NewItemRow.InfoText = 'Data Baru'
        OptionsData.Appending = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsView.NoDataToDisplayInfoText = '<Data Kosong>'
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GroupByBox = False
        Styles.Background = cxStyleGreen
      end
      object grdlvlTransaksi: TcxGridLevel
        GridView = sgTransaksi
      end
    end
    object pnlFooter: TPanel
      Left = 0
      Top = 372
      Width = 888
      Height = 38
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 13303754
      TabOrder = 1
      ExplicitTop = 491
      DesignSize = (
        888
        38)
      object btnHapus: TButton
        Left = 6
        Top = 6
        Width = 86
        Height = 25
        Caption = 'Hapus [Del]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object btnBayar: TButton
        Left = 96
        Top = 6
        Width = 87
        Height = 25
        Caption = 'Bayar [F9]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = btnBayarClick
      end
      object btnReset: TButton
        Left = 186
        Top = 6
        Width = 86
        Height = 25
        Caption = 'Reset [F12]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = btnResetClick
      end
      object pnlInfo: TPanel
        Left = 282
        Top = 2
        Width = 604
        Height = 34
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clYellow
        ParentBackground = False
        TabOrder = 0
        Visible = False
        DesignSize = (
          604
          34)
        object lblInfo: TLabel
          Left = 12
          Top = 8
          Width = 88
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = 'Warning !!!'
          Color = clYellow
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -20
          Font.Name = 'Fixedsys'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
      end
    end
    object pnlBarCode: TPanel
      Left = 0
      Top = 332
      Width = 888
      Height = 40
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = -8
      ExplicitTop = 288
      object lbl1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 6
        Width = 143
        Height = 31
        Margins.Top = 6
        Align = alLeft
        Caption = 'Kode Barang'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 5
        ExplicitTop = 27
        ExplicitHeight = 23
      end
      object lblHargaKontrabon: TLabel
        AlignWithMargins = True
        Left = 350
        Top = 6
        Width = 65
        Height = 31
        Margins.Top = 6
        Align = alLeft
        Caption = 'Harga'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
        ExplicitLeft = 361
        ExplicitTop = 27
        ExplicitHeight = 23
      end
      object edPLU: TEdit
        AlignWithMargins = True
        Left = 152
        Top = 4
        Width = 175
        Height = 32
        Margins.Top = 4
        Margins.Right = 20
        Margins.Bottom = 4
        Align = alLeft
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnEnter = edPLUEnter
        OnExit = edPLUExit
        OnKeyDown = edPLUKeyDown
        ExplicitLeft = 156
        ExplicitTop = 21
        ExplicitHeight = 29
      end
      object edHargaKontrabon: TcxCurrencyEdit
        AlignWithMargins = True
        Left = 421
        Top = 4
        Margins.Top = 4
        Margins.Bottom = 4
        Align = alLeft
        ParentFont = False
        Properties.DisplayFormat = 'Rp.,0.00;(Rp.,0.00)'
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Courier New'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Visible = False
        OnKeyDown = edHargaKontrabonKeyDown
        ExplicitLeft = 435
        ExplicitTop = 29
        ExplicitHeight = 31
        Width = 169
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 58
    Width = 888
    Height = 61
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 13303754
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 9
      Width = 84
      Height = 14
      Caption = 'No Pelanggan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 33
      Width = 98
      Height = 14
      Caption = 'Nama Pelanggan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 378
      Top = 33
      Width = 140
      Height = 14
      Caption = 'Transaksi Terakhir #'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 506
      Top = 9
      Width = 126
      Height = 14
      Caption = 'F1 = ShortCut Keys'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edNoPelanggan: TcxTextEdit
      Left = 120
      Top = 6
      StyleFocused.Color = clYellow
      TabOrder = 0
      OnEnter = edNoPelangganEnter
      OnExit = edNoPelangganExit
      OnKeyDown = edNoPelangganKeyDown
      Width = 105
    end
    object edNamaPelanggan: TcxTextEdit
      Left = 120
      Top = 32
      Properties.ReadOnly = True
      Style.Color = 11796403
      TabOrder = 1
      Width = 233
    end
    object edNoTrnTerakhir: TcxTextEdit
      Left = 528
      Top = 32
      Properties.ReadOnly = True
      Style.Color = 11796403
      TabOrder = 2
      Width = 121
    end
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 0
    Width = 888
    Height = 58
    Align = alTop
    TabOrder = 0
    object lblTotal: TLabel
      Left = 165
      Top = 1
      Width = 722
      Height = 56
      Align = alClient
      Alignment = taRightJustify
      Caption = 'Rp. 0,00 '
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -47
      Font.Name = 'EditSys'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitLeft = 694
      ExplicitWidth = 193
      ExplicitHeight = 55
    end
    object lbl2: TLabel
      Left = 1
      Top = 1
      Width = 164
      Height = 56
      Align = alLeft
      Alignment = taRightJustify
      Caption = ' Total ='
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -47
      Font.Name = 'EditSys'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      ExplicitHeight = 55
    end
  end
  inline fraLookupBarang: TfraLookupBarang
    Left = 246
    Top = 192
    Width = 300
    Height = 150
    TabOrder = 2
    Visible = False
    ExplicitLeft = 246
    ExplicitTop = 192
    ExplicitWidth = 300
    ExplicitHeight = 150
    inherited pnlHeader: TPanel
      Width = 300
      ParentColor = True
      ExplicitWidth = 300
      inherited edNamaBarang: TEdit
        Width = 480
        ExplicitWidth = 480
      end
    end
    inherited pnlInfo: TPanel
      Top = 116
      Width = 300
      ExplicitTop = 116
      ExplicitWidth = 300
    end
    inherited cxGrid: TcxGrid
      Width = 300
      Height = 43
      ExplicitWidth = 300
      ExplicitHeight = 43
    end
    inherited pbBarang: TcxProgressBar
      Top = 95
      ExplicitTop = 95
      ExplicitWidth = 300
      Width = 300
    end
  end
  inline fraMember: TfraMember
    Left = 71
    Top = 227
    Width = 281
    Height = 146
    TabOrder = 3
    Visible = False
    ExplicitLeft = 71
    ExplicitTop = 227
    ExplicitWidth = 281
    ExplicitHeight = 146
    inherited cxGrid: TcxGrid
      Width = 281
      Height = 67
      ExplicitWidth = 281
      ExplicitHeight = 67
    end
    inherited pbLookup: TcxProgressBar
      Top = 125
      ExplicitTop = 121
      ExplicitWidth = 281
      Width = 281
    end
    inherited pnlHeader: TPanel
      Width = 281
      ExplicitWidth = 281
      inherited edNama: TEdit
        Width = 142
        ExplicitWidth = 142
      end
    end
  end
  object pnlotorisasi: TPanel
    Left = 601
    Top = 222
    Width = 281
    Height = 128
    Align = alCustom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clGray
    ParentBackground = False
    TabOrder = 4
    Visible = False
    object lbl4: TLabel
      Left = 9
      Top = 30
      Width = 22
      Height = 13
      Caption = 'User'
    end
    object lbl5: TLabel
      Left = 10
      Top = 58
      Width = 46
      Height = 13
      Caption = 'Password'
    end
    object bvl1: TBevel
      Left = 2
      Top = 2
      Width = 277
      Height = 9
      Align = alTop
      Shape = bsTopLine
    end
    object lbl6: TLabel
      Left = 58
      Top = 4
      Width = 161
      Height = 22
      Caption = 'OTORISASI PASSWORD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtUsername: TEdit
      Left = 96
      Top = 30
      Width = 153
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyDown = edtUsernameKeyDown
    end
    object edtPassword: TEdit
      Left = 96
      Top = 58
      Width = 153
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      PasswordChar = '*'
      TabOrder = 1
      OnKeyDown = edtPasswordKeyDown
    end
    object btnOk: TButton
      Left = 96
      Top = 93
      Width = 75
      Height = 25
      Caption = '&Ok'
      TabOrder = 2
      OnClick = btnOkClick
    end
    object btnCancel: TButton
      Left = 184
      Top = 94
      Width = 75
      Height = 25
      Caption = '&Cancel'
      TabOrder = 3
      OnClick = btnCancelClick
    end
  end
  object tmrInfo: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrInfoTimer
    Left = 440
    Top = 386
  end
  object ActionList1: TActionList
    Left = 208
    Top = 151
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 240
    Top = 80
    PixelsPerInch = 96
    object cxStyleGreen: TcxStyle
      AssignedValues = [svColor]
      Color = 13303754
    end
    object cxStyleBold: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
  end
end

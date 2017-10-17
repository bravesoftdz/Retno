inherited frmDialogDOForTrader: TfrmDialogDOForTrader
  Caption = 'Dialog DO For Trader'
  ClientHeight = 451
  ClientWidth = 792
  ExplicitWidth = 808
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 792
    Height = 395
    object pnl1: TPanel
      Left = 2
      Top = 2
      Width = 788
      Height = 119
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15198183
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 30
        Top = 37
        Width = 31
        Height = 16
        Caption = 'DO No'
      end
      object lbl2: TLabel
        Left = 277
        Top = 9
        Width = 41
        Height = 16
        Caption = 'PO Date'
      end
      object lblOrganizasi: TLabel
        Left = 11
        Top = 65
        Width = 53
        Height = 16
        Caption = 'Organisasi'
      end
      object lblDesc: TLabel
        Left = 260
        Top = 65
        Width = 58
        Height = 16
        Caption = 'Keterangan'
      end
      object lblDONo: TLabel
        Left = 34
        Top = 9
        Width = 30
        Height = 16
        Caption = 'PO No'
      end
      object lblDODate: TLabel
        Left = 276
        Top = 37
        Width = 42
        Height = 16
        Caption = 'DO Date'
      end
      object lblSubTotal: TLabel
        Left = 540
        Top = 9
        Width = 44
        Height = 16
        Caption = 'Sub Total'
      end
      object lblDisc: TLabel
        Left = 551
        Top = 37
        Width = 33
        Height = 16
        Caption = 'Diskon'
      end
      object lblPPN: TLabel
        Left = 565
        Top = 65
        Width = 19
        Height = 16
        Caption = 'PPN'
      end
      object lblTotal: TLabel
        Left = 560
        Top = 93
        Width = 24
        Height = 16
        Caption = 'Total'
      end
      object dtTgl: TcxDateEdit
        Left = 336
        Top = 5
        TabOrder = 1
        Width = 146
      end
      object edNoBukti: TcxTextEdit
        Left = 71
        Top = 33
        Enabled = False
        TabOrder = 0
        Width = 146
      end
      object edOrganization: TcxButtonEdit
        Tag = 1
        Left = 71
        Top = 61
        HelpType = htKeyword
        HelpKeyword = 'Organisasi'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 0
        TabOrder = 2
        Width = 146
      end
      object edOrganizationName: TcxButtonEdit
        Left = 71
        Top = 89
        Enabled = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
            Visible = False
          end>
        Properties.MaxLength = 0
        TabOrder = 3
        Width = 146
      end
      object memDescription: TcxMemo
        Left = 336
        Top = 63
        TabOrder = 4
        Height = 50
        Width = 146
      end
      object edPONo: TcxButtonEdit
        Tag = 1
        Left = 71
        Top = 5
        HelpType = htKeyword
        HelpKeyword = 'Organisasi'
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 0
        TabOrder = 5
        Width = 146
      end
      object dtDODate: TcxDateEdit
        Left = 336
        Top = 33
        TabOrder = 6
        Width = 146
      end
      object edSubTotal: TcxCurrencyEdit
        Left = 597
        Top = 5
        Enabled = False
        Properties.DisplayFormat = ',0.00;(,0.00)'
        TabOrder = 7
        Width = 180
      end
      object edDisc: TcxCurrencyEdit
        Left = 597
        Top = 33
        Enabled = False
        Properties.DisplayFormat = ',0.00;(,0.00)'
        TabOrder = 8
        Width = 180
      end
      object edPPN: TcxCurrencyEdit
        Left = 597
        Top = 61
        Enabled = False
        Properties.DisplayFormat = ',0.00;(,0.00)'
        TabOrder = 9
        Width = 180
      end
      object edTotal: TcxCurrencyEdit
        Left = 597
        Top = 89
        Enabled = False
        Properties.DisplayFormat = ',0.00;(,0.00)'
        TabOrder = 10
        Width = 180
      end
    end
    object cxGrid: TcxGrid
      Left = 2
      Top = 121
      Width = 788
      Height = 272
      Align = alClient
      TabOrder = 1
      LockedStateImageOptions.Text = 'Mohon ditunggu...'
      RootLevelOptions.DetailTabsPosition = dtpTop
      ExplicitTop = 120
      ExplicitWidth = 770
      ExplicitHeight = 320
      object cxGridDBTableDOTrader: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.InfoText = 'ketik teks yang dicari...'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'klik untuk memfilter data'
        NewItemRow.InfoText = 'Baris baru'
        OptionsView.NoDataToDisplayInfoText = '<Data kosong>'
        OptionsView.GroupByBox = False
        object cxGridColPODKode: TcxGridDBColumn
          Caption = 'Kode'
          HeaderAlignmentHorz = taCenter
          Width = 91
        end
        object cxGridColPODNama: TcxGridDBColumn
          Caption = 'Nama'
          HeaderAlignmentHorz = taCenter
          Width = 209
        end
        object cxGridColPODUOM: TcxGridDBColumn
          Caption = 'UOM'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridColPODHarga: TcxGridDBColumn
          Caption = 'Harga'
          HeaderAlignmentHorz = taCenter
          Width = 88
        end
        object cxGridColPODQtyPO: TcxGridDBColumn
          Caption = 'Qty PO'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridColPODQtyDO: TcxGridDBColumn
          Caption = 'Qty DO'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridColPODDisc: TcxGridDBColumn
          Caption = 'Disc'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridColPODPPN: TcxGridDBColumn
          Caption = 'PPN'
          HeaderAlignmentHorz = taCenter
        end
        object cxGridColPODTotal: TcxGridDBColumn
          Caption = 'Total'
          HeaderAlignmentHorz = taCenter
          Width = 131
        end
      end
      object cxgrdlvlDOTrader: TcxGridLevel
        Caption = 'DO Trader Item'
        GridView = cxGridDBTableDOTrader
      end
    end
  end
  inherited footerDialogMaster: TfraFooterDialog3Button
    Top = 395
    Width = 792
    inherited pnlFooter: TPanel
      Width = 792
      inherited btnClose: TcxButton
        Left = 715
        Action = actCancel
      end
      inherited btnSave: TcxButton
        Left = 622
        Action = actSave
      end
      inherited btnDelete: TcxButton
        Action = actDelete
      end
      inherited btnPrint: TcxButton
        Left = 545
        Action = actPrint
      end
    end
    inherited pnlSortCut: TPanel
      Width = 792
      inherited lbCTRLEnter: TLabel
        Left = 617
        Height = 15
      end
      inherited lbEscape: TLabel
        Left = 708
        Height = 15
      end
      inherited lbCTRLDel: TLabel
        Height = 15
      end
      inherited lblCTRLP: TLabel
        Left = 541
        Height = 15
      end
    end
  end
  inherited actlstMasterDialog: TActionList
    Left = 400
    Top = 72
  end
end
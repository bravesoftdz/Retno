inherited frmMasterBrowse: TfrmMasterBrowse
  Caption = 'form Master Browse Data'
  ClientHeight = 403
  ClientWidth = 676
  ExplicitWidth = 692
  ExplicitHeight = 442
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Top = 33
    Width = 676
    Height = 314
    ExplicitTop = 33
    ExplicitWidth = 661
    ExplicitHeight = 314
    object cxGrid: TcxGrid
      Left = 11
      Top = 11
      Width = 654
      Height = 292
      Align = alClient
      TabOrder = 0
      LockedStateImageOptions.Text = 'Mohon ditunggu...'
      ExplicitWidth = 639
      object cxGridView: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FindPanel.InfoText = 'ketik teks yang dicari...'
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'klik untuk memfilter data'
        FilterRow.Visible = True
        NewItemRow.InfoText = 'Baris baru'
        OptionsView.NoDataToDisplayInfoText = '<Data kosong>'
        OptionsView.GroupByBox = False
        Styles.ContentEven = styleGridEven
        Styles.Header = styleGridHeader
      end
      object cxlvMaster: TcxGridLevel
        GridView = cxGridView
      end
    end
  end
  inherited pnlHeader: TPanel
    Width = 676
    Height = 33
    ExplicitWidth = 661
    ExplicitHeight = 33
    object lblFilterData: TcxLabel
      Left = 320
      Top = 1
      Align = alRight
      Caption = 'Filter Data'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      ExplicitLeft = 305
      AnchorY = 17
    end
    object dtAwalFilter: TcxDateEdit
      AlignWithMargins = True
      Left = 381
      Top = 5
      Margins.Top = 4
      Margins.Bottom = 4
      Align = alRight
      EditValue = 0d
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Visible = False
      ExplicitLeft = 366
      Width = 89
    end
    object lblsdFilter: TcxLabel
      Left = 473
      Top = 1
      Align = alRight
      Caption = 's.d.'
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Visible = False
      ExplicitLeft = 467
      ExplicitTop = 7
      AnchorY = 17
    end
    object dtAkhirFilter: TcxDateEdit
      AlignWithMargins = True
      Left = 499
      Top = 5
      Margins.Top = 4
      Margins.Bottom = 4
      Align = alRight
      EditValue = 0d
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Visible = False
      ExplicitLeft = 444
      ExplicitTop = 3
      Width = 89
    end
    object btnSearch: TcxButton
      AlignWithMargins = True
      Left = 594
      Top = 3
      Width = 78
      Height = 27
      Cursor = crHandPoint
      Margins.Top = 2
      Margins.Bottom = 2
      Align = alRight
      Action = actRefresh
      OptionsImage.Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        1800000000000006000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF195000195000195000195000195000FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF9F9F9F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF00990019500000990033CC6633CC6633CC66009900195000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7F7F7F7FFF00FFFF
        00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF00990033CC6666FF9966FF9966FF9933CC6633CC660099001950
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFFFFFFFFFFFFFF
        FFFFFFFFFFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FF
        FF00FF00990033CC66009900009900009900009900CCFFCC33CC6633CC660099
        00195000FF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFF7F7F7F7F7F7F7F
        7F7F7F7F7FFFFFFFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FF
        FF00FF009900009900FF00FFFF00FFFF00FFFF00FF33CC66CCFFCC33CC6633CC
        66195000FF00FFFF00FFFF00FFFF00FFFF00FF7F7F7F7F7F7FFF00FFFF00FFFF
        00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF7F7F7FFFFFFFFFFFFFFF00FFFF00FF
        FF00FF009900FF00FFFF00FFFF00FF00990000990019500066FF9933CC6633CC
        6633CC66195000195000FF00FFFF00FFFF00FF7F7F7FFF00FFFFFFFFFF00FF9F
        9F9F9F9F9F7F7F7FFFFFFFFF00FFFF00FF7F7F7F7F7F7F7F7F7FFF00FFFF00FF
        FF00FFFF00FFFF00FF195000FF00FFFF00FF009900CCFFCC66FF9966FF9966FF
        99009900195000FF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFFFFFFFF
        00FF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF
        FF00FFFF00FF009900009900195000FF00FFFF00FF009900CCFFCC66FF990099
        00195000FF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF00FF7F7F7FFF
        FFFFFF00FF7F7F7FFFFFFFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FFFF00FF
        FF00FF00990033CC6633CC66009900195000FF00FFFF00FF0099000099001950
        00FF00FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFF00FFFF00FFFF00FF7F
        7F7FFFFFFFFF00FF7F7F7FFFFFFF7F7F7FFFFFFFFF00FFFF00FFFF00FFFF00FF
        00990033CC6633CC6633CC6633CC66009900195000FF00FFFF00FF009900FF00
        FFFF00FFFF00FFFF00FFFF00FFFFFFFF7F7F7FFFFFFFFFFFFFFF00FFFF00FFFF
        00FF7F7F7FFFFFFFFF00FF7F7F7FFFFFFFFFFFFFFF00FFFF00FFFF00FF009900
        00990000990066FF9933CC66009900195000195000195000FF00FFFF00FFFF00
        FF195000FF00FFFF00FFFF00FF9F9F9F9F9F9F7F7F7FFFFFFFFF00FFFF00FF7F
        7F7F9F9F9F9F9F9FFF00FFFF00FFFFFFFF7F7F7FFFFFFFFF00FFFF00FFFF00FF
        FF00FF00990066FF9966FF99009900195000FF00FFFF00FFFF00FFFF00FF1950
        00195000FF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF00FFFF00FF9F
        9F9FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFF00FFFF00FFFF00FF
        FF00FF009900CCFFCC66FF9966FF990099001950001950001950001950000099
        00195000FF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFDCDCDCFF00FFFF
        00FF9F9F9F7F7F7F7F7F7F7F7F7FDCDCDC9F9F9FFFFFFFFF00FFFF00FFFF00FF
        FF00FFFF00FF009900CCFFCC66FF9966FF9933CC6633CC6633CC660099000099
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFDCDCDCFF
        00FFFF00FFFF00FFFF00FFFF00FFDCDCDCDCDCDCFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF009900CCFFCC66FF9966FF9933CC660099000099000099
        00FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF7F7F7F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF009900009900009900009900009900FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F7F7F7F
        7F7F7F7F7F7F7F7F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF}
      OptionsImage.NumGlyphs = 2
      TabOrder = 4
      ExplicitLeft = 579
    end
  end
  inline fraFooter4Button1: TfraFooter4Button [2]
    Left = 0
    Top = 347
    Width = 676
    Height = 56
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 347
    ExplicitWidth = 661
    inherited pnlFooter: TPanel
      Width = 676
      ExplicitWidth = 661
      inherited bvlSeparator: TBevel
        Left = 254
        ExplicitLeft = 254
      end
      inherited btnClose: TcxButton
        AlignWithMargins = True
        Left = 599
        Top = 4
        Margins.Top = 2
        Margins.Bottom = 2
        Align = alRight
        Action = actClose
        ExplicitLeft = 584
        ExplicitTop = 4
      end
      inherited btnAdd: TcxButton
        AlignWithMargins = True
        Left = 4
        Top = 4
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Action = actAdd
        ExplicitLeft = 4
        ExplicitTop = 4
      end
      inherited btnUpdate: TcxButton
        AlignWithMargins = True
        Left = 80
        Top = 4
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alLeft
        Action = actEdit
        ExplicitLeft = 80
        ExplicitTop = 4
      end
      inherited btnPrint: TcxButton
        Left = 261
        Top = 4
        Action = actPrint
        ExplicitLeft = 261
        ExplicitTop = 4
      end
    end
    inherited pnlSortCut: TPanel
      Width = 676
      ExplicitWidth = 661
      inherited lbl1: TLabel
        AlignWithMargins = True
        Left = 5
        Height = 15
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        ExplicitLeft = 5
      end
      inherited lbl2: TLabel
        AlignWithMargins = True
        Left = 88
        Height = 15
        Margins.Left = 15
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alLeft
        ExplicitLeft = 88
      end
      inherited lbl4: TLabel
        Left = 263
        ExplicitLeft = 263
      end
      inherited lbl5: TLabel
        Left = 602
        Top = 2
        Height = 17
        Align = alRight
        ExplicitLeft = 587
        ExplicitTop = 2
      end
    end
  end
  inherited cxStyle: TcxStyleRepository
    Left = 568
    Top = 104
    PixelsPerInch = 96
  end
  object actlstBrowse: TActionList
    Left = 568
    Top = 152
    object actAdd: TAction
      Caption = 'A&dd'
      ShortCut = 16451
    end
    object actEdit: TAction
      Caption = '&Edit / Lihat'
      ShortCut = 16453
    end
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
    object actPrint: TAction
      Caption = '&Print'
      ShortCut = 16464
    end
    object actRefresh: TAction
      Caption = '&Refresh'
      OnExecute = actRefreshExecute
    end
  end
end

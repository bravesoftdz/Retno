inherited frmDialogAddProductForSO: TfrmDialogAddProductForSO
  Left = 202
  Top = 239
  Caption = 'Add Product For SO'
  ClientHeight = 404
  ClientWidth = 689
  Constraints.MinHeight = 32
  OldCreateOrder = True
  ExplicitWidth = 705
  ExplicitHeight = 443
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 689
    Height = 348
    ExplicitWidth = 689
    ExplicitHeight = 348
    object pnl1: TPanel [0]
      Left = 2
      Top = 2
      Width = 685
      Height = 71
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 15198183
      TabOrder = 0
      object lbl1: TLabel
        Left = 17
        Top = 9
        Width = 27
        Height = 16
        Caption = 'Divisi'
      end
      object lbl2: TLabel
        Left = 16
        Top = 37
        Width = 67
        Height = 16
        Caption = 'Supplier Code'
      end
      object cbbMerchanGroup: TComboBox
        Left = 94
        Top = 7
        Width = 196
        Height = 24
        BevelKind = bkSoft
        Ctl3D = False
        Enabled = False
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 3
        Text = 'Pilih...'
        OnChange = cbbMerchanGroupChange
        OnKeyUp = cbbMerchanGroupKeyUp
        Items.Strings = (
          'Pilih...'
          'Hard Line'
          'Soft Line'
          'Dry Food'
          'Fresh & Frozen')
      end
      object edtSuplier: TEdit
        Left = 195
        Top = 36
        Width = 298
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        Text = 'PT. BAHAGIA SUMBER ABADI (SOLO)'
      end
      object cbbSuplier: TComboBox
        Left = 94
        Top = 35
        Width = 99
        Height = 24
        BevelKind = bkSoft
        CharCase = ecUpperCase
        Ctl3D = False
        ItemIndex = 0
        ParentCtl3D = False
        TabOrder = 0
        Text = 'ALL SUPPLIER'
        OnChange = cbbSuplierChange
        OnKeyUp = cbbSuplierKeyUp
        Items.Strings = (
          'ALL SUPPLIER'
          '001'
          '002'
          '003'
          '004'
          '005')
      end
      object schckbxForecasting: TcxCheckBox
        Left = 325
        Top = 7
        Caption = 'Forecasting'
        TabOrder = 1
        OnClick = cbbMerchanGroupChange
      end
    end
    inherited cxGrid: TcxGrid
      Top = 105
      Width = 685
      Height = 241
      TabOrder = 1
      ExplicitLeft = -6
      ExplicitTop = 57
      ExplicitWidth = 685
      ExplicitHeight = 241
      inherited cxGridView: TcxGridDBTableView
        object cxGridViewColumn1: TcxGridDBColumn
          Caption = 'No.'
        end
        object cxGridViewColumn2: TcxGridDBColumn
          Caption = 'PLU'
        end
        object cxGridViewColumn3: TcxGridDBColumn
          Caption = 'Product Branch Name'
        end
        object cxGridViewColumn4: TcxGridDBColumn
          Caption = 'UOM'
        end
        object cxGridViewColumn5: TcxGridDBColumn
          Caption = 'Stock Min.'
        end
        object cxGridViewColumn6: TcxGridDBColumn
          Caption = 'Current Stock'
        end
        object cxGridViewColumn7: TcxGridDBColumn
          Caption = 'Supplier Primer'
        end
        object cxGridViewColumn8: TcxGridDBColumn
          Caption = 'Supplier Name'
        end
        object cxGridViewColumn9: TcxGridDBColumn
          Caption = 'Lead Time'
        end
        object cxGridViewColumn10: TcxGridDBColumn
          Caption = 'Harga Beli'
        end
        object cxGridViewColumn11: TcxGridDBColumn
          Caption = 'Disc 1 (%)'
        end
        object cxGridViewColumn12: TcxGridDBColumn
          Caption = 'Disc 2 (%)'
        end
        object cxGridViewColumn13: TcxGridDBColumn
          Caption = 'Disc 3 (Rp.)'
        end
      end
    end
    object pnlSearchProduct: TPanel
      Left = 2
      Top = 73
      Width = 685
      Height = 32
      Align = alTop
      ParentColor = True
      TabOrder = 2
      ExplicitLeft = 10
      ExplicitTop = 337
      object Label1: TLabel
        Left = 12
        Top = 6
        Width = 67
        Height = 16
        Caption = 'Product Code'
      end
      object edtProductCode: TEdit
        Left = 89
        Top = 5
        Width = 160
        Height = 22
        CharCase = ecUpperCase
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyUp = edtProductCodeKeyUp
      end
    end
  end
  inherited footerDialogMaster: TfraFooterDialog3Button
    Top = 348
    Width = 689
    ExplicitTop = 348
    ExplicitWidth = 689
    inherited pnlFooter: TPanel
      Width = 689
      ExplicitWidth = 689
      inherited btnClose: TcxButton
        Left = 607
        ExplicitLeft = 607
      end
      inherited btnSave: TcxButton
        Left = 520
        Action = actSave
        Caption = 'Add'
        OptionsImage.Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF005032005032005032005032005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF60606060606060
          6060606060606060FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00734A009900009900009900005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          FFFFFFFFFF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00734A00B93D009900009900005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00734A00963100B93D009900005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00734A00B93D00963100B93D005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF005032005032
          00503200503200503200503200B93D00B93D0096310050320050320050320050
          32005032005032FF00FF606060606060606060606060606060606060FFFFFFFF
          00FFFF00FF606060606060606060606060606060606060FF00FF00990066FF99
          00B93D00B93D00B93D00B93D00B93D00B93D00B93D00963100B93D0099000099
          00009900005032FF00FF606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFF606060FFFFFF0099008EFFAB
          8EFFAB66FF9966FF9933CC6633CC6600B93D00B93D00B93D00963100B93D0099
          00009900005032FF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF00990066FF99
          8EFFAB8EFFAB66FF9966FF9966FF9933CC6600B93D00B93D00B93D00963100B9
          3D009900005032FF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFF009900009900
          00990000990000990000990066FF9933CC6600B93D00503200734A00734A0073
          4A00734A005032FF00FF606060606060606060606060606060606060FF00FFFF
          00FFFF00FF606060606060606060606060606060606060FFFFFFFF00FFFF00FF
          FF00FFFF00FFFF00FF00990066FF9966FF9900B93D005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF
          FF00FFFF00FFFF00FF00990066FF9966FF9900B93D005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF0099008EFFAB66FF9900B93D005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF00990066FF998EFFAB00B93D005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF606060FFFFFFFF
          00FFFF00FF606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF009900009900009900009900005032FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF60606060606060
          6060606060606060FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = footerDialogMasterbtnSaveClick
        ExplicitLeft = 520
      end
      inherited btnDelete: TcxButton
        Action = actDelete
      end
    end
    inherited pnlSortCut: TPanel
      Width = 689
      ExplicitWidth = 689
      inherited lbCTRLEnter: TLabel
        Left = 503
        Width = 80
        Caption = 'Ctrl-Enter [Add]'
        ExplicitLeft = 502
        ExplicitWidth = 80
      end
      inherited lbEscape: TLabel
        Left = 594
        Width = 72
        Caption = 'Escape [Close]'
        ExplicitLeft = 593
        ExplicitWidth = 72
      end
    end
  end
  object btnShow: TcxButton [2]
    Left = 496
    Top = 36
    Width = 65
    Height = 25
    Cursor = crHandPoint
    Caption = 'Show'
    OptionsImage.Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      1800000000000006000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF500019500019FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333993300500019FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333993300993300500019FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF000000993300993300993300500019FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF0000009933009933009933009933005000
      19FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF000000993300CC6600993300CC66009933
      00500019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF000000CC6600993300CC6600993300CC66
      00993300500019FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF000000CC6600CC6600CC6600CC6600CC66
      00CC6600663333FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333FF9900CC6600FF9900CC6600FF99
      00663333FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333FF9900FF9900FF9900FF99006633
      33FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333FF9900FF9900FF9900663333FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333FFE2B4FFE2B4663333FF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333FFFFDE663333FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FF663333663333FF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F
      9F9F9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
    OnClick = btnShowClick
  end
end

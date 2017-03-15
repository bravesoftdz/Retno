inherited frmSettingSellingPrice: TfrmSettingSellingPrice
  Caption = 'SETTING SELLING PRICE BY PRICE TYPE'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Height = 248
    BorderWidth = 0
    Caption = ''
    object TPanel
      Left = 1
      Top = 1
      Width = 540
      Height = 39
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 0
      object lbl1: TLabel
        Left = 12
        Top = 9
        Width = 53
        Height = 16
        Caption = 'Price Type'
      end
      object lbl6: TLabel
        Left = 98
        Top = 9
        Width = 4
        Height = 16
        Caption = ':'
      end
      object cbbPriceType: TComboBox
        Left = 107
        Top = 7
        Width = 144
        Height = 24
        BevelKind = bkSoft
        Ctl3D = False
        ItemHeight = 16
        ParentCtl3D = False
        TabOrder = 0
        Text = 'cbbPriceType'
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 40
      Width = 540
      Height = 207
      Align = alClient
      BevelInner = bvRaised
      BevelOuter = bvNone
      Color = 15198183
      TabOrder = 1
      object lbl2: TLabel
        Left = 10
        Top = 10
        Width = 71
        Height = 16
        Caption = 'Set by Markup'
      end
      object lbl3: TLabel
        Left = 11
        Top = 71
        Width = 82
        Height = 16
        Caption = 'Set by Disc. (Rp)'
      end
      object lbl4: TLabel
        Left = 98
        Top = 11
        Width = 4
        Height = 16
        Caption = ':'
      end
      object lbl5: TLabel
        Left = 98
        Top = 72
        Width = 4
        Height = 16
        Caption = ':'
      end
      object btnSetMarkup: TsuiButton
        Left = 157
        Top = 33
        Width = 97
        Height = 27
        Cursor = crHandPoint
        Caption = 'Set For All'
        AutoSize = False
        UIStyle = BlueGlass
        Action = actSetMarkup
        TabOrder = 0
        Transparent = True
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF
          FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF500019
          500019FF00FFFF00FFFF00FFFF00FF500019500019FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FF9F
          9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          993300500019FF00FFFF00FFFF00FF663333993300500019FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FF9F9F9FFFFFFFFF00FFFF00FF9F
          9F9FFFFFFF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          993300993300500019FF00FFFF00FF663333993300993300500019FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FF9F9F9FFFFFFFFF00FF9F
          9F9FFFFFFFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          993300993300993300500019FF00FF663333993300993300993300500019FF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FF9F9F9FFFFFFF9F
          9F9FFFFFFFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF663333
          9933009933009933009933005000196633339933009933009933009933005000
          19FF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FF9F9F9F9F
          9F9FFFFFFFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FF663333
          CC6600993300CC6600993300CC6600663333993300CC6600993300CC66009933
          00500019FF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FF663333
          993300CC6600993300CC6600993300993300CC6600993300CC6600993300CC66
          00993300500019FF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FF663333
          CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC66
          00CC6600663333FF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF
          FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FF663333
          CC6600FF9900CC6600FF9900CC6600663333FF9900CC6600FF9900CC6600FF99
          00663333FF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFFFFFF9F
          9F9FFFFFFFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FF663333
          FF9900FF9900FF9900FF9900663333663333FF9900FF9900FF9900FF99006633
          33FF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFFFFFF9F9F9F9F
          9F9FFFFFFFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FF663333
          FF9900FF9900FF9900663333FF00FF663333FF9900FF9900FF9900663333FF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFFFFFF9F9F9FFF00FF9F
          9F9FFFFFFFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF663333
          FF9900FF9900663333FF00FFFF00FF663333FFE2B4FFE2B4663333FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFFFFFF9F9F9FFF00FFFF00FF9F
          9F9FFFFFFFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          FFFFDE663333FF00FFFF00FFFF00FF663333FFFFDE663333FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FF9F
          9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          663333FF00FFFF00FFFF00FFFF00FF663333663333FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9F9F9F9FFF00FFFF00FFFF00FFFF00FF9F
          9F9F9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        ResHandle = 0
      end
      object fedtMarkup: TJvValidateEdit
        Left = 107
        Top = 10
        Width = 144
        Height = 22
        Alignment = taRightJustify
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = False
        TabOrder = 1
        MaxDecimals = 5
        HasMaxValue = False
        HasMinValue = False
      end
      object curredtDiscNominal: TJvValidateEdit
        Left = 106
        Top = 70
        Width = 144
        Height = 22
        Alignment = taRightJustify
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = False
        TabOrder = 2
        HasMaxValue = False
        HasMinValue = False
      end
      object btnSetDiscNominal: TsuiButton
        Left = 156
        Top = 93
        Width = 97
        Height = 27
        Cursor = crHandPoint
        Caption = 'Set For All'
        AutoSize = False
        UIStyle = BlueGlass
        Action = actSetDiscNominal
        TabOrder = 3
        Transparent = True
        ModalResult = 0
        FocusedRectMargin = 2
        Glyph.Data = {
          36060000424D3606000000000000360000002800000020000000100000000100
          18000000000000060000C40E0000C40E00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF
          FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF500019
          500019FF00FFFF00FFFF00FFFF00FF500019500019FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FF9F
          9F9F9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          993300500019FF00FFFF00FFFF00FF663333993300500019FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FF9F9F9FFFFFFFFF00FFFF00FF9F
          9F9FFFFFFF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          993300993300500019FF00FFFF00FF663333993300993300500019FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FF9F9F9FFFFFFFFF00FF9F
          9F9FFFFFFFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          993300993300993300500019FF00FF663333993300993300993300500019FF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FF9F9F9FFFFFFF9F
          9F9FFFFFFFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FFFF00FF663333
          9933009933009933009933005000196633339933009933009933009933005000
          19FF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FF9F9F9F9F
          9F9FFFFFFFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FFFF00FF663333
          CC6600993300CC6600993300CC6600663333993300CC6600993300CC66009933
          00500019FF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF9F
          9F9FFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFFFF00FFFF00FF663333
          993300CC6600993300CC6600993300993300CC6600993300CC6600993300CC66
          00993300500019FF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FF663333
          CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC6600CC66
          00CC6600663333FF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF
          FFFFFFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FF663333
          CC6600FF9900CC6600FF9900CC6600663333FF9900CC6600FF9900CC6600FF99
          00663333FF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFF00FFFFFFFF9F
          9F9FFFFFFFFF00FFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FF663333
          FF9900FF9900FF9900FF9900663333663333FF9900FF9900FF9900FF99006633
          33FF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFF00FFFFFFFF9F9F9F9F
          9F9FFFFFFFFF00FFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FF663333
          FF9900FF9900FF9900663333FF00FF663333FF9900FF9900FF9900663333FF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFF00FFFFFFFF9F9F9FFF00FF9F
          9F9FFFFFFFFF00FFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FF663333
          FF9900FF9900663333FF00FFFF00FF663333FFE2B4FFE2B4663333FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFF00FFFFFFFF9F9F9FFF00FFFF00FF9F
          9F9FFFFFFFFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          FFFFDE663333FF00FFFF00FFFF00FF663333FFFFDE663333FF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FF9F
          9F9FFFFFFF9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF663333
          663333FF00FFFF00FFFF00FFFF00FF663333663333FF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF9F9F9F9F9F9FFF00FFFF00FFFF00FFFF00FF9F
          9F9F9F9F9FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        Layout = blGlyphLeft
        Spacing = 4
        MouseContinuouslyDownInterval = 100
        ResHandle = 0
      end
    end
  end
  inline frafoo1: TfraFooter1Button
    Left = 0
    Top = 278
    Width = 542
    Height = 55
    Align = alBottom
    AutoScroll = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    inherited pnlFooter: TPanel
      Width = 542
      inherited btnClose: TsuiButton
        Left = 457
      end
    end
    inherited pnlSortCut: TPanel
      Width = 542
      inherited lbl5: TLabel
        Left = 452
      end
    end
  end
  object actSettingSellingPrice: TActionList
    Left = 497
    Top = 78
    object actSetMarkup: TAction
      Caption = 'Set For All'
      OnExecute = actSetMarkupExecute
    end
    object actSetDiscNominal: TAction
      Caption = 'Set For All'
      OnExecute = actSetDiscNominalExecute
    end
  end
end

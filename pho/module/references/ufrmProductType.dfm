inherited frmProductType: TfrmProductType
  Left = 190
  Top = 168
  Caption = 'Product Type'
  ClientHeight = 365
  ClientWidth = 723
  OldCreateOrder = True
  ExplicitWidth = 739
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnlBody: TPanel
    Width = 723
    Height = 279
    ExplicitWidth = 546
    ExplicitHeight = 256
    object cxGrid: TcxGrid
      Left = 11
      Top = 11
      Width = 701
      Height = 257
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 524
      ExplicitHeight = 234
      object cxGridViewTipeProduk: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridViewTipeProduk
      end
    end
  end
  inherited pnlHeader: TPanel
    Width = 723
    ExplicitWidth = 546
  end
  inline fraFooter5Button1: TfraFooter5Button [2]
    Left = 0
    Top = 309
    Width = 723
    Height = 56
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    ExplicitTop = 286
    ExplicitWidth = 546
    inherited pnlFooter: TPanel
      Width = 723
      ExplicitWidth = 546
      inherited btnClose: TcxButton
        Left = 641
        OnClick = fraFooter5Button1btnCloseClick
        ExplicitLeft = 464
      end
      inherited btnAdd: TcxButton
        Action = actAddProductType
      end
      inherited btnUpdate: TcxButton
        Action = actEditProductType
      end
      inherited btnDelete: TcxButton
        Action = actDeleteProductType
      end
      inherited btnRefresh: TcxButton
        Action = actRefreshProductType
      end
    end
    inherited pnlSortCut: TPanel
      Width = 723
      ExplicitWidth = 546
      inherited lbl5: TLabel
        Left = 633
        ExplicitLeft = 452
      end
    end
  end
  inherited cxStyle: TcxStyleRepository
    PixelsPerInch = 96
  end
  object actlst1: TActionList
    Left = 504
    Top = 8
    object actAddProductType: TAction
      Caption = 'Add'
      OnExecute = actAddProductTypeExecute
    end
    object actEditProductType: TAction
      Caption = 'Edit'
      OnExecute = actEditProductTypeExecute
    end
    object actDeleteProductType: TAction
      Caption = 'Delete'
      OnExecute = actDeleteProductTypeExecute
    end
    object actRefreshProductType: TAction
      Caption = 'Refresh'
      OnExecute = actRefreshProductTypeExecute
    end
  end
end

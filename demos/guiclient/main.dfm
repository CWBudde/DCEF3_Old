object MainForm: TMainForm
  Left = 276
  Top = 194
  Caption = 'Chromium Embedded'
  ClientHeight = 652
  ClientWidth = 864
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object crm: TChromium
    Left = 0
    Top = 25
    Width = 864
    Height = 608
    Align = alClient
    DefaultUrl = 'http://www.google.com'
    TabOrder = 0
    OnProcessMessageReceived = crmProcessMessageReceived
    OnLoadStart = crmLoadStart
    OnLoadEnd = crmLoadEnd
    OnAddressChange = crmAddressChange
    OnTitleChange = crmTitleChange
    OnStatusMessage = crmStatusMessage
    OnBeforeDownload = crmBeforeDownload
    OnDownloadUpdated = crmDownloadUpdated
    OnBeforePopup = crmBeforePopup
    OnBeforeResourceLoad = crmBeforeResourceLoad
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 633
    Width = 864
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object PanelControl: TPanel
    Left = 0
    Top = 0
    Width = 864
    Height = 25
    Align = alTop
    TabOrder = 2
    DesignSize = (
      864
      25)
    object SpeedButtonBack: TSpeedButton
      Left = 0
      Top = 0
      Width = 23
      Height = 22
      Action = actPrev
    end
    object SpeedButtonNext: TSpeedButton
      Left = 24
      Top = 0
      Width = 23
      Height = 22
      Action = actNext
    end
    object SpeedButtonHome: TSpeedButton
      Left = 48
      Top = 0
      Width = 23
      Height = 22
      Action = actHome
    end
    object SpeedButtonReload: TSpeedButton
      Left = 72
      Top = 0
      Width = 23
      Height = 22
      Action = actReload
    end
    object SpeedButtonLoadUrl: TSpeedButton
      Left = 841
      Top = 0
      Width = 23
      Height = 22
      Action = actGoTo
      Anchors = [akTop, akRight]
    end
    object edAddress: TEdit
      Left = 95
      Top = 0
      Width = 744
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Text = 'http://www.google.com'
      OnKeyPress = edAddressKeyPress
    end
  end
  object ActionList: TActionList
    Left = 624
    Top = 112
    object actPrev: TAction
      Caption = '<-'
      Enabled = False
      OnExecute = actPrevExecute
      OnUpdate = actPrevUpdate
    end
    object actNext: TAction
      Caption = '->'
      Enabled = False
      OnExecute = actNextExecute
      OnUpdate = actNextUpdate
    end
    object actHome: TAction
      Caption = 'H'
      OnExecute = actHomeExecute
      OnUpdate = actHomeUpdate
    end
    object actReload: TAction
      Caption = 'R'
      OnExecute = actReloadExecute
      OnUpdate = actReloadUpdate
    end
    object actGoTo: TAction
      Caption = '>'
      OnExecute = actGoToExecute
    end
    object actGetSource: TAction
      Caption = 'Get source'
      OnExecute = actGetSourceExecute
    end
    object actGetText: TAction
      Caption = 'Get text'
      OnExecute = actGetTextExecute
    end
    object actZoomIn: TAction
      Caption = 'Zoom in'
      OnExecute = actZoomInExecute
    end
    object actZoomOut: TAction
      Caption = 'Zoom out'
      OnExecute = actZoomOutExecute
    end
    object actZoomReset: TAction
      Caption = 'Zoom reset'
      OnExecute = actZoomResetExecute
    end
    object actExecuteJS: TAction
      Caption = 'Execute JavaScript'
      OnExecute = actExecuteJSExecute
    end
    object actDom: TAction
      Caption = 'Hook DOM'
      OnExecute = actDomExecute
    end
    object actDevTool: TAction
      Caption = 'Show DevTools'
      OnExecute = actDevToolExecute
    end
    object actDoc: TAction
      Caption = 'Documentation'
      OnExecute = actDocExecute
    end
    object actGroup: TAction
      Caption = 'Google group'
      OnExecute = actGroupExecute
    end
    object actFileScheme: TAction
      Caption = 'File Scheme'
      OnExecute = actFileSchemeExecute
    end
    object actCloseDevTools: TAction
      Caption = 'Close Dev Tools'
      OnExecute = actCloseDevToolsExecute
    end
    object actPrint: TAction
      Caption = 'Print'
      OnExecute = actPrintExecute
    end
  end
  object MainMenu: TMainMenu
    Left = 624
    Top = 56
    object MenuItemFile: TMenuItem
      Caption = '&File'
      object MenuItemPrint: TMenuItem
        Action = actPrint
      end
      object MenuItemExit: TMenuItem
        Caption = 'Exit'
        ShortCut = 16465
        OnClick = MenuItemExitClick
      end
    end
    object MenuItemTest: TMenuItem
      Caption = '&Test'
      object MenuItemGetSource: TMenuItem
        Action = actGetSource
      end
      object MenuItemGetText: TMenuItem
        Action = actGetText
      end
      object MenuItemExecuteJavaScript: TMenuItem
        Action = actExecuteJS
      end
      object MenuItemZoomIn: TMenuItem
        Action = actZoomIn
      end
      object MenuItemZoomOut: TMenuItem
        Action = actZoomOut
      end
      object MenuItemZoomReset: TMenuItem
        Action = actZoomReset
      end
      object MenuItemFileScheme: TMenuItem
        Action = actFileScheme
      end
      object MenuItemVisitDOM: TMenuItem
        Action = actDom
      end
      object MenuItemDevelopperTools: TMenuItem
        Action = actDevTool
      end
      object MenuItemCloseDevTools: TMenuItem
        Action = actCloseDevTools
      end
    end
    object MenuItemHelp: TMenuItem
      Caption = 'Help'
      object MenuItemDocumentation: TMenuItem
        Action = actDoc
      end
      object MenuItemGoogleGroup: TMenuItem
        Action = actGroup
      end
    end
  end
  object SaveDialog: TSaveDialog
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 624
    Top = 176
  end
end

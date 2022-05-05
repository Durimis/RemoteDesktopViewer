object frmRemoteViewer: TfrmRemoteViewer
  Left = 0
  Top = 0
  Caption = 'RemoteViewer'
  ClientHeight = 742
  ClientWidth = 793
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
    Left = 24
    Top = 33
    Width = 33
    Height = 13
    Caption = 'State :'
  end
  object Label2: TLabel
    Left = 392
    Top = 392
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object lblState: TLabel
    Left = 72
    Top = 33
    Width = 26
    Height = 13
    Caption = 'State'
  end
  object Label4: TLabel
    Left = 24
    Top = 19
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object lblName: TLabel
    Left = 72
    Top = 19
    Width = 37
    Height = 13
    Caption = 'lblName'
  end
  object lblID: TLabel
    Left = 72
    Top = 0
    Width = 6
    Height = 13
    Caption = '1'
  end
  object Label7: TLabel
    Left = 24
    Top = 0
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object Label8: TLabel
    Left = 360
    Top = 23
    Width = 53
    Height = 13
    Caption = 'Invitation :'
  end
  object Label9: TLabel
    Left = 488
    Top = 23
    Width = 49
    Height = 13
    Caption = 'Pin Code :'
  end
  object RDPViewer1: TRDPViewer
    Left = 8
    Top = 80
    Width = 1024
    Height = 768
    TabOrder = 0
    ControlData = {00030000}
  end
  object btnConnect: TButton
    Left = 600
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = btnConnectClick
  end
  object btnDisconnect: TButton
    Left = 696
    Top = 40
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 2
    OnClick = btnDisconnectClick
  end
  object edtInvitation: TEdit
    Left = 346
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Invitation'
  end
  object edtPassword: TEdit
    Left = 473
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'Pin Code'
  end
  object btnActive: TButton
    Left = 8
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Active'
    TabOrder = 5
    OnClick = btnActiveClick
  end
  object btnPassive: TButton
    Left = 104
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Passive'
    TabOrder = 6
    OnClick = btnPassiveClick
  end
  object edtName: TEdit
    Left = 200
    Top = 22
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Name'
  end
  object btnSetName: TButton
    Left = 216
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Set Name'
    TabOrder = 8
    OnClick = btnSetNameClick
  end
end

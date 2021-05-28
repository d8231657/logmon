object Form1: TForm1
  Left = 520
  Top = 166
  Width = 1080
  Height = 800
  Caption = 'Log Monitor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Edit1: TEdit
    Left = 0
    Top = 2
    Width = 625
    Height = 24
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = Edit1Change
  end
  object CheckBox1: TCheckBox
    Left = 830
    Top = 2
    Width = 119
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'Monitor Mode'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Edit2: TEdit
    Left = 950
    Top = 2
    Width = 80
    Height = 24
    Anchors = [akTop, akRight]
    TabOrder = 2
    Text = '500'
    OnExit = Edit2Exit
    OnKeyDown = Edit2KeyDown
  end
  object Memo1: TMemo
    Left = 0
    Top = 32
    Width = 1073
    Height = 737
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Fixedsys'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Button1: TButton
    Left = 731
    Top = 0
    Width = 90
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Delete File'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 1038
    Top = 2
    Width = 27
    Height = 23
    Anchors = [akTop, akRight]
    Caption = 'A'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 632
    Top = 0
    Width = 90
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Open File'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 552
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 584
  end
  object OpenDialog1: TOpenDialog
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 520
  end
end

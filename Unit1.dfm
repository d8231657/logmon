object Form1: TForm1
  Left = 527
  Top = 251
  Width = 870
  Height = 640
  Caption = 'Log Monitor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 489
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    OnChange = Edit1Change
  end
  object CheckBox1: TCheckBox
    Left = 648
    Top = 8
    Width = 97
    Height = 17
    Anchors = [akTop, akRight]
    Caption = '監視模式'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object Edit2: TEdit
    Left = 752
    Top = 8
    Width = 65
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 2
    Text = '500'
    OnExit = Edit2Exit
    OnKeyDown = Edit2KeyDown
  end
  object Memo1: TMemo
    Left = 8
    Top = 40
    Width = 849
    Height = 569
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = CHINESEBIG5_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Fixedsys'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Button1: TButton
    Left = 568
    Top = 8
    Width = 75
    Height = 25
    Caption = '刪除檔案'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 824
    Top = 8
    Width = 25
    Height = 25
    Caption = 'A'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 504
    Top = 8
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 536
    Top = 8
  end
end

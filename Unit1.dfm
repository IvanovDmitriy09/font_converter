object Form1: TForm1
  Left = 381
  Top = 242
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'font converter'
  ClientHeight = 296
  ClientWidth = 212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 224
    Width = 3
    Height = 13
  end
  object Button1: TButton
    Left = 8
    Top = 256
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 256
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 1
    OnClick = Button2Click
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 209
    Height = 217
    TabOrder = 2
    OnMouseWheel = ScrollBox1MouseWheel
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 105
      Height = 105
      AutoSize = True
    end
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmaps (*.bmp)|*.bmp'
    Left = 32
    Top = 136
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Top = 136
  end
  object XPManifest1: TXPManifest
    Left = 64
    Top = 136
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 694
  ClientWidth = 871
  Color = 4227327
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 280
    Top = 40
    Width = 505
    Height = 505
    Color = 33023
    ParentColor = False
  end
  object Paint: TButton
    Left = 80
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Paint'
    TabOrder = 0
    OnClick = PaintClick
  end
  object Edit1: TEdit
    Left = 34
    Top = 184
    Width = 71
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 111
    Top = 184
    Width = 71
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 34
    Top = 238
    Width = 71
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object Edit4: TEdit
    Left = 111
    Top = 238
    Width = 71
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object Edit5: TEdit
    Left = 34
    Top = 292
    Width = 71
    Height = 21
    TabOrder = 5
    Text = 'Edit2'
  end
  object Edit6: TEdit
    Left = 111
    Top = 292
    Width = 71
    Height = 21
    TabOrder = 6
    Text = 'Edit2'
  end
  object StaticText1: TStaticText
    Left = 34
    Top = 161
    Width = 42
    Height = 17
    Caption = 'Point A:'
    TabOrder = 7
  end
  object StaticText2: TStaticText
    Left = 34
    Top = 211
    Width = 41
    Height = 17
    Caption = 'Point B:'
    TabOrder = 8
  end
  object StaticText3: TStaticText
    Left = 34
    Top = 265
    Width = 42
    Height = 17
    Caption = 'Point C:'
    TabOrder = 9
  end
end

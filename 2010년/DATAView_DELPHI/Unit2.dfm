object Form2: TForm2
  Left = 224
  Top = 172
  Width = 610
  Height = 298
  Caption = '선거구별 예측'
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = '굴림체'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 16
    Top = 53
    Width = 571
    Height = 206
    DataSource = DataSource2
    ImeName = '한국어(한글)'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = HANGEUL_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = '굴림체'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 488
    Top = 19
    Width = 91
    Height = 29
    Caption = 'Close'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel2: TPanel
    Left = 16
    Top = 14
    Width = 153
    Height = 35
    Caption = '출구조사'
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = '굴림체'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Query2: TQuery
    Active = True
    DatabaseName = 'sbselect'
    SQL.Strings = (
      'SELECT SBSEXIT1.SGGCODE,SBS_SGG.SGGNAME,'
      'SBSSTATUS.SNAME,'
      'SBSEXIT1.HBNO,SBSHBJA.JDNAME,SBSHBJA.HBNAME,'
      'SBSEXIT1.OCHA,SBSEXIT1.DPYUL,SBSEXIT1.ORDERS'
      'FROM SBSEXIT1, SBSHBJA,SBS_SGG,SBSSTATUS'
      'WHERE SBSEXIT1.SGGCODE = SBSHBJA.SGGCODE'
      'AND SBSHBJA.SGGCODE = SBS_SGG.SGGCODE'
      'AND SBSEXIT1.HBNO = SBSHBJA.HBNO'
      'AND SBSEXIT1.SGGECODE = SBSEXIT1.HBECODE'
      'AND SBSEXIT1.SGGECODE = SBSSTATUS.STATUS'
      'ORDER BY SBSEXIT1.SGGCODE, SBSEXIT1.ORDERS')
    Left = 192
    Top = 8
    object Query2SGGCODE: TFloatField
      DisplayLabel = '코드'
      DisplayWidth = 9
      FieldName = 'SGGCODE'
      Origin = 'ORAELECT.SBSEXIT1.SGGCODE'
    end
    object Query2SGGNAME: TStringField
      DisplayLabel = '선거구명'
      DisplayWidth = 16
      FieldName = 'SGGNAME'
      Origin = 'ORAELECT.SBS_SGG.SGGNAME'
      Size = 30
    end
    object Query2SNAME: TStringField
      Alignment = taCenter
      DisplayLabel = '예측'
      DisplayWidth = 5
      FieldName = 'SNAME'
      Origin = 'ORAELECT.SBSSTATUS.SNAME'
    end
    object Query2HBNO: TFloatField
      DisplayLabel = '기호'
      DisplayWidth = 4
      FieldName = 'HBNO'
      Origin = 'ORAELECT.SBSEXIT1.HBNO'
    end
    object Query2JDNAME: TStringField
      DisplayLabel = '정당명'
      DisplayWidth = 10
      FieldName = 'JDNAME'
      Origin = 'ORAELECT.SBSHBJA.JDNAME'
      Size = 30
    end
    object Query2HBNAME: TStringField
      DisplayLabel = '후보자명'
      DisplayWidth = 10
      FieldName = 'HBNAME'
      Origin = 'ORAELECT.SBSHBJA.HBNAME'
      Size = 10
    end
    object Query2OCHA: TFloatField
      DisplayLabel = '오차'
      DisplayWidth = 6
      FieldName = 'OCHA'
      Origin = 'ORAELECT.SBSEXIT1.OCHA'
    end
    object Query2DPYUL: TFloatField
      DisplayLabel = '득표율'
      DisplayWidth = 6
      FieldName = 'DPYUL'
      Origin = 'ORAELECT.SBSEXIT1.DPYUL'
    end
    object Query2ORDERS: TFloatField
      DisplayLabel = '순위'
      DisplayWidth = 5
      FieldName = 'ORDERS'
      Origin = 'ORAELECT.SBSEXIT1.ORDERS'
    end
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 224
    Top = 8
  end
end

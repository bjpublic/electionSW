object Form1: TForm1
  Left = 674
  Top = 300
  Width = 818
  Height = 537
  Caption = '2010 '#51648#48169#49440#44144' SBS'#49688#49888#54869#51064#50857'  by UBC '#53440#51060#44144#54016
  Color = clBtnFace
  Font.Charset = HANGEUL_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #44404#47548#52404
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbStatus: TLabel
    Left = 8
    Top = 297
    Width = 41
    Height = 19
    Alignment = taRightJustify
    AutoSize = False
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object memoDbParam: TMemo
    Left = 216
    Top = 104
    Width = 265
    Height = 89
    ImeName = #54620#44397#50612'('#54620#44544')'
    ScrollBars = ssBoth
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 64
    Width = 489
    Height = 177
    DataSource = DataSource1
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = []
    ImeName = #54620#44397#50612'('#54620#44544')'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = HANGEUL_CHARSET
    TitleFont.Color = clTeal
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyUp = DBGrid1KeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'SGGCODE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SGGNAME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YUJASU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TJASU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TPYUL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DANGFLAG'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 16
    Width = 249
    Height = 41
    Caption = 'SBS'#49688#49888#45936#51060#53552' '#51665#44228#51312#54924
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Panel1Click
  end
  object DBGrid3: TDBGrid
    Left = 56
    Top = 280
    Width = 720
    Height = 209
    DataSource = DataSource3
    ImeName = #54620#44397#50612'('#54620#44544')'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = HANGEUL_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = #44404#47548#52404
    TitleFont.Style = []
  end
  object Panel3: TPanel
    Left = 56
    Top = 248
    Width = 249
    Height = 25
    Caption = #54980#48372#51088#48324' '#46301#54364#54788#54889
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Panel3Click
  end
  object Button1: TButton
    Left = 624
    Top = 120
    Width = 115
    Height = 33
    Caption = 'Close'
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 624
    Top = 72
    Width = 115
    Height = 33
    Caption = #52636#44396#51312#49324' '#51312#54924
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object RadioNO: TRadioButton
    Left = 360
    Top = 256
    Width = 65
    Height = 17
    Caption = #44592#54840#49692
    TabOrder = 6
    OnClick = RadioNOClick
  end
  object RadioOrder: TRadioButton
    Left = 432
    Top = 256
    Width = 65
    Height = 16
    Caption = #46301#54364#49692
    Checked = True
    TabOrder = 7
    TabStop = True
    OnClick = RadioOrderClick
  end
  object StaticText1: TStaticText
    Left = 312
    Top = 24
    Width = 267
    Height = 31
    Caption = '['#51665#44228#51312#54924']'#47484' '#53364#47533'!'
    Font.Charset = HANGEUL_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = #44404#47548#52404
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object Database1: TDatabase
    DatabaseName = 'sbselect'
    DriverName = 'ORACLE'
    LoginPrompt = False
    Params.Strings = (
      'SERVER NAME=ORAN2'
      'USER NAME=sbselect'
      'NET PROTOCOL=TNS'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'ENABLE INTEGERS=FALSE'
      'LIST SYNONYMS=NONE'
      'ROWSET SIZE=20'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'OBJECT MODE=TRUE'
      'PASSWORD=sbselect')
    SessionName = 'Default'
    Left = 8
  end
  object Query1: TQuery
    DatabaseName = 'sbselect'
    SQL.Strings = (
      'SELECT SBS_SGG.SGGCODE,SBS_SGG.SGGNAME,'
      'SBSELECT1.YUJASU,SBSELECT1.TJASU,'
      'SBSELECT1.TPYUL,SBSELECT1.DANGFLAG'
      'FROM SBS_SGG,SBSELECT1'
      'WHERE SBS_SGG.SGGCODE = SBSELECT1.SGGCODE(+)'
      'ORDER BY SBS_SGG.SGGCODE')
    Left = 48
    object Query1SGGCODE: TFloatField
      DisplayLabel = #53076#46300
      DisplayWidth = 9
      FieldName = 'SGGCODE'
    end
    object Query1SGGNAME: TStringField
      DisplayLabel = #49440#44144#44396#47749
      DisplayWidth = 16
      FieldName = 'SGGNAME'
      Size = 30
    end
    object Query1YUJASU: TFloatField
      DisplayLabel = #50976#44428#51088#49688
      DisplayWidth = 13
      FieldName = 'YUJASU'
      DisplayFormat = '###,###,###'
    end
    object Query1TJASU: TFloatField
      DisplayLabel = #53804#54364#51088#49688
      DisplayWidth = 11
      FieldName = 'TJASU'
      DisplayFormat = '###,###,###'
    end
    object Query1TPYUL: TFloatField
      DisplayLabel = #53804#54364#50984
      DisplayWidth = 6
      FieldName = 'TPYUL'
    end
    object Query1HBJASU: TFloatField
      DisplayLabel = #45817#49440
      DisplayWidth = 6
      FieldName = 'DANGFLAG'
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 80
  end
  object Query3: TQuery
    DatabaseName = 'sbselect'
    SQL.Strings = (
      'SELECT SBSELECT2.ORDERS,SBSHBJA.JDNAME,'
      'SBSELECT2.HBNO,SBSHBJA.HBNAME,'
      'SBSELECT2.DPSU,SBSELECT2.DPYUL,'
      'SBSELECT1.STIME,SBSELECT1.TPYN,SBSELECT1.TPYUL,'
      'SBSELECT1.GPYN,SBSELECT1.GPYUL,SBSSTATUS.SNAME'
      'FROM SBSELECT2,SBSHBJA,SBSELECT1,SBSSTATUS'
      'WHERE SBSELECT2.SGGCODE = SBSHBJA.SGGCODE'
      'AND SBSELECT2.SGGCODE = SBSELECT1.SGGCODE'
      'AND SBSELECT2.HBNO = SBSHBJA.HBNO'
      'AND SBSELECT1.DANGFLAG = SBSSTATUS.STATUS'
      'ORDER BY SBSELECT2.ORDERS')
    Left = 120
    object Query3ORDERS: TFloatField
      DisplayLabel = #49692#50948
      DisplayWidth = 4
      FieldName = 'ORDERS'
      Origin = 'ORAELECT.SBSELECT2.ORDERS'
    end
    object Query3JDNAME: TStringField
      DisplayLabel = #51221#45817#47749
      DisplayWidth = 12
      FieldName = 'JDNAME'
      Origin = 'ORAELECT.SBSHBJA.JDNAME'
      Size = 30
    end
    object Query3HBNO: TFloatField
      DisplayLabel = #44592#54840
      DisplayWidth = 4
      FieldName = 'HBNO'
      Origin = 'ORAELECT.SBSELECT2.HBNO'
    end
    object Query3HBNAME: TStringField
      DisplayLabel = #54980#48372#51088#47749
      DisplayWidth = 11
      FieldName = 'HBNAME'
      Origin = 'ORAELECT.SBSHBJA.HBNAME'
      Size = 10
    end
    object Query3DPSU: TFloatField
      DisplayLabel = #46301#54364#49688
      DisplayWidth = 12
      FieldName = 'DPSU'
      Origin = 'ORAELECT.SBSELECT2.DPSU'
      DisplayFormat = '###,###,###'
    end
    object Query3DPYUL: TFloatField
      DisplayLabel = #46301#54364#50984
      DisplayWidth = 7
      FieldName = 'DPYUL'
      Origin = 'ORAELECT.SBSELECT2.DPYUL'
      DisplayFormat = '##0.0'
    end
    object Query3STIME: TStringField
      Alignment = taRightJustify
      DisplayLabel = #51665#44228#49884#44036
      DisplayWidth = 19
      FieldName = 'STIME'
      Origin = 'ORAELECT.SBSELECT1.STIME'
      Size = 14
    end
    object Query3TPYN: TStringField
      DisplayLabel = #53804#54364
      DisplayWidth = 4
      FieldName = 'TPYN'
      Origin = 'ORAELECT.SBSELECT1.TPYN'
      FixedChar = True
      Size = 1
    end
    object Query3TPYUL: TFloatField
      DisplayLabel = #53804#54364#50984
      DisplayWidth = 7
      FieldName = 'TPYUL'
      Origin = 'ORAELECT.SBSELECT1.TPYUL'
    end
    object Query3GPYN: TStringField
      DisplayLabel = #44060#54364
      DisplayWidth = 4
      FieldName = 'GPYN'
      Origin = 'ORAELECT.SBSELECT1.GPYN'
      FixedChar = True
      Size = 1
    end
    object Query3GPYUL: TFloatField
      DisplayLabel = #44060#54364#50984
      DisplayWidth = 6
      FieldName = 'GPYUL'
      Origin = 'ORAELECT.SBSELECT1.GPYUL'
    end
    object Query3SNAME: TStringField
      FieldName = 'SNAME'
      Origin = 'ORAELECT.SBSSTATUS.SNAME'
      Visible = False
    end
  end
  object DataSource3: TDataSource
    DataSet = Query3
    Left = 152
  end
end

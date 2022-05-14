unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, DBTables, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Database1: TDatabase;
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Query1SGGCODE: TFloatField;
    Query1SGGNAME: TStringField;
    Query1YUJASU: TFloatField;
    Query1TJASU: TFloatField;
    Query1HBJASU: TFloatField;
    Query3: TQuery;
    DataSource3: TDataSource;
    DBGrid3: TDBGrid;
    Query3ORDERS: TFloatField;
    Query3JDNAME: TStringField;
    Query3HBNO: TFloatField;
    Query3HBNAME: TStringField;
    Query3DPSU: TFloatField;
    Query3DPYUL: TFloatField;
    Query3STIME: TStringField;
    Query3TPYN: TStringField;
    Query3TPYUL: TFloatField;
    Query3GPYN: TStringField;
    Query3GPYUL: TFloatField;
    lbStatus: TLabel;
    Panel3: TPanel;
    Query1TPYUL: TFloatField;
    Button1: TButton;
    Button2: TButton;
    RadioNO: TRadioButton;
    RadioOrder: TRadioButton;
    memoDbParam: TMemo;
    Query3SNAME: TStringField;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RadioNOClick(Sender: TObject);
    procedure RadioOrderClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
  Query1.Active := FALSE;
  Query1.Active := TRUE;
  Query1.First;
  Panel3Click(Panel3);
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
  lbStatus.Caption := '';
  Panel3.Caption:= Query1.FieldByName('SGGNAME').AsString + ' 후보자별 득표현황';
  Query3.Active := FALSE;
  Query3.SQL.Clear;
  Query3.SQL.Add('SELECT SBSELECT2.ORDERS,SBSHBJA.JDNAME,');
  Query3.SQL.Add('SBSELECT2.HBNO,SBSHBJA.HBNAME,');
  Query3.SQL.Add('SBSELECT2.DPSU,SBSELECT2.DPYUL,');
  Query3.SQL.Add('SBSELECT1.STIME,SBSELECT1.TPYN,SBSELECT1.TPYUL,');
  Query3.SQL.Add('SBSELECT1.GPYN,SBSELECT1.GPYUL,SBSSTATUS.SNAME');
  Query3.SQL.Add('FROM SBSELECT2,SBSHBJA,SBSELECT1,SBSSTATUS');
  Query3.SQL.Add('WHERE SBSELECT2.SGGCODE = SBSHBJA.SGGCODE');
  Query3.SQL.Add('AND SBSELECT2.SGGCODE = SBSELECT1.SGGCODE');
  Query3.SQL.Add('AND SBSELECT2.HBNO = SBSHBJA.HBNO');
  Query3.SQL.Add('AND SBSELECT1.DANGFLAG = SBSSTATUS.STATUS');
  Query3.SQL.Add('AND SBSELECT2.SGGCODE = ' + Query1.FieldByName('SGGCODE').AsString);

  if RadioOrder.Checked then Query3.SQL.Add('ORDER BY SBSELECT2.ORDERS')
  else Query3.SQL.Add('ORDER BY SBSELECT2.HBNO');
  Query3.Active := TRUE;
  if Query3.RecordCount > 0 then lbStatus.Caption := Query3.FieldByName('SNAME').AsString;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Panel3Click(Panel3);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form2 := TForm2.Create(Application);
  Form2.ShowModal;
  Form2.Free;
end;

procedure TForm1.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if( (Key = VK_DOWN) OR (Key = VK_UP) OR (Key = VK_RIGHT) OR
      (Key = VK_LEFT) OR (Key = VK_HOME) OR (Key = VK_END) OR
      (Key = VK_PRIOR) OR (Key = VK_NEXT)) then Panel3Click(Panel3);
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  Panel3Click(Panel3);
end;

procedure TForm1.RadioNOClick(Sender: TObject);
begin
  Panel3Click(Panel3);
end;

procedure TForm1.RadioOrderClick(Sender: TObject);
begin
  Panel3Click(Panel3);
end;

procedure TForm1.FormCreate(Sender: TObject);
  var
    pBuffer: PChar;
    iFileHandle,iFileLength: Integer;
begin
  iFileHandle := FileOpen('c:\sbselectORA29.env', fmOpenRead);
  if iFileHandle = -1 then Close;

  iFileLength := FileSeek(iFileHandle,0,2);
  pBuffer := PChar(AllocMem(iFileLength + 1));
  FileSeek(iFileHandle,0,0);
  FileRead(iFileHandle, pBuffer^, iFileLength);
  FileClose(iFileHandle);
  memoDbParam.Lines.Add(Strpas(pbuffer));
  Database1.Params := memoDbParam.Lines;
  Database1.Connected := TRUE;
  Query1.Active := TRUE;
//  Query1.First;
//  Query3.Active := TRUE;
  FreeMem(pBuffer);
end;

end.

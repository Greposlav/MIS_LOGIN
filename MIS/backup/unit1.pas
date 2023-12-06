unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3dyn, SQLite3Conn, SQLDB, DB, Forms, Controls,
  Graphics, Dialogs, DBCtrls, DBGrids, StdCtrls, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    SQLite3Connection1: TSQLite3Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
var
  user:string;
  password:string;
  password_check:string;
begin
  SQLQuery1.Close;
  user := String(Edit1.Text);
  password := String(Edit2.Text);
  SQLQuery1.SQL.Text := 'SELECT PASSWORD,LOGIN_ID FROM LOGIN WHERE LOGIN_ID ='+QuotedStr(user);
  SQLQuery1.Open;
  password_check := SQLQuery1.FieldByName('PASSWORD').AsString;
  SQLQuery1.Close;

  if password = password_check and password <>'' and user<>'' then
     begin
       Form2.Show();
       Form1.Hide;
     end
  else
  begin
    ShowMessage('Nespravne heslo nebo jmeno!');
  end;

end;

end.


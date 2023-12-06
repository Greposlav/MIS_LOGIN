unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit1;

type

  { TForm2 }

  TForm2 = class(TForm)
    Label1: TLabel;
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }
procedure Tform2.OnCreate(sender: OnCreate);
begin
  TForm1.Close;
end;

procedure TForm2.Label1Click(Sender: TObject);
begin

end;

end.


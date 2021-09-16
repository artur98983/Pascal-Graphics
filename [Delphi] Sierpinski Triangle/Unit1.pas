unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    Paint: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure PaintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  a, b, c: real;
  m,x,y,Ax,Ay,Bx,By,Cx,Cy,Son,s: real;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.PaintClick(Sender: TObject);
begin
with PaintBox1, canvas do
begin
a:=strtofloat(Edit1.text);
b:=strtofloat(Edit2.text);
c:=strtofloat(Edit3.text);
end;

end;
end.

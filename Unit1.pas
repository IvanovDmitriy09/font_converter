unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, ExtCtrls, StdCtrls, Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    XPManifest1: TXPManifest;
    procedure Button1Click(Sender: TObject);
    procedure ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var i, w: integer;
begin
if fontdialog1.Execute then
begin
image1.Picture.Bitmap.PixelFormat:= pf1bit;
image1.Picture.Bitmap.Canvas.fillrect(image1.Picture.Bitmap.canvas.cliprect);
image1.Picture.Bitmap.Canvas.Font:=fontdialog1.Font;
image1.Height:=-fontdialog1.Font.Height*(64);
image1.Picture.Bitmap.Height:=-fontdialog1.Font.Height*(64);
w:=0;
for i:=0 to 63 do
begin
w:=max(w, image1.Canvas.TextWidth(char(192+i)));
end;
image1.Picture.Bitmap.Width:=w;

label1.Caption:='Ширина: '+inttostr(w)+' пикс.'+char(13)+'Высота: '+inttostr(-fontdialog1.Font.Height)+' пикс.';

for i:=0 to 63 do
begin
image1.Picture.Bitmap.Canvas.TextOut(0, -(fontdialog1.Font.Height*i), char(192+i));
end;

end;
scrollbox1.SetFocus;
end;

procedure TForm1.ScrollBox1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position-WheelDelta div 4;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if savedialog1.Execute then
image1.Picture.SaveToFile(savedialog1.FileName+'_.bmp');
scrollbox1.SetFocus;
end;

end.

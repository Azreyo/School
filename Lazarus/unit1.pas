unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.FillRect(Image1.ClientRect);
end;

procedure TForm1.Button1Click(Sender: TObject);
procedure snehuliak(x,y,r:Integer);
var
  EcXa,EcYa,EcXb,EcYb:Integer;
  a,i,j:Integer;

begin
   a:= r div 5;
   EcXa:=x + a;
   EcYa:=y + a;
   EcXb:=x - a;
   EcYb:=y - a;
 //  Image1.Canvas.Rectangle(400,400,300,300);
 //  Image1.Canvas.Rectangle(400, 300, 300, 200);
 //  Image1.Canvas.Rectangle(340, 240, 360, 260);

          for i:=1 to 3 do    //Stavba Tela
            begin
             Image1.Canvas.Ellipse(x+r,y+r,x-r,y-r);
             y:= y - r;
             Image1.Canvas.TextOut(50, 120, IntToStr(r));
             Image1.Canvas.TextOut(10, 120, IntToStr(x + r));
             Image1.Canvas.TextOut(10, 140, IntToStr(y + r));
             Image1.Canvas.TextOut(10, 160, IntToStr(x - r));
             Image1.Canvas.TextOut(10, 180, IntToStr(y - r));
            end;
          for j:= 2 downto 1 do  //Gombiky
              begin
               Image1.Canvas.Rectangle(EcXa,EcYa ,EcXb,EcYb);
          //     Image1.Canvas.Rectangle(360,310,340,290);

               EcYa:= EcYa - r;
               EcYb:= EcYb - r;
               Image1.Canvas.TextOut(50,20,IntToStr(a));
               Image1.Canvas.TextOut(10,20,IntToStr(EcXa));
               Image1.Canvas.TextOut(10,40,IntToStr(EcYa));
               Image1.Canvas.TextOut(10,60,IntToStr(EcXb));
               Image1.Canvas.TextOut(10,80,IntToStr(EcYb));
              end;
          //klobuk
          Image1.Canvas.Rectangle(EcXa - r *2,EcYa -r ,EcXb+ r *2, EcYb -r);
          Image1.Canvas.Rectangle(EcXa - r ,EcYa -r ,EcXb+ r *2, EcYb -a);

end;

begin
   snehuliak(350,350,50);
end;

end.


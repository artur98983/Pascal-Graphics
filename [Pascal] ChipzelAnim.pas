uses graphabc,pointrect;     //PASCAL ABC code.
const XC=320;                //vozmozhno, v drugih paskalyah pidornet kodirovky, no ya ne uveren
      YC=240;
var j,sg:byte;               //Короче, модуль Graph ABC - эта такая штука, которая идет на замену graph из классического паскаля
    grad,subgrad:real;       //насколько они совместимы сами по себе - я без понятия (скорее всего, вообще никак)
    i,r,num:integer;         //поэтому другими паскалями открывать ваще не вариант
    rect:Rect;
Function EQ(var steper:integer; freq:byte):byte;        //Вот эта вот функция упрощается до пары If'ов
  var step:integer;                                     //и одной общей формулы. Но моей задачей было сделать не
  begin                                                 //годную программу, а годную гифку
  step:=steper;                                         //поэтому я вручную подбивал интервалы под анимацию
  if step>=157 then step:=step mod 157;
  if (freq=0) or (freq=35) then EQ:=0
  else
    begin
    if freq<16 then
      case step of
      0..18:
        if freq<8 then EQ:=(freq*20-step)
        else eq:=(24-freq)*12-(step)*3;
      19..38:
        if freq<8 then EQ:=(freq*20-(step-19))
        else eq:=(24-freq)*12-((step-19))*3;
      39..57:
        if freq<8 then EQ:=(freq*20-(step-39))
        else eq:=(24-freq)*12-(step-39)*3;
      58..77:
        if freq<8 then EQ:=(freq*20-(step-58))
        else eq:=(24-freq)*12-((step-58))*3;
      78..96:
        if freq<8 then EQ:=(freq*20-(step-78))
        else eq:=(24-freq)*12-((step-78))*3;
      97..116:
        if freq<8 then EQ:=(freq*20-(step-97))
        else eq:=(24-freq)*12-((step-97))*3;
      117..135:
        if freq<8 then EQ:=(freq*20-(step-117))
        else eq:=(24-freq)*12-((step-117))*3;
      136..157:
        if freq<8 then EQ:=(freq*20-(step-136))
        else eq:=(24-freq)*12-((step-136))*3;
      end
    else
      case step of
      0..38:
        if freq<29 then EQ:=freq*5-step*2
        else EQ:=(54-freq)*4-step*2;
      39..77:
        if freq<29 then EQ:=freq*5-(step-39)*2
        else EQ:=(54-freq)*4-(step-39)*2;
      78..116:
        if freq<29 then EQ:=freq*5-(step-78)*2
        else EQ:=(54-freq)*4-(step-78)*2;
      117..157:
        if freq<29 then EQ:=freq*5-(step-117)*2
        else EQ:=(54-freq)*4-(step-117)*2;
      end;
    end;
  end;
begin
setwindowsize(640,480);
grad:=0;
num:=0;
rect:=rectf(0,0,639,479);
//lockdrawing;                          //тут баги кокиета
repeat                                  //по какой-то непонятной причине с залоченным выводом весь экран сетается одним цветом
  grad:=grad+0.02;                      //что перечеркивало всю идею с шестиугольниками
  if grad>=6.28 then grad:=0;
  clearwindow;
  setpixel(XC,YC,clBlack);
  i:=63;
  for j:=0 to 5 do                      //отрисовка шестиугольника
    begin
    subgrad:=j*pi/3+grad;
    setpencolor(rgb(i,i,i));
    line(round(32*cos(subgrad))+XC, round(32*sin(subgrad))+YC, round(32*cos(subgrad+pi/3))+XC, round(32*sin(subgrad+pi/3))+YC);
    line(round(32*cos(subgrad))+XC, round(32*sin(subgrad))+YC, round(400*cos(subgrad))+XC, round(400*sin(subgrad))+YC);
    i:=i+128;
    end;
  i:=63;
  for j:=0 to 5 do                      //раскраска шестиугольника
    begin
    subgrad:=j*pi/3+grad+0.1;
    floodfill(round(64*cos(subgrad))+XC, round(64*sin(subgrad))+YC,rgb(i,i,i));
    i:=i+128;
    end;
  setpencolor(clblack);
  for j:=0 to 35 do
    begin
    sg:=EQ(num,j);                      //EQ возвращает значение, которое используется как высота столбика "эквалайзера"
    for i:=40 to sg+39 do               //тут еще ващно заметить, что grad - радианы, в то время, как arc требует значения в градусах
      begin                             //оттуда коэффициент "1.75".
      setpencolor(rgb(i div 2,64-i div 4,0));
      arc(320,240,i,-round(100*grad/1.75)+10*j,-round(100*grad/1.75)+10*j+8)
      end;
    end;
  //TextOut(8,8,'NUM='+inttostr(num));            //отладочное
  //redraw;                                       //см. про lockdrawing
  //r:=createpicturefromrect(rect);               //вот ета шняга делает картинку
  //savepicture(r,'ZAnim'+inttostr(num)+'.png');  //и генерирует жипегу
  //sleep(10);                                    //В идеале, 50 fps должно было поддерживаться в самой программе. Но тут все очень плохо
  inc(num);
until num=314;                                    //Счетчик нужен, чтобы останавливать рендеринг файлов.
end.                                              //Впротивном случае,если все же прога будет работать в этих 50 FPS и без багов с заливкой, то можно и зациклить. While 1 do!
uses graphABC;
  var m,x,y,Ax,Ay,Bx,By,Cx,Cy,Son: integer;
  var s: integer;
begin
Son:=1; //поставь 0, если надоест ждать результата
//Координаты вершин, меняйте в разумных пределах
  Ax:=500;
  Ay:=200;
  Bx:=760;
  By:=600;
  Cx:=240;
  Cy:=600;
//Координаты начальной точки
  x:=500;
  y:=450;
for i: integer :=1 to 5 do begin
circle(Ax,Ay,11-i); 
circle(Bx,By,11-i); 
circle(Cx,Cy,11-i); 
circle(x,y,11-i); 
end;
while S<>5000 do begin 
Setpixel(x,y,RGB(x,y,x+y){для красивой раскраски}); 
m:=random(3);
Sleep(Son);
  if m=0 then begin x:=(x+Ax) div 2; y:=(y+Ay) div 2; end;
  if m=1 then begin x:=(x+Bx) div 2; y:=(y+By) div 2; end; 
  if m=2 then begin x:=(x+Cx) div 2; y:=(y+Cy) div 2; end;
end;
end.
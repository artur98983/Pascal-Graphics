uses graphabc;
const a:array[1..12] of integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 
var
  mes, i, dn, x, m: integer;
  x1, y1, x2, y2: integer;
  x11, y11, x22, y22: integer;

begin

  x1:=1;
  y1:=1;
  x2:=25;
  y2:=1;
  dn:=1;
  i:=1;
  
  Line(1, 1, 300, 1); //Верх
  Line(1, 217, 300, 217); //Низ
  Line(1, 1, 1, 217); //Лево
  Line(300, 1, 300, 217); //Право
  
  for mes:=1 to 12 do begin
    line(x111, y1, x222, y2);
    x:=a[mes];
      while dn<= x do begin
        y11:=1+(7*dn);
        y22:=1+(7*dn);
        Line(x11, y11, x22, y22);
        dn:=dn+1;
      End;
  End;
end.

uses graphabc;
//Размер листа А4 - 210x297мм
//297/12=24,75
//210/31=6,77

const a:array[1..12] of integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 

Var 
  c, b: integer; //делители клеток Д и М
  x12, x22, y12, y22: integer; //рисовка столбцов
  Xm, Ym: integer;
  
begin
c:=25;
b:=7;
 setPenWidth(1);
 Line(1, 1, 300, 1);
 Line(1, 1, 1, 217);
 Line(1, 217, 300, 217);
 Line(300, 1, 300, 217); //^ границы
  for m: integer :=1 to 12 do begin //Разделитель месяцев
    x12:=c*m;
    x22:=c*m;
    y12:=1;
    y22:=a[m]*7;
    Line(x12, y12, x22, y22);
//      for d: integer :=1 to a[] do begin //строки месяцев
//      Line();
//      end;
  end;
 // for d: integer :=1 to 12 do begin
    
 // end;
  
  
    
    
End.
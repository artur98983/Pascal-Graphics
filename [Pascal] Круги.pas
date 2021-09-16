uses GraphABC;
  var Ax, Ay, Son: integer;
Begin
Son:=1;
Ax:=10;
Ay:=10;

for d: integer :=1 to 30 do begin
      for b: integer :=1 to 30 do begin
          SetPenWidth(5);
          circle(Ax,Ay,9);
          Ax:=Ax+20;
      end;
  Ax:=10;
  Ay:=Ay+20;
end;  
end.

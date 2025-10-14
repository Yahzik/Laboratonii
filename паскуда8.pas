program Jz;
var x1,x2,y1,y2,x,y:real;
begin
  writeln('введите х1');
  readln(x1);
  Writeln('введите y1');
  readln(y1);
  writeln('введите х2');
  readln(x2);
  writeln('введите y2');
  readln(y2);
  x:=(x1+x2)/2;
  y:=(y1+y2)/2;
  writeln(x:0:2, y:0:2);
  readln;
end.
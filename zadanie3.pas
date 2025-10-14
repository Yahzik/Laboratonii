program yjas;
var x,y: real;
begin 
  writeln('введите 2 числа');
  readln(x,y);
  if x<=y then x:= 0;
  writeln(x);
end.
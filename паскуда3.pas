program sym;
var a,b,c,d,e: integer;
begin
  writeln('введиче число');
  readln(a);
  b:= a mod 10;
  c:= (a div 10) mod 10;
  d:= a div 100;
  e:= b + c + d;
  writeln(e);
end.
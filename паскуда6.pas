program shar;
var a,b,c: integer; p,S: real;
begin
  writeln('введите 3 числа');
  readln(a,b,c);
  p:=(a+b+c)/2;
  S:= Sqrt(p*(p-a)*(p-b)*(p-c));
  write(S:0:2);
end.
1. 
Var i:integer;
    s:string;
Begin
  read(s);
  i:=pos('Nikolay',s);
  delete(s,i,length(s));
  insert('Oleg',s,i);
  writeln(s);
end.
2.
var s:string;
Begin
  read(s);
  write(s,', ',s,', ',s);
  writeln(length(s));
end.

3.
var n,k,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  if n  mod 2=0 then
    writeln(s[1],' ',s[length(s)])
  else
    writeln(s[1],' ',s[length(s) div 2+1],' ',s[length(s)]);
end.
4.
var n,k,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  if n >= 6 then
    writeln(s[1],' ',s[2],' ',s[3],' ',s[n-2],' ',s[n-1],' ',s[n])
  else
    for i:=1 to length(s) do
      write(s[1]:2);
end.

5.
var n,k,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  for i:=1 to n-1 do
    if s[i] = s[n] then
      write(i:2);
end.
6.
var n,k,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  i:=3;
  while i<=n do begin
      write(s[i]:2);
      i+=3;
  end;
end.
7.
var n,k,j,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  for i:=1 to n do 
    if (s[i] = '+') or (s[i] = '-') then
      k+=1;
    for i:=1 to n-1 do 
    if ((s[i] = '+') or (s[i] = '-')) and (s[i+1] = '0') then
      j+=1;
  writeln('Количество плюсов и минусов в строке - ', k);
  writeln('Количество плюсов и минусов в строке, после которых следует 0 - ', j);
end.
8.
var n,k,j,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  for i:=1 to n do begin
    if s[i] = 'w' then begin
      writeln('Раньше встречается w');
      break;
      end;
    if s[i] = 'x' then begin
      writeln('Раньше встречается x');
      break;
    end;
    end;
  if pos('x',s,1) = 0 then
    writeln('Символов x нет');
  if pos('w',s,1) = 0 then
    writeln('Символов w нет');
end.
9.

var n,k,j,i:integer;
    s,b:string;
Begin
  readln(s);
  read(b);
  n:= length(s);
  k:=length(b);
  if n > k then
    for i:=1 to n-k do
      write(s);
  if k>n then
    for i:=1 to k-n do 
      write(b);
  if k = n then
    writeln('Строчки равны');
end.

10.
var n,k,j,i:integer;
    s,b:string;
Begin
  readln(s);
  if (s[1] = 'a') and (s[2] = 'b') and (s[3] = 'c') then begin
    s[1]:='w';
    s[2]:='w';
    s[3]:='w';
    write(s);
  end
  else
    write(s,'zzz');
end.

11.
var n,k,j,i:integer;
    s,b:string;
Begin
  readln(s);
  n:=length(s);
  if n>10 then
    write(s[1:7])
  else begin
    write(s);
    for i:=1 to 12-n do
      write('o');
    end;
end.
12.
var n,k,j,r,i:integer;
    s,b:string;
Begin
  readln(s);
  n:=length(s);
  for i:=1 to length(s) do begin
    val(s[i],j,r);
    if r = 0 then
      k+=1;
    end;
   writeln('Количество цифр - ',k);
  end.
13.
var n,k,j,r,i:integer;
    s,b:string;
Begin
  readln(s);
  n:=length(s);
  if (pos('a',s) = 0) and (pos('b',s) = 0) and (pos('c',s) = 0) then
    writeln('Таких символов нет')
  else
    writeln('Такие символы есть');
end.

14.
var n,k,i:integer;
    s:string;
Begin
  read(s);
  while pos('word',s) > 0 do begin
  i:=pos('word',s);
  delete(s,i,4);
  insert('letter',s,i);
  end;
  writeln(s);
end.

15.
var n,k,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  for i:=1 to n-3 do 
    if (s[i] = 'x') and (s[i+1] = 'a') and (s[i+2] = 'b') and (s[i+3] = 'c') then
      delete(s,i,1);
  writeln(s);
  end.

16.
var n,k,i:integer;
    s:string;
Begin
  s:= 'Сегодня мы с вами рассмотрели, как работать со строками. Были описаны основные операторы и методы, которые используются для работы со строками';
  delete(s,1,57);
  writeln(s);
  end.
17.
var n,k,b,i:integer;
s:string;
Begin
read(s);
n:=length(s);
i:=1;
while i<=length(s) - 3 do begin
val(s[i+3],k,b);
if (b <> -1) and (s[i] = 'a') and (s[i+1] = 'b') and (s[i+2] = 'c') then
delete(s,i,3);
i+=1;
end;
writeln(s);
end.
18.
var n,k,b,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  i:=1;
  while i<=n-2 do begin
     if (s[i] = 'a') and (s[i+1] = 'b') and (s[i+2] = 'a') then begin
      k+=1;
      i+=3;
      end
      else
        i+=1;
    end;
  writeln('Количество aba - ',k);
  end.


19.
var n,k,b,j,v,z,i:integer;
    x:array[1..4] of string;
    s:string;
Begin
  s:= 'Login1,LOgin2,login3,loGin4';
  n:=length(s);
  z:=1;
  for i:=1 to 4 do begin
    x[i]:=copy(s,z,6);
    z+=7;
    end;
   for i:=1 to 4 do 
    for j:=1 to 5 do 
      if (ord(x[i][j])<97) then
        x[i][j]:=chr(ord(x[i][j])+32);
    for i:=1 to 4 do 
      write(x[i],', ');
  end.

20.
var n,k,b,z,i:integer;
    s:string;
Begin
  read(s);
  n:=length(s);
  i:=1;
  while i<length(s) do begin
    z:=i;
    k:=-1;
    if (s[i]= ' ') and (s[i+1] = ' ')  then
      while pos(' ',s,z) >0 do begin
        k+=1;
        z+=1;
      end;
      delete(s,i,k);
      i+=1;
    end;
    if s[length(s)]= ' ' then
      delete(s,length(s),1);
    if s[1]= ' ' then
      delete(s,1,1);
  write(s);
  end.



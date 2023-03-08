program max_num;
uses crt;
type arr = array[1..101] of integer;
var n: integer;
a: arr;

procedure Input(var n: integer; var a: arr);
var i: integer;
begin
    readln(n);
    for i:=1 to n do
    read(a[i]);
end;

procedure Output(var n: integer; var a: arr);
var i: integer;
begin
    for i:=1 to n do write(a[i]:2);
end;

function MAXN(var n: integer; var a:arr): integer; {Hàm này dùng để tìm số lớn nhất trong mảng}
                                                    {Bằng cách tạo một biển temperary(tạm thời)}
                                                    {để lưu giá trị lớn nhất (ở đây là biến tmp) sau}
                                                    {đó duyệt qua hết các phần tử trong mảng}
                                                    {nếu a[i] nhỏ hơn a[i+1] thì gán a[i+1] cho tmp}
var i, tmp: integer;
begin
    tmp:=0;
    for i:=1 to n do
        if(a[i] < a[i+1]) then
            tmp:=a[i+1];
    
    MAXN:=tmp;
end;

begin
    Input(n, a);
    Output(n, a);
    writeln;
    write(MAXN(n, a));
end.
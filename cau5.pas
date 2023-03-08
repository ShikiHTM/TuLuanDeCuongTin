program reverseString;
uses crt;
var s: string;

procedure reverse(var s:string);
var i: integer;
begin
    for i:=length(s) downto 1 do
        write(s[i]);
end;

begin
    readln(s);
    reverse(s);
end.
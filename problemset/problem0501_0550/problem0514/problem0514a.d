import std;

void main() {
    string x;
    readf("%s\n", x);

    auto y = x.map!(a => to!dchar(min(a-'0', '9'-a)+'0')).array;
    if (y.front == '0') y.front = '9';

    auto res = y.to!string.to!long;
    res.writeln;
}
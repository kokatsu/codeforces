import std;

void main() {
    int x;
    readf("%d\n", x);

    auto b = x.to!string(2);

    auto res = b.count('1');
    res.writeln;
}
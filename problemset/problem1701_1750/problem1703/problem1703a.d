import std;

enum string Y = "YES", N = "NO";

void main() {
    int t;
    readf("%d\n", t);

    foreach (_; 0 .. t) {
        string s;
        readf("%s\n", s);

        writeln(s.map!(x => std.uni.toUpper(x)).to!string == Y ? Y : N);
    }
}
import std;

void main() {
    int n;
    string s;
    readf("%d\n%s\n", n, s);

    auto t = s.to!(dchar[]).slide(2).map!(x => x.to!string).array;
    t.sort;

    auto g = t.group.array;
    g.sort!((a, b) => a[1] > b[1]);

    string res = g[0][0];
    res.writeln;
}
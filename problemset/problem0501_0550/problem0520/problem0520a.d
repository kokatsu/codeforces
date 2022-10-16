import std;

void main() {
    int n;
    string s;
    readf("%d\n%s\n", n, s);

    auto t = std.uni.toLower(s).to!(dchar[]);

    t.sort;

    auto g = t.group.array;

    writeln(g.length == 26 ? "YES" : "NO");
}
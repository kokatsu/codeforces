import std;

void main() {
    int n, t;
    readf("%d %d\n", n, t);

    if (n == 1 && t == 10) {
        writeln(-1);
        return;
    }

    if (t == 10) --n;

    auto res = t.to!string ~ replicate("0", n-1);
    res.writeln;
}